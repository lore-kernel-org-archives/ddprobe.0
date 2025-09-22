Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F5249E5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758514194; cv=none; b=cU4zvDQTIkkf1A9fiIBAe6KVN8218OAEUtS9XmlPQDkRR+YxxRQpT0+g15m/cgLB9D+kG1/5iVfBlU05aovotrvjHtn8AL6sEFVBqAAQVLgtHhQ+OSFshXHtZiSndbTLOeR0cyJR5230vJNHN0gWD9l1TvBzSi5DNITfxoFQXC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758514194; c=relaxed/simple;
	bh=zWaNLIqdUZ1A4+dh6NlOptc0sD/UZ86kdoPvbyNphXY=;
	h=To:Subject:From:Message-Id:Date; b=o3Wp4qdVp+tF+uEjPUGS3YVrcfoCRCNlJ1WeAfMoF9bGjjz7kIjDgsqbAuT1SkHOICxI0o5gyXDP+BzjgL/RB34JJ6ln/sShmlXCK2Bk0SwaM5FfpCyybr5jciOA7Eqerl1Rg3wkRRDFC4Y25ULU4OA/wYFBVygiOPxqinnQtII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIDOEVMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIDOEVMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758514193;
	bh=zWaNLIqdUZ1A4+dh6NlOptc0sD/UZ86kdoPvbyNphXY=;
	h=To:Subject:From:Date:From;
	b=IIDOEVMjUBuPNI1dTBfsOAIoPmW/RhMBEdkGFOQFlQ2SJBpZ5ymxjFYTkMb+npIPd
	 yUv1jsnyYBGG3EQXj1zbW/ni6Bu5RoVPsWd3cVoLD6c3/DeoANm6XmFhnEfxeVYwR/
	 WjeON7k50nEpB+utoy9nzeqsY0RTBbi13iUbnaLqJW1sz/f5hKB9CPmzU2/MdFNXNu
	 7I+4LwaXDhev4xjEq9QTjC++rah5IZ9BEWSr8YjfnK2Vb8KOc2d1lKYh30+JNrvoMy
	 aF5TUZ7vlfGFrHRFi6Slp1UHvXUNVQ3sEkDHcvruXZRBp+a3SvMT+ylJvQbihY0tOh
	 VD02YAnyuIA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93743CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851419358.3773.13931483815643009814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbd0bc13d041378878d58f066e356f2e0c5c1b9bd25de015fd1353579fbdeec
Date: Mon, 22 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758514193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627983876BD
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785165034; cv=none; b=UiUVNeLdOSB8CudrupAj5BP3HAKYSJI8Ft1oYn/vY1MAjcSrlBXEeN6vCDGtY0Y8yOG8GxkXH8n8mW9VW34HfZJyrPOqztneAJBHqpwUoGJctSq35mjU7ACHe/VeV881fVLqol4gy9iOSCjh5JGT4N87L8vR91ZvdwjLba390nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785165034; c=relaxed/simple;
	bh=clpHwILqxo0zogFRGUwoeACM3NbfI96Smq0jbaCJhik=;
	h=To:Subject:From:Message-Id:Date; b=OMrnRGtGweUgpezrCX1FIWZCIo7KgAPxWr+OWoGSGTT6y5UcFJqK6wIv4Wi/+0galMZz8f7uJyDMYw9N4buCLv15HXxhy0t1i+qvbgUQunXGK6yX+raHWkLdabNUVcq/FzzA2NWnQjw6srcl4CYnnc5LCaQIpkvk0yC9Aw0nkcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPKCLXz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPKCLXz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785165033;
	bh=clpHwILqxo0zogFRGUwoeACM3NbfI96Smq0jbaCJhik=;
	h=To:Subject:From:Date:From;
	b=QPKCLXz6Xcwuoew5meFjwu45bFOw4VOoPDp1tawyMqxVQCcfzTEMIC3Rn4GOLv4sy
	 3KxQpwFPsqCZm1STSRg+0tN3VI+4MR9tXgtX6bvjLqGHcP1FS6aWMpThOEA/MOGFnt
	 b2g1ZHBovRKTWutEx0DBdexgBdMZfEoOFtwTPh3Rfl+BWcPf6YQDjhcEb5e4f5hyD2
	 mPjsNxtFff5xj6Sk3WOnOKC5gGY9PXJtpbAk5epntmPD5nhMZ5BaaLLO1pcq8moqHa
	 prmj6TEP2UC5/W4NDCM9uEWLBSx4fr+dEpyNoeBO351mMsS4Z4iXjx/LrTnIGrD+jf
	 eAZUvAqWcbAWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1DBC531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516503368.28466.16527929944454890324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7be17f6b89afc00ccbb65f06c4f475a8b4a92989eb65e1a40a95fa44d2ad12
Date: Mon, 27 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785165033

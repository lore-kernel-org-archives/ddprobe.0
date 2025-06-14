Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FDC1A08BC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749919194; cv=none; b=AcS/islZeMPMnr6JkhHrPGF2khQjN3s2NMqmVf8zP5XsAF9XH+ozU+eyz7qCB7bik4QUi1MpZ5VAw+zXRrIhMvGQpL8pIyZM1SUrFd5CwjgHxVKt2lJ8upc0mtaTYf6Lu+CQ55VDMDU1gIFZOVNMAoikbAiMsf6uMvNHWG3JUZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749919194; c=relaxed/simple;
	bh=cJmbrdwG2d02VoPEf+etZ0zyJEwanbAd4WlPD5vARSQ=;
	h=To:Subject:From:Message-Id:Date; b=fV0phY9WK2zb7lc6HBGHhR71GSM+6NPIMEQDa6ZonELYY8uItSehLElw8JaczJXlpM1S/RD/YBQ3tyRuyqrWcrWiOEdrw3QhGKULnNzwycJvrUfDNlNwV488tYnc/2w9IK54HPbxws/L4pLVVSaWHnVXgNmuY4xWcd9if+GQVFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPIwuQHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPIwuQHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB000C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749919193;
	bh=cJmbrdwG2d02VoPEf+etZ0zyJEwanbAd4WlPD5vARSQ=;
	h=To:Subject:From:Date:From;
	b=FPIwuQHn1YbO/TSGxUWxqQu6qY+XOCybvPQQCBPLaBugTKXfk7xEPRnEl0pfQ2+3Y
	 qUBiB0/Ic16Q8hxtOuQ9Ya8PDO0n7eD27VPXSqrE1kOcnEt4HbGYu+lqhSF4K6H6T4
	 U+JtVf7tN8QX7kCmflJcvxyaQZkz+x6uchwjpbCYzPpTydu0wZ+xs7/wtLPYTvUQRl
	 YlyTHhO21Q/YIStV5oF/cj4oyQ9Laa7xgjZRCczeYfpqfbNtaogPuWbhVcmhAVgIQP
	 BgfPePGeuJczbnIrZZFw2fUcnCPAPFWrDEpHDRPCStBPodE2W76WiUDupukt2WQoBD
	 Be+s3otqRCraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A017FC71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991919362.7147.18287127863854905308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae2046bb07e546085a93b3cc8bc6bb1f4723d29af7ecc0f1d928c36c3874849
Date: Sat, 14 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749919193

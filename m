Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1EB6FD5
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717510583; cv=none; b=h/VTHLSzkX7E9D31OoscWuVOT0TbThebccKEzygK7Y3o+g7M2ajYj6uRgPosNO6orjy9ETnahCrwNBdhf73mRbYZ2fSSyYpahnZrLIN/L51OtJy844xd/iTmeoCfYW3NXb7yqqTAqQLm2MdbACigdJJWOmw8OxzR2bBeH1t91hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717510583; c=relaxed/simple;
	bh=0l8GSxpqngcaBdErn+NmR/8DuO5dImfhjo9y+PUvs6k=;
	h=To:Subject:From:Message-Id:Date; b=F6MR7N9b1mT+923AIFaSK5iIXELXhdFSyDVe1YXcQyUqYc1Fvco658eq7DR2pSpPAif3jCj3VTqPre1gFUPy4SkHIoPt62mrTlofWTHzbmmUAZunqyyDLqBwzgoP+m71eQhi+uMwC4AUWtMCoU8gyF4+q64x5zPkC6i+4EO1u18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1cJLPu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1cJLPu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB5EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717510583;
	bh=0l8GSxpqngcaBdErn+NmR/8DuO5dImfhjo9y+PUvs6k=;
	h=To:Subject:From:Date:From;
	b=K1cJLPu6j2EcyLTTMwtuwQcSIEMWuB/yaFMhYWvRDUWGyKnrqs1UE8i4zUUYfsUS1
	 3Bd8lGgNU7D20UP4iNT5IWAcDlVdORWE8r++Kc/nniZc7UaJiP7MkFZYN/4jttqI+5
	 1eDN3aMAjCEoLmeHlupkRcRisTXKiU8F5GQrOw2QMXFqubOYpvIOSQs/o6nCISQ0o+
	 vabs+fD3OpijUMgm0CkTbOvoJqj8TEeUMpAE7SUwz/Lu3dJSkmbL0TV4pcVdHDJPMa
	 q4T028zAGacK00xBjLNAevow0HnGJ15HOxW7x7B45ubo/NLpN+8NtFgpwpWloKQ2zl
	 R5fwE135J2XgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D242BC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751058285.10726.2058897265087807943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a257d14d0909ecc5913a95227d73d3a4a0cc265ae8b2d36fccc9e14a697e92
Date: Tue, 04 Jun 2024 14:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717510582

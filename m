Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C3431717D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792292434; cv=none; b=Jfro630SOWYJr/hC9ipyznUNAo8hXU/kbH1Aj1fIrvo1hvTSRI+/kdFfVvgj1gydirjm3D0xHl97lQrdU081f9rKT7nJkFq2MXPa2GtYZTZuwCWbLa9jKepFQW95pIcYuJtCehlQkU8OsAdVWm5AmAOS+fM1WKZgoOk5VuJlwQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792292434; c=relaxed/simple;
	bh=pGr/TybRmAfgqvfhMjWjW5b5dJjmqfZoWjBx2zUA+H8=;
	h=To:Subject:From:Message-Id:Date; b=O8uugrF9f0c48b2JuW2yDQXaxPS8C+Jt2/KvXU2QKn/iDnQmJ0l3mCjZF21iPX4SzCPJabsJHFzokL3Bmk0bdAWQ//3y2ldvBYwJqlVFgb+Jrm/n54Fk53qORhkR09XTpKGBZywStT76YGiTIAefU5L/ai/HgoMkqJzqm422nn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alSEdPd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alSEdPd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBFEC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792292433;
	bh=pGr/TybRmAfgqvfhMjWjW5b5dJjmqfZoWjBx2zUA+H8=;
	h=To:Subject:From:Date:From;
	b=alSEdPd3j//kSv0q4cTIkeu+wdRN2Rt5USP4lRq8NKoyllYdZUAG6U06/IshVZufj
	 fMc/timmiNkeiH9Zx4tvuL3sMQn/NsnWE1ypO55vjx0ZK/Y/nxLDrX+SmXtbfneR6o
	 HJMbIRNzGqxsqjdTzy6D1hc8GZXKEoZ8c1r5an+Rx60iQktF67HWGzFdYI+cUMLK90
	 JoLS92/xUSqrCyPKMOB4qKhpJs2xuQiVYPPbIQvNXy5+uv40ggI08Mlh4qmiW064FM
	 0R9+pxg54b218iu86J/wzblO50enELa81C436qrR7Y5LaPvSqDD92fqjTpwtMMUgbB
	 1Uki/HpRStmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C9CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229243369.16647.9728904797539130573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735c06f72f37e1524fc6c51447b494d1baaf0eb33fead274de65da23f173db90
Date: Sun, 18 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792292433

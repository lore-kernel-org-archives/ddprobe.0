Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3E01EA7C9
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757760594; cv=none; b=jDTElUYQRNL0OeXWoR7zZSpL6kF5gkh21Vdk3AB4d6kib/cOawSXWqdpEZSp2cFEm6AY65T2OoYWNv9UfZ1r+RqlACX8A+L5XkI2XgTlR2QjaYvWKorJYiAy8d8ba0bzgoOzNdWPC6ZT9dojaOWvEqsG1awgkSUfjEa8uXDMXM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757760594; c=relaxed/simple;
	bh=geUQw1jq6sgHwElvafteoIISPwZtAN7CyUgD2I+XmeA=;
	h=To:Subject:From:Message-Id:Date; b=IN2O4evNKKrIuytXhCCvYQSFJHQEDRrukcvHf8FPvGe7m7u6WZn7VPxo3BmyH+bZnIZFspug+WQEwqLu1mXI4505XC2vn9NDLmiPmzaLm84aziYxUeOIn7Ws22CdT39b29laNggVbu4qcNd6T4xItYC9gcs3aPpP9WXs0OAU1F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjef6SIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjef6SIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1152C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757760593;
	bh=geUQw1jq6sgHwElvafteoIISPwZtAN7CyUgD2I+XmeA=;
	h=To:Subject:From:Date:From;
	b=Jjef6SIe1G5B1GP/KZjM1pqaeryfAkiATLVmhOlduAZjLg+yeK04B3KbwnTUz3gjf
	 kPN1ueQ7DrJJnrq9HyPl3WqPqWH3dTSUa6Jna3bFpKrViPs0AeEIutmr3Dm0FltNJj
	 ux7SdI+Koa5jOUAdXLUL0ZjqSZDg63uhGmNmEq2ebWBazXI83etutge+cf2JjhIQ39
	 s1fgKMnEam19Og1W8rPOaqT9gNxgY+XehopHrAqfiHT4H3Oyi4RVUSX6y1FwsHbvcL
	 I0F9GnlDqo47qic806DBDlNygCAbMZJeO/l8J/HBolbGEFL1xUoDCTEOvLBk1uRG/s
	 BMOHuFwNNrK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FDCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776059357.28966.5848319328841375525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6da9e49c28f3197a9e8f7a1c8ec9dc2292d4842094774b6e37a73d611a7353e
Date: Sat, 13 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757760593

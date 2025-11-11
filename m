Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEF7192B75
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762838394; cv=none; b=Xx7Rw73d6NsMEEd6cEQS2gk3vyhQWeJwdfjJWCX+jMdEVfITaLZllBaeD9MuTUisUxq4AblNz08bAirRkdJPqddSO5s7WeL9smViGoj09mi9CoJ77441PkHv/c+vchQEGqgOF3KH5Ld1pB1Iu7DDs2WuBJ+RaDnFAmMtFw4RNtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762838394; c=relaxed/simple;
	bh=gkuVArPLBbbhBVonswkOy+YaEK4Vs0KrSrOb4sOU7Tc=;
	h=To:Subject:From:Message-Id:Date; b=MwRGYSQyEef8pkdyoxC7wu8C/m/JvR+4cMKUdqlOntC6A+T+we0wkJPiMjew3ZHKjYEyEd0mHXOAhjD7BdbmPSd+6oIfyUJ+5m7VY6oNB5nes3vcMjprCvP5GVR0YTvgu+VzvUDl2QqpAyn7oBqYT171Uk/8pTdJogHQzkMxPUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEtIfjDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEtIfjDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762838393;
	bh=gkuVArPLBbbhBVonswkOy+YaEK4Vs0KrSrOb4sOU7Tc=;
	h=To:Subject:From:Date:From;
	b=iEtIfjDwI/bp0/yTb1J/tZFIaTmtBEDX2fUIS1JTphNmeAlgRLzs71cuoYZBq73Cz
	 mZoK+ogqy+wj3H4r1I6gOXx9Z8YsBiY7/Jnkc7PntDDL2nm4jZAQLu3ITcuaCiTaSK
	 NtqaIFrvFFpksLTzcJZRkzqGuMdXtsEE0h4N1s8cuxzP72MpjHn34ea/e0tjPEkG9X
	 IzfseIz5yc2ltwxUD6dLKbw/Zh2RKq5dTCnWBK+6OdFnU/zjcCNyo4PnyZzl8W18Rz
	 J6kxC1v12nBme5aiNmH3IaPILUyO+gM2E6+mkpwwcothDpNDfYCBB7vEFkmpxZQmVF
	 Fj7XedltXvLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4A1CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283839362.18365.3995676611119354733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0f0bed6a1b42ded87630350af6c9477e99590adcc0a09c557f26971eb8bf7f
Date: Tue, 11 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762838393

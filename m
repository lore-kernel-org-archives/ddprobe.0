Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F2F36F42A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786129834; cv=none; b=EqqdFZC+7cZsmcyWnH5C92ffEOM99mN08Nt+jpp6tEyeZhXvjjAiVSqw6IJVp0qC2PSSsu9vc+aAUb3s4lkSKSEW4SE7esyIW0KYvKq88EvWjZ9hstyH9KdDigvDpaq5+uzve9HKh1iyqcIOLcUpc908y4xV/2ms/T9Oi9YOanw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786129834; c=relaxed/simple;
	bh=L8MMBWDphvgBQ+Ko1kD76PM76oeK1lgrAV9Vsz9KzDU=;
	h=To:Subject:From:Message-Id:Date; b=cmFQNDJmBn7lD36FzPeeRSf+Mdr35OaqXUB+N236uAdxaFvfWalFsp8fOfsycc02fV6pBL6v8oGPjlPWZFF5JcMkQnKTSpWrJiROD+Fm0qgEYhEvaonVi0YS8QD7pVYLEkIrPOO52/shDoYmHn4yjg5+OfPBFo7EZvP1q34sEHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxRpfqtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxRpfqtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5527C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786129833;
	bh=L8MMBWDphvgBQ+Ko1kD76PM76oeK1lgrAV9Vsz9KzDU=;
	h=To:Subject:From:Date:From;
	b=cxRpfqtj8/IsvBsXw/A1KurjFHg7mBrqSiDeZWUloG9juvTx8U2USbMMbrCIzV1Y/
	 eEMC1+XfgTvQMyt9OJOoiGh0FPscNHRyPUj8tduz+RNwtjyQyEa7gLbuUacU/r2pIT
	 eMIz0uOP7kQ8oRoBjeojE/LrvWsgvSGf2JbhH1VCg8wzCpjYYch1eLf9eX9iVKqZXC
	 rXhyOIGmLoBSKYSdRvMn6btDMHJDirNO55YHl4GbcWyFM1K9azxvIUpxZY6Hw5BVn4
	 dyd0EQsP0vETLUb0IwpTSMJKDX7k84fpN2YXBJ2ca8XgXWyQrs1TnDNCZx4Ecf8Zt0
	 flpnqzXm86k8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC4EC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612983369.14717.4251717929140945268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7e4019af5daa387494b56db7f5eaf33ce343e8007d46149c0ca15692fe922d
Date: Fri, 07 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786129833

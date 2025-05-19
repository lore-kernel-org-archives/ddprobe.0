Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448A3B67F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747678194; cv=none; b=tlg2p7dFDIV0y/t8wuDQvvH0q1odVM7lJcNNOm1YEsJJms2ulinHmSl484oJ17OVbqfIXXUFCpTm2jKJscbhaDPIu1eaiO9mPoBilNdSkf8FCkghWphksCpW7Htff5l8FfnnnhRGnUKmqcC0L+3LksBUt896em/V7+aYzvFrn8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747678194; c=relaxed/simple;
	bh=pGyEntstthXDmOunyPWfPUDMV3b5p2kRa3fCT1fwkIA=;
	h=To:Subject:From:Message-Id:Date; b=EUISWBR7zpauu2hJzsnwGLS28kPy2x4KLk1gCWevVftoCcRBJ8X+ovlmdbFMyVhhfGVtZ+8WFki1dOJ4rpz8HadHb63OcSUDLGj2Zbrzmh4XuXq9dsG+BQSKF8+AmDWVy0ul89EekeSRTCkiqxdzD0NLbLWGiV74XbSlA+yd+j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK+sdM6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK+sdM6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747678193;
	bh=pGyEntstthXDmOunyPWfPUDMV3b5p2kRa3fCT1fwkIA=;
	h=To:Subject:From:Date:From;
	b=AK+sdM6lItGP7KLwreI2lKF/1jDVcsnGozaqbKhnCqwehIXZLowEUAt9uXcDFbCp8
	 v8jQT5ygwyYY8WNZf2zMhB3msHYXz0A9BDtTKBraVVnCOotTZPfzxsiIqFQru8yZZS
	 RoUWHGd8E5LGXfic1X0cLlTYRla8DCZjJWljhJydARn91MnHsLsg+Z2yeN+PRI8Crb
	 vdL8JE/ehy531dzMbSFqslcBIKi42L8DzLN7CnF95N+PjgdlOH+vqGtkNF5cu2U+B2
	 yVPB6RhDgLMSqzsKSEhoBfZzNtTFCvNZrJrQ60x6r1BM5laeunhrjUC2arepcByG3s
	 Bk52J8dQ0RGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC46C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767819358.26300.6845138419941639146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea69dee276016caacd1a9406e37e16a702b31289eb22701f6540316199a2afb
Date: Mon, 19 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747678193

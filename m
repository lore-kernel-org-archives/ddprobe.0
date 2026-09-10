Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707314BFE72
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789008634; cv=none; b=qWt7Yk2OToqC1ZS2S+Rw73jwr1DelpsrBo/x6c8UXuaAaUcUK+H8UrnC0g8B60tbPdLA9oW3HAf0x0P8h4t+LwzYVDsJsX89HUqnUPltQrI/JcrJ++MEyMYsUg1HNdi+XPCYtL0m07cTyjtAisAj/Xff7oCG9K9FnBWjqBnQxb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789008634; c=relaxed/simple;
	bh=59iUqaJRFaJAYL5fjXvBJ6zEIHl7Q4WNeBIKafRPrPw=;
	h=To:Subject:From:Message-Id:Date; b=qWe4NkKZV5/+rObDhxHYhZ6SlmF1Jo3F3AU8Z/kGfUgIL/+aImp3UNRNBStp5bRD6epLqJ7+O7Zrg2/UY34lCYoX8ZW/FQv/xkEMRrU4OjKwYrbfUQ44OrBXo0UcOEkuakEIQ4Zm/2FAy2L4c2pRuQjperoXlXMrFo7xnU/Airw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jntFHVdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jntFHVdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A6C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789008633;
	bh=59iUqaJRFaJAYL5fjXvBJ6zEIHl7Q4WNeBIKafRPrPw=;
	h=To:Subject:From:Date:From;
	b=jntFHVdX1x35yx9TAD5zRMfehO4Qdjsp+bFPyic8Rnfy6Ar9ayA4qm6C0So0DeLZL
	 3cqa8lNXr6ALrpsycQH5eqnRTPe/Njvo593mESeyJIcarS1u4m/N9+vobPB+Z3OMEL
	 +WZ7etFYnIs8RoyIqYEmRGkn8Ms1fHRR2A8/y8msXRiwKa7gUIsI+guQUYlflmOhi7
	 Fi0B/g/Z5h6RAXCC2cOU7fDezI2/bxG35HHtlm2YZXYaoUh/GVQQW3U5Fn399gJ41G
	 /PQJ2mVHyWriOzv2AGSM1DDJbGqupaSIRJhrBHAGoDgNoCPDXpfSCZipGDMRI8hyv5
	 GE405hB6/mycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA668C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900863368.28918.13083586337799605887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea6d8ae6c93a64e33effea6a6eba9ed429d9e4e8cb69fac3c7523fe382774f7
Date: Thu, 10 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789008633

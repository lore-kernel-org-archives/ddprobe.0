Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908013FF1B1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781368594; cv=none; b=XKgbzCnnbsdS6vWkhY+3PNA/o6F/W3Rn8s5Ju5Q/QeoQj9kmBwdhGhF2TQjN0W8YWowNpzQvnCqyatduUpmDHNUnCZ0PjkNivqnt82Kqs2dK0skuKKKHOCgaZXkONGC7GjuhnixqR8//+suZW6IkTv21h1HdDG701YmYHMyEadE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781368594; c=relaxed/simple;
	bh=Y8bzi6r/JizrKGCaWTJvSU6TJwdmpo0v6JXHLYjE85s=;
	h=To:Subject:From:Message-Id:Date; b=fO6Pbz4t8Qz/mXRTzHORXoiEzGuAwfBVpxC5H6qlso2PA7CWdMVpQrDly//xf8369ndOG4Ifra00nu+YIksRAvKZCXGJ+SdkP3KfcPuymXOGeHglinV0Y0wo2oTRc4v/FVaYJ8NqzWQKuI2eX3LZVIgDkxn1m70rvcZYdpoVTBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2uM3auq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2uM3auq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781368593;
	bh=Y8bzi6r/JizrKGCaWTJvSU6TJwdmpo0v6JXHLYjE85s=;
	h=To:Subject:From:Date:From;
	b=o2uM3auqe78/z0mJ/hWEZn7w+XYUZChtjBsZ+epNnbi+wBUtGicX+8pYS+310v1LO
	 b5dR/RF32Z136eLPdVlWoDeJ+IS/PncT4rC1E7L5RzRVUC9p9Uk680RPA50tS2mR89
	 rc9XF5uSw3nPIIf3PvP933W7HM7uEBiP2EMAOJvGoQlS/DSQBP/oyRTevTiwAUCQOF
	 p9HkfvniwlAXNmgwDs9cQ3NLbeRHJ/Po0GeuCvXDfCD8JkIf5L2akSLGSEwKbndXFe
	 30t+NHSoXrYMDIKli8UWSmm/QTRPrR/p/WJeiGzvLUD0Va1ZLLcU0Xi2qh0TOIsNrW
	 oGVMdxjiJFPjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DF8CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136859369.21228.3787117875277340986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5302690f7c3fbf9731d26045b5e455d8b92fd2345f90337c738a07a4d1078ac2
Date: Sat, 13 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781368593

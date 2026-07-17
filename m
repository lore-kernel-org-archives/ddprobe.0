Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394DC2E0914
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784300914; cv=none; b=f9P69CX1ZaWkDit43Y0nbjn/B23dzshQfBa1W8iaxtm+Dx3Bjt1y7OnduAAyPTxK9g80uUgzMcFIRReN8pGBuyY88Z5ZFaDGpdzAlduVjjgqE9SNSwpxusvwohfFTZfVOsbWXg+2wS1Gu5Ke8aPZEwEvoZ7ob//o0ER22DU6d1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784300914; c=relaxed/simple;
	bh=w7MVOX0YChj9FbsveUFgBXD2V4AN6cEooW9X7FRRqwA=;
	h=To:Subject:From:Message-Id:Date; b=eGOOFxbUlQ0ctBne6TfEKyTyoOTzsDykHC/tlu0B7Ef5HcxKMQ0s3arYg9nM6S3L36i9IP4vzKl/yLgdK5Ha4KQST0DjqeshUz3PFOKO2EAHUpFM+imvnWabWhbZ74SIoFbLQtZxUf6skH/g9xSgKKpx/jXkmm1/4Qfve7hjjf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZgJc5wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZgJc5wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9275C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784300913;
	bh=w7MVOX0YChj9FbsveUFgBXD2V4AN6cEooW9X7FRRqwA=;
	h=To:Subject:From:Date:From;
	b=lZgJc5wiBDJ1WESw8i3fVLbbJqp/TuI0SSSVme8fCg7SnJcdKLYgYy+b27yq1nPsL
	 EHr+SDNQtedQUJi0GnR3ArGRTUML/fLZDnCnd9RcfM/tL6ElZD0TCHva8Q20aBU2WV
	 NtA2LB6sVKaISFXfeTnrR9dgWG7TdPMQ91ZxZn9CUh/jH/VkYHVOsCjMU3DxQ6VPGh
	 gFtZ4TFbi6YMZFvaBF40lYnm0g4ImkC6hsWw8wiDCr1lVI70nvPDVT4ypFWZU/GHL2
	 LkBGrCpj2uDZ+KiqwkPhhgEjM5qWFkDMvjraf7IxP6IW5YOrLSnvHC9sH7t2+ck7Pm
	 74nVMjn+93nnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C69C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430091373.16824.17050432549362177900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f09733d2a7e2b451060463881fa28ae30d444626969c463363241c457a48b59
Date: Fri, 17 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784300913

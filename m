Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44C279914
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746719995; cv=none; b=EnxVdfvTzIgInbYQ2Qu7S3K7K7sd/4qfgEQ8ktWu6R3H17oNOBAFZVQs8F9rv8i2FThBhmgmtpdYGbQA6sCgsZTxxb9dPdxhuSQtY/fzCLTNsjZT3RRVUZC12M4Z2g06z3H7PeiH1fOiyzx91WbUoeGue9OhkxkMh3TcVTWTTMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746719995; c=relaxed/simple;
	bh=c+iFrdIyFOJhJXpqc8L1FOpaVugXwPRZK7FnGUthDxM=;
	h=To:Subject:From:Message-Id:Date; b=OQ+bvsT4CTJq5S0IQqz/Sboeo+3QI/Afq9bYnHNcoEdLvS/x/0XBGmIAcrRBvbfXKpQFbLlYJjPWvmY480pFR42Hl9tYBlFvhworvXKarlxHFeZ+jdFEwJ0fBmt7VAZWniBQLCrbKk3LUswheoDPyPoEqYYb16vWV+VmP2LY2vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD3VfSvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD3VfSvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0206C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746719993;
	bh=c+iFrdIyFOJhJXpqc8L1FOpaVugXwPRZK7FnGUthDxM=;
	h=To:Subject:From:Date:From;
	b=sD3VfSvpQIvUrVhdUfCCIgrWBQAchvdpE9g7pvXrF2URVhK1Gs1LkANNgBaxFHbMq
	 P1g5Www82CzfEnREDyYT/VOu3DeQq57xiS12wJd5krV8rllUIos6kQNNGLM+ITExPc
	 Agpnn0jxoXBNPBFrq8CsKU7WK5OS69Gr9Gz0RYAwM54K8Vd9DohzbTif2JrX445W0v
	 MyyI4zeVavNHuqnBy7R5PvhWJspuCGmUJiW2k9oAr59JpZzweVnRNAtndBY+1HmN8K
	 EgvRDV2ul20R3ABuXRrRQH/vgv4NWRCx9G0E+14vknJKA2RZ1hbVNDzDtMkReuO2Zz
	 BGkGJNqvH9VtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFBC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671999358.18044.500414045879532579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4f349856ed18aa7148f6a49c032afe4b064f0a390b0bd2f325cb0c6749573a
Date: Thu, 08 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746719993

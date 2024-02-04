Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317EA25558
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707072497; cv=none; b=PfzoG9uRVTWH7PTwU/YBoaXK02hOA1EebUUQOAjlq8rtN8gm5GJgCKzsvFykDu140UznRgumdayyvwp6iT/f0ycv+IxK3TJQmYGbJWFt78EtF16K4QPdwmUL/A6H8QHGlk/GOHOVoZMMcOCicYIT5HOjbv85Ak7FiGc86rd9Cwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707072497; c=relaxed/simple;
	bh=YoZK5GgUHVdOCDoNlFNGytvi/FkMQTrZ29hJBUBbWXM=;
	h=To:Subject:From:Message-Id:Date; b=hYLDM/aFadRL6SzXXI2fNsL0Qq9jk5UIxuIhWV073IB0NUveEyMCWoRhoTAMBCz2QVWkSXAF44grVYQdikhlJftatE8Zwb1C3Gvz8mr8Bb/iulgujNajTjxZDV02jcUiORKIct2cuR9uPNldn0Ua9+Pop87FUgszmV7tSWmA5oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXib+OK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXib+OK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91CB1C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707072496;
	bh=YoZK5GgUHVdOCDoNlFNGytvi/FkMQTrZ29hJBUBbWXM=;
	h=To:Subject:From:Date:From;
	b=gXib+OK5uALZhEk/Ay3XrC0xEYYdTMxgv2U2TXxXNXIDEn/6kgQaUNv38nkOFC31N
	 EMIHLJq4BD1x6n1PtghrqJGCjGY4F989kQ5wfmG/opbCAL9XJTpPPmd+/bigSod5bZ
	 EtQpJrRBdlaHPQb6SNuYSv20wLoB3rkJpOS+eMQlimZugK3SS5hihf6Q3D/VD7zVGk
	 x85qtDzibYkznd8yV8Uc/z4GwGUCgNDvH7pFwn0nxq+WuuildjN/N/8VGgfgB8k9iL
	 8Js5g9E2gm82Sy8snRrz/Lgguiyl5IOKt7qjapOassZ4mj2YOJ9hOBE/LcquPW16SF
	 KpJeD3xy1M8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 757D7C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707249647.21064.18197274233595139402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3befc45c1efb7a236bf87ee87a742f2b746d4b93810fba287eb1c6ff4ae371f4
Date: Sun, 04 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707072496

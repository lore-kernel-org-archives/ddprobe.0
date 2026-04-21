Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8D3372B41
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776787654; cv=none; b=NRhhr6HrQ/A2dL8rXPnexPslKRoK4Bnn1T54LXBBXnnhF8gNTL/D6snwVUuETNPy3oa2S11IRZELsDi+Es9ORkrpsK17Q3jhnPQABmDPFqt9FKtaEP0os9bSTyL3UWgEc0OJii6O84tG6XuMBhfebB1etR/Q58HjgYj4HraTHdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776787654; c=relaxed/simple;
	bh=usrJNpdpYy5jdkf7/Vy6spggQKPnrE1i4hTUwy4hu2Q=;
	h=To:Subject:From:Message-Id:Date; b=Ua7JiihcnG1kRKqlNJtaYoqZyCmjffJxQ6CsWWCl9dlLMHd/LUrgkBqOoJ7SnaAyp4Ar3mc6LI7Nfg4zx7reAj+wb2YIsSMq2CZXOkEsbj7wB+/j6/TBozdE2n2jB9iGvNPP08O7Uc3OL1IEOtRLUSLS8H2XO5OxWYY25tzyYuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYB/J6Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYB/J6Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8061C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776787653;
	bh=usrJNpdpYy5jdkf7/Vy6spggQKPnrE1i4hTUwy4hu2Q=;
	h=To:Subject:From:Date:From;
	b=YYB/J6Te8xky2K3BjCVabxE5csqEdytDYLhKNu9n9/6ORsffV9jpkfBIlT4Uct3/i
	 ZNhGiJ5tZRsi+T4N6YB4RmXWnP1P/k2lotoVignGlHSzzD3bz3r7yQWEcmBLT6AS/U
	 XXc0cLzX+0nlID8QwYVKBoEwFfJvSTVsA/l/OOy6wCcSrVT2Kh7oT3dmJf6mE7O37E
	 UqZSuZC0tp862euYKISTT4DV3noBCeoCZePDWbOmhBAbPNNe9keT/UbOd0iQG+OgwW
	 0+VhCFbeJXimO8BD3Rr2L/FdbHbbhnbox0fBg4EwjbILKv8yuPahGxFYVLVD6USBec
	 L0wHo1L4wkAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE2F8FA94
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678765368.32222.17144327893043738559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2e231796ce1f6db3454f4015462b0cebb055eb73221c1836dbbda8638d0b47
Date: Tue, 21 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776787653

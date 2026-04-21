Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30D3563D4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776759454; cv=none; b=rhTy7g7LrE0+cmDU6k5b/D828XwpAHVgaJLu8HTOnubQW/A+yAaW8cvASUCgJZ8h40aPkuR36/ZttezUKDgRCuXpCm+VpkX39tNa2PQXLyAW+cj6kT08m7NkipcmjF8WXBOx8j+7YR2S4SjNg7iTf6fWaWVzeeFfodLVBTO8Ws0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776759454; c=relaxed/simple;
	bh=Xsx0FZ3PXCxpSvGO4AIKCk0cbcIsQKrJPcd3xnZzRGw=;
	h=To:Subject:From:Message-Id:Date; b=ExdPkqCZrFZViIMxigMw+fsOEd7NMMM+c927GI995+Nj1Frhxe8V4nN1gi/t2bXfArQ2ekVr6TVib41T77OuBgG8LWCdEpGrIiAWxgKra8V7MZOsqW41DWMkrktISESsXg+GIdBiHeShJZqof189WbrAMon+uAPt3cUxOajeA5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwqknLT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwqknLT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C43C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776759453;
	bh=Xsx0FZ3PXCxpSvGO4AIKCk0cbcIsQKrJPcd3xnZzRGw=;
	h=To:Subject:From:Date:From;
	b=BwqknLT/WY7vvzLPbT6zBCRh58REqmf+EVAg6rbYr0sxulLccASXg4N+uJpUKNOoO
	 5STAXsrCQ3SvR6rA4dYLTIlfqV3qz8/3Y1+N7JQQoY3I3lbPaXrgxojKPn97lLfvul
	 kNHTyt1EzdbQNBp/xiTNrkpc8SCWCxUr3crEWlZF6wM13VeJ3QtzPtaUODR46N5HYK
	 F8e+81KzYy6GV73dt3N3bu6uBaiDJatPek83LtqDnupzNKz5kLM7/+mXIaRdAo9T2Q
	 dwqut+m4ff4PMEMgkU5jQ7pTgLtlOBLZauUXdO2SmMtws9r4jpvnSmgc7cfbKAeVUr
	 yvAVohzNS9aRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A1F327BD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675945368.4075.1728077417037027446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448bf520d533e290e8ae9880d6aa3fe813fb48628bb5b4defa1be666404a8e6d
Date: Tue, 21 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776759453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302794A64F6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791465034; cv=none; b=F3cuBisq35ANENC/hyqfmsXbWQiVr6p4tbLcgx2wpmfHllbH5WL8ODYBvXtaeQm8DfYCCOkDG51kEbFXI8ZDwO6Cf4P6f16+PjXZPxYNdtxQnsPkHo/EQ+CtDMla0y97BBv2xAO+9dea/uNe3oP76zrTCBxWgOjLyFPUFSjwXhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791465034; c=relaxed/simple;
	bh=vYO8hKN53zcvQJxlB0Ta+U9Mf/BjT7Zr7UBORdPtMD8=;
	h=To:Subject:From:Message-Id:Date; b=Sf/HUD5VFzsj+AFYYPEzzeymBGEPZ2QDkGuqitCSu0Hf4WTA+8Jxq9GsdY8Ay3OEgCckgzQMQOJuXVsgfdl+L4zo2IaHD/sIv9fFaPyOWdH15VeT7qdlSyBgMATm782dIxFu8UFjJENo2BkIEuNdH6KeeWQnZ/cHQaI5zWDE07Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSgYw9hO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSgYw9hO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D854CC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791465033;
	bh=vYO8hKN53zcvQJxlB0Ta+U9Mf/BjT7Zr7UBORdPtMD8=;
	h=To:Subject:From:Date:From;
	b=OSgYw9hOP1110ZD2S+gPqc0S4PGiiotTSoLnpKe0TnwdnpuhQFZd1aqbXBRicSdqf
	 XSP6r+ZAe+XSYgcKgxMmpkkWrEiSc23gTD2b54StsrIGxh2M5ePc8yk2eGltKmSdgy
	 LB2EG/8PmgG+No40pI62zMsP1nZrS43pEmtcUAEQufN5vaIZ7uDaLjbk1dmztQ2iDq
	 ltM0uguSN3gUB8jEHaPnfMQbp5rysRrvcYufCPvvnjpArGykpG7Y0jFVypTTfI1AdX
	 4d4RwoO2kEb0DL5t8I8Giin58QgfL54hZzpEGSna+nUyqGGsubNpqJQ8NJ5BUebYjq
	 dBkp0Ut6jeIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B284DCA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146503372.20211.11648326899676468541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60f0fe73509f44167283befbfe23f3854eedfe44157c5c5a8ad1a7f1ed78146
Date: Thu, 08 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791465033

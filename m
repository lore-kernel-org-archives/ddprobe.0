Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B8244211A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787231434; cv=none; b=aOZiin67P0xTh7js1J60Ya358298tVwiLMeq/Ve2QIYX1t4wmaAgsFHF4YVxBdH/s1XWwXtTXlri3g1GVH0kUGB3dBLnRL5iUYK5f7Vwfoap2VGEwtrbrSs6DaRer/aOsVv57XogngDtlAEToOkcTJGXh36X+PsDWwcIQVUjK6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787231434; c=relaxed/simple;
	bh=GgAea/fgEb2dFPUCTLVj3IW4Ltho1MBVoQtBwIQeT6w=;
	h=To:Subject:From:Message-Id:Date; b=btQvjAQ+o6oUMaSRHkA3sg/+MR5/WxkMSXkQ9L5HuX3jjiLt7uK2wkjIm6ZYE/MSsPbVcEuLnTUzeWd1P7FfdOph7P772vFisv7G6C3lrt9NjASrfq5jAnOWAzq/Bci3AAdyyQeRINehwxCRa5Qg4LiYwIVilsRG/XRWxv3sjXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYCDHFX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYCDHFX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF10EC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787231433;
	bh=GgAea/fgEb2dFPUCTLVj3IW4Ltho1MBVoQtBwIQeT6w=;
	h=To:Subject:From:Date:From;
	b=XYCDHFX3t5QNb02xH81WNmAedZZx/KEIInXyo9nkdbb6COwJCIgQH741VZME1k53J
	 0TeAROCO2P1DsMpud+QFW+lzLYsZlmbOu9Un6wjTuTCv6AAeB8OiF0THYcz11r3FsB
	 g+63GZwpk8ASL6LlpZxx04/41vE8eL56jaQ8lUg4YjsFY62EcC9Od9eTJelnjq5xtB
	 6o6pxq/CnhCTBWueDJt+TuUbsMhl/MDLkmar6JOQZZRvKmX0Q1v/bdmvt/1Ig/cie9
	 OuvslxljmesISw1dzHaeRs0I25JVdSNj6oU5Nmz1gCqBujiaJt5wI3BnFXMWDRubeJ
	 dNS77DPCl7/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC123C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723143369.15067.12398512923889499402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74feb33d3f0479f753ed162df24f01c1bb42e2b5ad837a9ad93ae3dfe2337c1
Date: Thu, 20 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787231433

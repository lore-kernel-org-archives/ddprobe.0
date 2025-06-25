Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB03074A3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852794; cv=none; b=DlkeR9QzKsb0uFyrxLwikpdBoXtLMlKzKNAibjNnU05EFJqofYWaKLoDRkFMLMIIMC+AesTO4JX147W2EhRJB2kLFvFnKoE182Rld+uyOMUz0Q2zr8xTdyB0NmB3X0gpT3mOoDvld67Do4bsWB4c8L0nC1icbDLRh2ymfu7a0HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852794; c=relaxed/simple;
	bh=SrhE3+Znyw/so0I1r5674/7KGEZSkPgLK5Zd/O14suo=;
	h=To:Subject:From:Message-Id:Date; b=KVDn+J87FRAYUmbhhNJ+KhAJPn9zyXcrsg5CMaDh1FGH/d4BS5Ed0sUExtt5wrSYYt3wfae9a5RMEsFoOUCAe4j5qO7K3CdYRl1wfB1SijLzacCExV+iG8uixusvQSVnjM6u8HqzoWFv+h3C4JpCPlz3yADMbWyKSFW5pO5MSCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1MqMsFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1MqMsFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C09C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750852793;
	bh=SrhE3+Znyw/so0I1r5674/7KGEZSkPgLK5Zd/O14suo=;
	h=To:Subject:From:Date:From;
	b=o1MqMsFUfvVryAr0C0wpCJpo5MIUAuWw0yD/Fvmhs0ggyMgrrBwmOPJpHMrTkjIEZ
	 IIt0OSLPVxpKNlr3yms5z/aGkL/uxEpLb/2+mF7PQRjYBjP+5VSQCLydm0OYZ19vIa
	 tnVxgtIBbNU8ic5lMuV0IIRMctbvfybCVCTl1UbIQcf8mel7KzWbrg+T/Z0LbomlVn
	 NFTOvZHHZDiIIiiNtWX2Wjofgu3sSyXRvlMaw4WhSPYaU7w7ik46F0xWX0PCvL2uGU
	 5D36Fa+au5oqotl7arGSF8o6fw+Uh+oi5JN6UakLiUaVEu2HWLEI40gyiN13le2nnl
	 F3mXBvdtNST5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058EC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085279357.12364.5443199926650912680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa51fdd382f16fb52a262c4962b8d3cbd43d3bf212962c776fbdadc7ee23764
Date: Wed, 25 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750852793

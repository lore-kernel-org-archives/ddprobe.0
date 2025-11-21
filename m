Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3A934D4E7
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723514; cv=none; b=iZmftpmywBj1xbCsR63DoOlK7v4yz8kc4JFi3PWYPQfQzxnXQJ3H9bvKz4NYCXaLRTaOMXPlavkUKiCngpaC2kVH8+VkZLHzoc13/3ecwt1m2DdYmMVD7tzRya4X9Io01bt4THoIoOv0ITFlchSlcYl/Vk++zv39dvhhsTzY5kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723514; c=relaxed/simple;
	bh=1WmsX7yQrHLsNtxH9GAH5dHFjms9KcsrCOF8/cQT4UA=;
	h=To:Subject:From:Message-Id:Date; b=mmDgfN53bD66TSzJ49ulsJsYOiqKJbl9IT7dut8DDXpj3wtH59MYujjtiyxzC0s5EMw67dzwKglLuoPh5XLOX8uACbnxP0/IlqP2Cl/wwFDNIA7wD3s2Lm9Ui/ua98RT/u+PE131ylV6CLqBbT8QaAQJlybF7jqSOnvgKEsxYSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzMVfcgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzMVfcgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC9C113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763723513;
	bh=1WmsX7yQrHLsNtxH9GAH5dHFjms9KcsrCOF8/cQT4UA=;
	h=To:Subject:From:Date:From;
	b=nzMVfcgAiJ8K5DB5Xv2IxNmq7loONiTv60ie84+yQy34PoPiX6ek4eT527FGZAlVg
	 Tlk117FH2W5MGaQEnfkJ6J7fl3GqjNEMzpJSxTlcaUPqjHnKhOEhJ097yZQOLEyXho
	 6fufyqYO0AWKTCwTOZOr9lPSB/EuuwXr59tg/p5kghLQJcvAqqYgginaZKIsrrSm82
	 ZP346ZaTVc2xOgOegU7SuMRO5FPmfKb8CBgyzFmDIQ624eY2AYTV4poQJRrtbvFI2B
	 M+o1Gr8ShzKOaKmsKpakEETrURT+Vm0hTtxQHoCwbPunTCVytMtfuAufNphaoJnTbr
	 duhVO87Fi7Eqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A73CFA76E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372351358.28317.17557977606308127836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0daa2e91102736c9e62d71f6314c83eea96281131196fccf1f8a7a31904ab5
Date: Fri, 21 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763723513

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246C72F2723
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752660594; cv=none; b=XBTNwsilZ6ZM3oXFIOFKR9hkCUlRitWvK+FfqaWev/wLGRb+va4UrlYTVF+XW2ssJCfKNm8QAElIuSJtjCwQCT5T6XD0oLrsH/MBf1qBtgVqJd+8S/SvmsG+n5pvhBJc2ggVIPZQ/b0q6b7uZ57WuT3RkEJbCLflhhkcPU7wADQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752660594; c=relaxed/simple;
	bh=NfkTMwwsnpHXciA1nklNSSSiQTy/hgt59yYbASHhYOU=;
	h=To:Subject:From:Message-Id:Date; b=P3bUHw7TIyfWHlra4ZLuWoswwWJAl1dqbcdnkjKC7OHsmAQvVazyRLqhW00y3e9WGqrPzK39xEHxC/QnvFe/MC3/YN3eR0+d/n5z4LDycgNqzx4trxMEP0eh1DXg/bnkVa7pGCy9KMmYKMTIZMOJcLv2lIi4QF/zAXHu9OmAGpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7p2AMDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7p2AMDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C37EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752660593;
	bh=NfkTMwwsnpHXciA1nklNSSSiQTy/hgt59yYbASHhYOU=;
	h=To:Subject:From:Date:From;
	b=P7p2AMDQzfZZaARUtWYuuj1w3g5plVsxTaqvvYg3ynFQtHrOb1a6zKq+U2wEgyZxN
	 yU6+uXU1+mzSe1fW7qztRsJHVNwpX1qnVG5D6DcXirBkwib3DT1Fn5Do06PYAis0gm
	 bMoFsA0t7nd/TM2XccVvPHjXv6Pj8nZVM9Zp30QCZRXW9GuL18OTK93qg7hTPSSgdM
	 vozCHxbl0pMGRHosbuJ/Crbtfv1mtJYbVb7EvEAmbhLuuh518Uh+Dr2NpabeWxcxdf
	 Y46hIgZyFM1/pj3GRGbOlxgcivOUb/crUnZpkJgjALzXKaEfv5QviBYTezKY7wBI1u
	 3q/vM8cI1me5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44DC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266059357.6602.8069796338104212391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5adc8c597657c2716415cfb02d5304f198f0af0f108a4463abdf7e63a6b683cd
Date: Wed, 16 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752660593

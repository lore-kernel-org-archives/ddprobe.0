Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767713DBBE
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723799154; cv=none; b=ptHKr9jz3IouNWhB1ws/fcNgVfLDYluQUCBmTTfkC5XZ1EDlobduzAD3C109TWfNnl/nHziOCa0ROM03gMY4wj/TI1JsVhDbv0YZZqWOs/3dsbGHKTe4OE2g1U2bZPcryeBalqpj2T7AnBjhhotKsKjcPNDivzSnMY+uwSTC3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723799154; c=relaxed/simple;
	bh=CyQlAojKz1lnhgDzdviglvSPXZQZ++VGxe7iiv06nLc=;
	h=To:Subject:From:Message-Id:Date; b=MKER48r0iUOIrhYfZ+NCXxchDVPX+rxexVKaVP9XvMvH8SrcxEZFp+i7ty8yNGHncsvSsb154QMj/aVbH2JE/0bulAvUmQjH6Qly7IbTdkzXo1HDIp4TdT6+8bB4HbfTQfoOUuqtgR865xVNyPW3okcfAr8DyIogxELG6OAn9f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDf1g7hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDf1g7hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3031C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723799153;
	bh=CyQlAojKz1lnhgDzdviglvSPXZQZ++VGxe7iiv06nLc=;
	h=To:Subject:From:Date:From;
	b=XDf1g7hunDenWeRlY1OAyFPfQjsFAyveoX9btP+ujk5Ymjntnng2IYVIWEaS5Ybbf
	 MEUqYcqv4+8Dmr4jMeGVKY6l39HJjEDweRoWzZsqzZBkmmO3/MzvjAehsoH62tcHWS
	 RqzPSRNtIRgAise3kxFXGBWMY+6c+c58Xu9bndQnXYg6CJ8vj1QqosMQpDGDX86KxQ
	 ogQzZW31m9NpduenBydu5AJcG1XOT6Zq1AyUTCCNpjG3lk5wtTkEs8uglL5bortwY6
	 VCO99Ck10eE2VnqKvyyHfYmV6bsCdFVe/TspgawfKeC0WEzXao99QcMm03dY4HCCi9
	 frXFXM0WJtyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D1C531DF
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172379915365.10386.5952084197014984148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aaf8383c1a651d5572600a2555391c0e4040cf3f952cafb055d402c59fb92ce
Date: Fri, 16 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723799153

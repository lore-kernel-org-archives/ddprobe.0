Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13666A937
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762475394; cv=none; b=oNkkP2ksdWpubnTcYYaoQXJDXBGDb1YFeEhitAiJ4WUOCZlzGBx4IenI+EYiHmVEiEY80HObPjdC9BYvfehC6l5Djxhh26sJghy5puAeBBVc5PS0NJzSdA7e1cD5LHDztfsnOus0yVBr1tpTaR/wIDeA0xCekquCV5Z6Y10tS+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762475394; c=relaxed/simple;
	bh=Ck8UZY+GfapgvMyq9vioxbsNGnxj4k23EQJXbMgUOdI=;
	h=To:Subject:From:Message-Id:Date; b=LkHRahWjGcbPN9btSLUzVLRgSNcBazWH6Bj6fG28FQUh3dZ6f4DYCxi5ryO9vDCRnXNyx/MAZsfRUVvKBpIBxjjkhDuCifIicwTX4p0kX2FVunNSaGTlcmRG0Pm9B/N1WDrydBJF303x7Fmg4VfC0ss32UN+KR8A6IrUEkKF/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qn7uJ16U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qn7uJ16U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1EFC116D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762475393;
	bh=Ck8UZY+GfapgvMyq9vioxbsNGnxj4k23EQJXbMgUOdI=;
	h=To:Subject:From:Date:From;
	b=qn7uJ16UlwxboDUaMZa9ksyuH8K4kTm1A0SHHiZhHrz6BTKrzxK7EmhpMxIEBOA7j
	 8EDF/M8z90onWT77LpGVcoEAh9edKCpAgK5LgAeiZOCxTi9xtxltmMDPfqgGWGFJXR
	 NjvZgoxMlIGgC77fS6uPewVoW0Adcsq22fH/X5OsZUPgul+VRfPoDbquJP9z/dWD4H
	 Spo+1jsxyxlDH1T4eSNin+xBFq5AIPLfLvtUKY9Ssz/IfVx0X2+hSaGXU2fpTvtyjz
	 jX5kXkcRrMDUKPJeUaGrMKkYfLJVAEPpPjTZBSmjLaK2TwjTbKWD/yyOPi7susIWMP
	 eF2xoRHx6qnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D0CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247539359.8606.1498020139519429499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac34bc1ee5e03b1d1b30d37267cccbe805f9888220748756522ebe6c7d46620
Date: Fri, 07 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762475393

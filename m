Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE93064A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763763714; cv=none; b=ESke0sf0i2xvWH6XCYKA3nE2j3xOV3BgsGshaxyb8JxPo/e3mhKpanCxRMiopWrRR+rXmuIgwro+B8uaL3lzAUClbT+cMAKOivsnYgUZAHCPLay/fL9V/hnx6y+rkz87eWs4r394SvlSW7yl13CLLltYONr/8tUuuAx7tp2BQKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763763714; c=relaxed/simple;
	bh=IfFrWVAMwgyBbild3Vdajs5iyGWJY3DUFaEJyhWEGDc=;
	h=To:Subject:From:Message-Id:Date; b=pKSQ9PMeVJ1NGwnpHDD4srdlQQ59KksXBBwGfCBkhNuT4cYbRK4M+rYO747af4j3Ve7fFb+8GyXqQX9q34d4AJvlrC8Wv/scNVUQgJucQMx1YV64Bn2ldq1Aszl8/GjzS+nvekLwo6jqwYgfHetvNM0PRWi4Ikz5hOcDCpDAU0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ11KE7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ11KE7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6280C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763763713;
	bh=IfFrWVAMwgyBbild3Vdajs5iyGWJY3DUFaEJyhWEGDc=;
	h=To:Subject:From:Date:From;
	b=NQ11KE7LIJPokHwN6Gw65Nznr8jY5p3jHWoK5Cd8a7PNXxrZp2rKPKbU3Xorn6PJK
	 nPT+Fct+BsjW8wgFFCraBTIDC1qC/D6bnYGa7ie4djTwY9+WBP9agUIE53HT7/4Oov
	 lX0WqZKbBNlMgVuTfRS93VQuqsfuV8RDkgFVrRHXUmA7OlRPGev09+OzYwC7MzwXkP
	 6YMHFZXHMKLR9wsqJv58vjWd5MnGJwcsUlbWcoVmPIy3DmHRzRyN+hy4AAskBamIO8
	 bla0Iowp/62MMYfFXQWZHqmb41m3cIAbe4SzNiFuxHfmE31OsNDb2HCODPowtNVFE3
	 W7ZZCURS8zrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928C3CFC50B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376371359.3897.8615019403034681327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3862d4ab809d2dc83f7537c078c5d4b79b3f9033accc343630656ad6aeb878
Date: Fri, 21 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763763713

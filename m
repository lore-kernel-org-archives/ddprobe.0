Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C54F5C99
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722653154; cv=none; b=eelPr0wzI5EC4QHRu5qaG/A3q5o9iUmAeMPZJetZtbCqENKasiynQm6mrzkyFy505h3t4nSc5NuhJDVWYuqDhmB6DvBHXzx/EmcRptPETsL9L+P4DI97eUAxW5kfZB/TIzwRViS74Lm3dyPHJAlj28XnR7Zy3OXDONdQLD9bQaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722653154; c=relaxed/simple;
	bh=tBGlwHKCWpag77iS4i5LWn/o3Hf/5LJZ8sxYMLoLvDA=;
	h=To:Subject:From:Message-Id:Date; b=ExQTacPfNmL3kMBaJaueeDOm+c1BB8YVvmBZW3JRFZAyqz3SbW2D7DZpTESm/PZ4ojGrR130y+g9vjRAd1vCc19Ps8PmXMWUlAkMynT2FXx4BIKr1YudzQcZWQK3T6eWuMIPWHaNdAIBhBziVDf3RyV956r1/7bmXIPLBT8E5Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y69pPpLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y69pPpLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA09CC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722653153;
	bh=tBGlwHKCWpag77iS4i5LWn/o3Hf/5LJZ8sxYMLoLvDA=;
	h=To:Subject:From:Date:From;
	b=Y69pPpLMfICLd21aMtbyGipwoIxz+3haIJFizMUtTLsQhT7pwJFAjnZ5Ij0h+rVvd
	 Cd+XyfMqioqLibNxN3zWe6joS6/1WtS2+a0SpJmH0nlScbMvPJMm4rXfBgWY8Q1mUm
	 Xx0HzgfmLGxlFZ2gi5k/wveEvUl1mZB7p09uUPviDB5FvE2k42Yrn5TtT6HXc9imu/
	 pKHwFlr81iCmJZ+wKYvERUs/OeKmJCyJJe06MV8oCPQkI+IPGpnuBAlsqFNDZ4JW+Q
	 /yjUw0IXwq47oct83hq1ghdBTtxOP3c84LCyssJaF/CwEIOf3ckdM45d5hGLRtd73e
	 VuBntxAeSoNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DADAC3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265315359.14993.4020969730531945212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cb247a657f2aabd22cd0718f53f7bc8759823e3d3b8b66569b55e4decd8a0a
Date: Sat, 03 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722653153

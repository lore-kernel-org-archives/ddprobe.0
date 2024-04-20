Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AA010A1D
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713601223; cv=none; b=p2VKtNjI2JKye23Wz6IEt5wEwBW4D3YEuP/yxiTKVqy6YLAHIVrvwOhwtQo+fo9MNQkfLthDdulSpO3yOzhoR42E1xNtm7Y2+fUod7YPM5ZVIYQD+htHaWEoV7lrkp9pGD72jDpNCBsf6Lnpa6n2xp0VJ3AAcLbcW3x0cK978kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713601223; c=relaxed/simple;
	bh=CqhideTkuel7Ho3xM6Krz9MuArH1ktxvYIF21/AtqMU=;
	h=To:Subject:From:Message-Id:Date; b=LwDRNFdy4y2Z+MECHB08P623aerQU4qMkApOFRzg4SPhE8EzsO77AsJUrHIow/hhWUZ07LFjT7X0jCULEHtxDVzHZj9Mxxa//x8eJ2Kn+hXmCgHKGsqWYZEmb3RZRbSIjSC7IhGxS+iiPGvFKabFCZXB4kgo+mrFuUw+OCXnHOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsnES0f3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsnES0f3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0123C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713601222;
	bh=CqhideTkuel7Ho3xM6Krz9MuArH1ktxvYIF21/AtqMU=;
	h=To:Subject:From:Date:From;
	b=bsnES0f3AGtNH7QLnj7FW3w3kLTenpvK2FYPFy/bJcMljNyqFLOYPeTCl48kdMtwi
	 CO+jCxumT2YdYTSXxQAO8stFUxoBcjgOCIMxz7DNZo6x/kcE2GWGetIuj1cBrmHmzF
	 t9TBt6gB8Kc+qcWViMyY39LiDuyqycXF4+nW/kKTm1YoNrX8KC63r0B3VmqsLv/VBW
	 SjYC/dKCApIM7BK+yMLTk/TFmJak6SuceYyknmvhr40WNGiZNSHBnaHkfpyi81YKJl
	 k0d/BRfjITcELLURCh7WFpJMK+RpQBhnV5vhcQIpy9F6FM/GkFscvn59u02YVBRrEh
	 SHGShw63oNm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6CEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360122278.410.16916319214352132120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd044476e595f89fe88df71ea93be11bcf35b8a5304925780703c1190345d03
Date: Sat, 20 Apr 2024 08:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713601222

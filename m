Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552D8182
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736705754; cv=none; b=SXfvJ0iqkAn47c7Kbm6h64+OvWKl1QgHDAccQmQQXqMqIv12IdVpqbBJ8Zr1b/KuJS//ZhJrXIBg5dfuEpt9UD04RcBhXwMIKSP7rhP/ur73y2GCQDLgULgKIy+f9ewCXVSlogYcab8I7Yln2KckjAMtXQptPSB/zzBIhNHDuhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736705754; c=relaxed/simple;
	bh=0IGN25yUUO7mIXBFhnHnQTaxQCP8cs9VLCLJmjEyEXw=;
	h=To:Subject:From:Message-Id:Date; b=BaWxoXF5ovl+bHx4LozY6/rE4PrSII9qRxVv0oUr4xMPgtVmoZ1o9Vv8xGYx6wNd9l11OinfgDso+Kg/+DfpgcDQ8r8PeMyHHMFFnFm3VXsODCc88ppkNyvykf+H0AncraXrkTmTIwhShbbZAZv4hUW7zAstXbKql5QkBYzlLz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK7gMZ6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK7gMZ6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ADCC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736705753;
	bh=0IGN25yUUO7mIXBFhnHnQTaxQCP8cs9VLCLJmjEyEXw=;
	h=To:Subject:From:Date:From;
	b=XK7gMZ6kZss1J9bXcGXcfCbr0+GeZ/gCRuUQce10wGhX/YmfsHGTod0XWhdMogLZd
	 BLvV+aOXeGfUi85dJ3XINmM3Kt3hsdKVV3IY35WIaG5Amo4AZGOlybe5dfwtUuWZWb
	 Djq4cnzal8oxIM6SJTG59rQ/Sr6Eh4geps40llzelOK83gCvJ+ti9x/JH2yd/rmtWJ
	 sAeWQIcF43nlZ2Tp2CuPNOd4fJrIrn8wtKg0g78S9fiqDk7VV/KDZjg2gJRInGA25D
	 6D0GcnaVwZwiAobSG3Q1fhZpBdiWZrIDxARMUuFngm0TFpzpmQEbqqbHSkoJsq2e4x
	 SHS7xDAad9TNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F677E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670575361.23222.9852432057728217704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9552e3df193b00a50246b58650db428cec3ba7c374b02ff85591417bc2bfa1
Date: Sun, 12 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736705753

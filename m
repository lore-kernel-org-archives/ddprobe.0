Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F186149C50
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736477154; cv=none; b=Ay17WwwPw8mwH4VWTFjuClCBTkJYYanZwhOmylU12T56UonkXUrNuRJdiHhZrgGSvNJV0Y2nMJwNfcpPBcOaYWUIOirjNTaIKUs8xYdPpWH9kvWWbw7EGHCxPhKK2yMDz1jOddto1XYUjFPAM/Q/A5eEFMAOpSljhlZpY+47c1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736477154; c=relaxed/simple;
	bh=vIoChz15HDL8WFFO+BpkP1P1DRLZkabz9qxX5wO/Tp8=;
	h=To:Subject:From:Message-Id:Date; b=NSC/hQ+GKI4CZMwUAyBd5OZQGhQEK19RlvOt9A2TroOf7c/ewgWN/8uPEImi+yJo5H1btvFqs136dx9Nu0yR6tk03yORV7cODb+MbP0AyIJuU6KXigkLWc6BcEb9jTZ7pMriU4FrN5Ootkv7y9rflidnoUkgkb4Vt6Bg58v85b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck2djFh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck2djFh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5733C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736477153;
	bh=vIoChz15HDL8WFFO+BpkP1P1DRLZkabz9qxX5wO/Tp8=;
	h=To:Subject:From:Date:From;
	b=Ck2djFh3hLWnTP6S64DtoiWFpY+BhbG8F1qP4Dxjd9LFTgf3X0aMFAawpOh8/8oGy
	 S+AYA8lfbuz47Hiafkv077mknHbjNxqchCwlrt/LcmM2kBx69xcwNqgB30W8iorfTl
	 D9lvS6C1ybRvF5fihDOpQ3EZZIjC3YTbpYCvJFeJDodrA63nxl5yE2yd1PvnF7vnhe
	 ucAhwiAQTNAGfXRzttLnhn24qLygnSJ37cxVXX1JI3Do4Soak8VzNQiD2a/NNDnVC3
	 1GMGwfbLUVTQZQyrWmThSdltUrGF/xUe2DHp0eS/ODoHgLNLP0gHIgMOfu5iZohj0o
	 sGe3Lv2+Em+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19C9E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647715364.19048.7713056498971224392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98acb5d8416bff40022138d5dec9138542a833de52fb3e9cf97135762141228b
Date: Fri, 10 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736477153

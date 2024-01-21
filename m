Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E713D376F4
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705851497; cv=none; b=oiWop0iMRExvJq54a6/sPtKZHqHOUtLvZPi+SFWUbBPIEiVZYdxBWy/SIkofCLhFpIv7vRSkIl7628J9ci6Yt9XL/QDgdkDDQsNqX5GuE6YNMeqJ7dbQmRJL9gYnMy4W6ZalWFpX6wbpZEPGKNgfG3ouCb5DxOVuEx33bJM29c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705851497; c=relaxed/simple;
	bh=H3sSM3aYR/xUtdTB6bwkcG5WRS6yJHe2ud83WHIXNIQ=;
	h=To:Subject:From:Message-Id:Date; b=Y6VGsKa3tG5JarENPIAIMIpdbywLf8uT/5IRk6eoG398nNFLhGk9h8UMR/xFq6/9oJ51J74pQWCufZg7tBOO32mKEvddIvhdZT/1qdsnuUgi0k5f4HONv+e1Os/VKgIoUfeSN4fm5eEPmbGhivGHg9GMKFmdaOSQf02woKxCJ+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6P4yS3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6P4yS3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA22C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705851496;
	bh=H3sSM3aYR/xUtdTB6bwkcG5WRS6yJHe2ud83WHIXNIQ=;
	h=To:Subject:From:Date:From;
	b=L6P4yS3NPGUeYGfJdOQYWOb1dZJP/PLz7xlzXy3sFV7vXKnQHpejiZ+ivS7NYwG7i
	 tolIz9rZQJUpT3hLPkG+qn1VkvZiZ0HMFKkuKVStuh5Jnt6YPQJRZvvFh/975hFRTI
	 Pke3JFXAZADeUJkKHrTZ3Xn1Z21Bb5+rDGxv7VA8hGs5QOPl/ToiT0Y1E73g0/l6ec
	 VO5oKQH5hQ8tcdgJoRDdLbL7AKD9jelBWSLi7FVA/7DpKacY7VghyjEKUG4nDGA6l7
	 NirWFDLEy+BB98yPCkzUpF/VNutsvM6w+7/69iyIFWwtUKTDst85xcq5Lo/3dituW5
	 u7RBYzunf6CSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B44C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170585149638.28187.14797566986248224821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224576acefb1eadf69f108b0ea2e221b575c2f5dae30940ee35290d3c1a7bb79
Date: Sun, 21 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705851496

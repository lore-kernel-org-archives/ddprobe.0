Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201842727F3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773813894; cv=none; b=uPDljrUlaqsKgDJkcgMgR1yNNGNuon2JMEBPphUyeyZeLRndSmPudn24qsdQxi1vmaUH6ZiUVRc8rbHWt0toknL1oUy0wND6niaDY0rKhDv4iHP+4B93FpK+/bP/sYsiauBRRBYZJeTmzCKgDlhyKiwv481Z6mO0elWqWntE9VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773813894; c=relaxed/simple;
	bh=dW++5w5xBj1TGrTZnMdyElPD6KobNyPYXF43VtgY3GU=;
	h=To:Subject:From:Message-Id:Date; b=DCm2uZz9PVacDFknbXJsm7k3fkvHnNtPN2uuKua6MWXLyFzGeiwWGtYn1/HwbEIyGI+aQk5TnMaMGs/4wh2IK829QQ5eQgH2HSuNZsqEQLeCNm//VJmaxzZG3gHRvPzCMi5WZ0BFnW8g12tZuuLnJw368sdewslZ0gOzVBKqQLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS5rOjuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS5rOjuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0C8C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773813893;
	bh=dW++5w5xBj1TGrTZnMdyElPD6KobNyPYXF43VtgY3GU=;
	h=To:Subject:From:Date:From;
	b=rS5rOjujMD6F5d604tpzSP37PjlUKncXduQpAInjopWFZynO1zWkTcATRzhXlbCaU
	 WNIm5oxJ4hGLjQAXz9mDQjYUvB6NN6Z0dKdXQoe1fQGjRe/VXFf83KKXY9gPOY4vsf
	 W6NOe8oPXUlfqHYQ/EAQhE50x+Sr2ZLhb4rmAoxZsg922YyfvO89FgjbnuHE8nojVR
	 1Dw4LtTG4vvWvpn2ajGwqZPo2X+lmvrME1kj7djV2Cjykd9YmZ/0bgA5FqubhT9bYm
	 3jmK2NnQ6zXZRjL8kd/sowmkFOHM2+1IYEUdZiioVoaHSsFVr0s0MyHEgJm4t4cIrw
	 7crOIXD1POkQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97407FCD0B4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381389360.30358.3872079341209769654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306b3863a326e1c865a33ee494d1203c9fd440c6a22b197aaeba1b6ebe3f4d19
Date: Wed, 18 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773813893

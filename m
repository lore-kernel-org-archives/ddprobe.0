Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A0EAC6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726692354; cv=none; b=qU/vophQ4PiH56IV7GxKUTJ671050Er4l5y3M8PQwWM5e8U9K6sj2i4D8hdcMWJOgneivAGerVWY0BuS+CS0RBVKjOCjr/QkR6u1KApSl2mj27vgMdigtWatMOZrah7iQtV/jbB3S4REJoFMmdlvgLjAonuolM7tnVMAohPF/oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726692354; c=relaxed/simple;
	bh=MY7SNoyskD8WSnvk4uTgWiokyfs2Y/69UtnbH02/8q0=;
	h=To:Subject:From:Message-Id:Date; b=uiJFTEc55aDJ2wf/+sQ3gIDfl+zxexM/uquUNdRBcemlbbpltI3N8vqZnxw6Pwk3ssrgW1oAVhcPirhnpx3p7anRYqvKYFutpg8TUJFG2/V4cop3HU+JsZ/ojA/XztaJhZl7ZRheWsPxl+/z1IM1ECaEDXqQkyirEMFi3N/QTlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6E5w1B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6E5w1B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF8AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726692353;
	bh=MY7SNoyskD8WSnvk4uTgWiokyfs2Y/69UtnbH02/8q0=;
	h=To:Subject:From:Date:From;
	b=M6E5w1B/IJ7w0x7pbI1vahVfVepFbOkM2E4LQSNjuQDnkZHwxjIz5T2a7RgUGQIC+
	 Ad8w3nKy6ZcO3u2Hfu6JeVr/4Y9+nBNkeGn9YhxsP2xEG9be5bOpzT7NWtXR1I/WhJ
	 lMsGMLNNfUG6BlP+wadPSMZu47PwW/TvrRD8uOqMkaVAjFcpE8kjro69kwiV2tmDBN
	 88f6Xik4mbRPpbqzPBQulBoQcFe3wr8mSour5DLm0PkTb96+edfl+z5jRGzo35R/BK
	 jrm0xTBmPwrK1TjZYh8cxIlhdWWivphUuTENHBLGq9ktbW3Sw1Yt5x3WPp8dvAA5+m
	 FgfoxKUgpKX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BEBCDD556
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669235359.1145.12843309911119769812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703b84fc60be60087584ba9f0c2cee7965a340e30af6e4d81dacb56e49611c9f
Date: Wed, 18 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726692353

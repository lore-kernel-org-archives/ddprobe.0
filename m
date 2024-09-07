Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D98B127E01
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725706554; cv=none; b=luEJQKhUmI3NdGes3GNRMneXJrPS5iuviOlC0UtTb/Vc0mOzmBCFJwMdnJbywo/3mHErrKQn9Dh/JaveGFLQasNC21uxPdKqMR11xLzVJXygZ9j81K4h7qk8LqOYMMvDrt5N4Z7paj3FXQdINOHXfSf4z7pl6ZtaoU9Z5d5K8DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725706554; c=relaxed/simple;
	bh=KHAa7u7c+fKposgEm73nOMFX26WPRV6NHHPCwv5YKGM=;
	h=To:Subject:From:Message-Id:Date; b=KfWajsfx66pEWZPN9IDSnKXydSyaOzaJjHwzsfoBrWDi12i1AhQ2Nuewi1AeOHhg3AXSk22X/uPFneohsbBYAg4p2rryp6Bxt0rkS/XcJszKH5uJNbi/QwIjj1GHoAXw0MB/VOoRSLgX7O6QyMKW0Xn3392WEdEwwCzG7LMEhlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXxjd+6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXxjd+6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725706553;
	bh=KHAa7u7c+fKposgEm73nOMFX26WPRV6NHHPCwv5YKGM=;
	h=To:Subject:From:Date:From;
	b=EXxjd+6s9dm+KjDtl5XLWX5j60QJ5/HxpXnNibeviR2S+rI/DRdsIsgBBkNUTCY5z
	 6z8P2VTHd4mSHLXIgd1RLJVrkt4w2Ve//+PyWwe2M4P5z2oNFwhMOiTOorkmx5aEp2
	 Nh7SZUbPyTCdb7qhru3bv2Rd4V1ffl85SUvbszyz7XrHfN/O8Cy24JKWvpqyBz9p1i
	 cgiYzNprDci/BEnQHOLxT90zuLqjd/xQwnA8TGV5cFfN4fkp62qHXfZ0dGzsMGbNRt
	 DXOFcAO4Hp1y9xFzNUZTM5MLgGMkc2iMsoLiX/qbgf0H1mMT8cQ2sngWyDlvaxKOrT
	 83+6pZlkVbWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90563E71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570655358.29260.7791197158507281583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6706d282f65a3f8239156539015e9237bbcd5badafb161e0269a757b26f58b3f
Date: Sat, 07 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725706553

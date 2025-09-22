Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104329475
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758515994; cv=none; b=Y+eGkwH6P1Mi3jPNgEepjYZ6Xpx8qP34I2HWhIOoe0atfT09wrcxLpbuhoI6T7wuBqoQdMlOFOFm+ydVRhjZRC+AQLtZ9SmTjzA+ryBH9v77Ji1ZftrlAsLVY/LiOscs8cxfHXPP2AK3ob3EKt8nuZA8skHmzIf+sHC7ya9Myv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758515994; c=relaxed/simple;
	bh=r+EN2S40ce06C5lb70kftq0XT/hPizyhPO+WD7xrlwQ=;
	h=To:Subject:From:Message-Id:Date; b=Yqv9Yprj8r8U8MmKOtukew9ccDb3N1M2JRtyt9czelWgaOpVhgNFUDI7KrMuslC0eXhLeFPFYF3d5C/1EavU3OPy0beAoGn/KnvOgs7OIIihqMQ+XaUNJscWiiwRvFfIAD8/QKVBhbx4trZb0f5/8i39gMR6uG9kCtXko4xLiX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgtOcyYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgtOcyYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758515993;
	bh=r+EN2S40ce06C5lb70kftq0XT/hPizyhPO+WD7xrlwQ=;
	h=To:Subject:From:Date:From;
	b=RgtOcyYhjI51CUO/ATND3WSqXmTX7P22j9zMvAR+NIpgiEGVRj31p4XG/P5nbMPPJ
	 4a5hDz54yW0+0TJeYcq0V7rSimnG7XCHU9wfhSIw8r47fK5mDjcNFeEtdRtzhsfp2O
	 ubyLK7X2o/N0BZ4TZplno9Ib0WoadH4GUm3dn7Z7mw4vRv33Q+oZfO+0xQX2W14z/0
	 +AGYJLiO8x/xVH95XEcPoR5X6qssJsVqsG/RWI0bIimU4NoBDiAMbzgL6ooDRddd37
	 Mw8WLYilUF1oUwmCsLOulr0Bew81+ltJxmyigsY5s6c21+x06Dk98/3iNf0FI//c0G
	 E+j03uOMZY9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F338CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851599357.11351.1225209974553852998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290629f307152cce24ead16b41025c1beb3547e4542374d61550c32a3e50d912
Date: Mon, 22 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758515993

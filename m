Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3749025DD07
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741726134; cv=none; b=cTxAl8aJIilkxdVfHmKDfT39236JPfmAtptjj2LYzBpvq+M4vysSb+PzWaMnmP6alxM9+GU2E3OItxSBJSHAD2pYQRw3zBrg5eb0flXq0VcwXueDAMJYZcvoSMPQsVIzJ2QnstXCtroFnNg1O+vZeJM9bbGV/sqcdUg7FknYKR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741726134; c=relaxed/simple;
	bh=LElmvr3AulzGd5vu36zPLAmaJU18ieQVnQ6sQ2HsyNI=;
	h=To:Subject:From:Message-Id:Date; b=WYuhkrfGMl1OYb2aTLU6RQ8dKzeveskr0ob+NYcVIN/Q7TUZfvU+Sb8KGbk9yn9KJsj1gevsrTWrt0jK8u+7A7PlXVGfNwAiY/JX4mlKAErWKg3Bjkdlw3XcVVSQUSSArPBoay9vowVT3Add9hWdEnZVdkwIheazqYU628O1Iig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw/rHoZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw/rHoZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB04C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741726133;
	bh=LElmvr3AulzGd5vu36zPLAmaJU18ieQVnQ6sQ2HsyNI=;
	h=To:Subject:From:Date:From;
	b=pw/rHoZCHkf4ZALDJOIEmqFdIo1opmzMGjstH1WcN2Va7ZibL6g2VGxrz22l+ESgj
	 AmA9P8VMfM/gOYi50B3HjccGqM1XEhhppdqQh4vkc5q10YpnYYu9roGVJqUO+k165s
	 zE84c3i0kZVUZ4tR9WXygmTqXVnLpIr2gBHagiK9QcEsNeauw8pH80/G1EzYw7c9nv
	 7cXmFt4T7aQYMxmaGjuY8CnrJFRc79gmo2hs30cbJCPHodtIffbZsUhJ8hmqH2ylZz
	 uzHcbbcSiz9WuHZe9BoiIfrpP1gy3cpXBMx3tcekOUUBVhPza1LthgY4aGf8lDbxlc
	 8/XGEYF15Yspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96233C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172613360.7299.3378261102096925728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d533d9d0dbc38b3a75c97bc1f4f054631ea01716f66b5543f4524f0d98ffd3f
Date: Tue, 11 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741726133

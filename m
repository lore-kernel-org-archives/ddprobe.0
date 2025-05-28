Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257621DFFC
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748468994; cv=none; b=HmgxaQH4qjqPhn3yzJm40N3WRVwo7U15CNHBbP0qULtECcCnag4c96lghHtZ7KjXjfy9kFs0NXS0q9pQt4pIBU9Yf9ttkG4DCDDBPhPZRjNPlb+1hUDZZcK9jOz/iMXZS1vIBoHWjWaUNc7YCVu4Vmcf5nlVOi5YF+WcBWEU4cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748468994; c=relaxed/simple;
	bh=Dobq25ENaVOr7yC8LafpH2quRY7siZdBj+33nWRAOdA=;
	h=To:Subject:From:Message-Id:Date; b=Yaop0dh42cf0SDlzsEShx1qJvJH1ELADEIlwlgi4uOsQ9Dcz9+QBU53K3nFDyNYsiuvGI5j5xwndeDei6FqbczRJAyMDqFykaEwCLb+A/OD7mjg5rQ8B0Ysl76T3BuhynkdYnQpiAhb7azaCxzMteyR1GUFBOy2QT437eft2d4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqde+ZEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqde+ZEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748468993;
	bh=Dobq25ENaVOr7yC8LafpH2quRY7siZdBj+33nWRAOdA=;
	h=To:Subject:From:Date:From;
	b=oqde+ZEnG4gsGed0RqxIFQ1opB46J21xgy7s26cOpVUtoz7KPq/lLdVz2aDdiTDXA
	 N0tq0ccGXcPOlnNZK/t03VJ0T7C1red0UuzKP9zKptjeyAQrIe0Oo5L6rsCzxmaiqj
	 Cz0VHOJ5D/CPeFU1KI9QQIrIMBnL88XXIucDWc+OAa9QlL8a+tzONyIDw2UjkqIKAL
	 qMJb/tnZAeX1x5eCuLWPMcU1MKxUq2l5+CqOVfwFuG9f948z1ngLX0YZvxY7jS6804
	 kGaCZg8NySvRMDDnV+oXs9GDWU6MGyT/Af+hSGf3u6QSj1Sxs64+s3a6ZlRyzFbXBw
	 uDvTSFNYloFUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E580C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846899357.14729.2520790315675187484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c58d6bac1a61af9567080d6a99f458711c4825f2f8bda182f631097945aa247
Date: Wed, 28 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748468993

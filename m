Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1685876039
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 12:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708690698; cv=none; b=g7303tmU4lCayF6mpJvNFCjxVEROYMmdt5cO8Dy+SQVfboZ0+hFhoYLmJtL7rZ6B3uiuIzMzm57APz84pigrGcmj6aJa05vyXw3WO3ibUYOWS/YnlWDqAiZdJvSuKiZreLJvai0PdUp01afwtpCvSke8AU50HXlYG6JgrK5qPgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708690698; c=relaxed/simple;
	bh=0kKz2kM4kmzGchoGUvunlSiw6GL9WeLuzz1GSTzJom8=;
	h=To:Subject:From:Message-Id:Date; b=UTR0jbHnpycgyEC4xdtfpiXlbouaaL7VTUICzA6oxax+6l8xaDwC/zZAjad6aSy0+8Nb7YR1UyK6RVlqfte2n/oENMhOxyEMjdj6Rw8IMtUbXAzrBqK5WWsNqFMROkhcEKk3FSEpf08Z4go9r9Y9kR1JNmRPSfJ3FHLcqi4xs10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4i6MauO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4i6MauO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84741C43390
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708690696;
	bh=0kKz2kM4kmzGchoGUvunlSiw6GL9WeLuzz1GSTzJom8=;
	h=To:Subject:From:Date:From;
	b=X4i6MauOBk2DiP6mgEYveo7481bpUYqHbYAAvIX9YW/GaBq6y3MPIdSBnw4s2eHdC
	 o72LIhBBsbidqzXhsavofP1OMKpOiVPfx378cFORRzQXxNMMi80x5K8SluHVOMZcx5
	 JpEsBBqtdYB/9h02+F0/Z5a8ATjK8shZGaE+dW5SmTXZGpFtac7Y02xQccgbSzGNbv
	 BH3fWed8I451NolcIkqS7KKrSpzN4XG1X9CWtHLmZ9WVlHKJdLSYTQ0oSWThr8Ao0R
	 hA24lLqengbdW6wuMo5zbfGFVNE5ZfhMaAOWcavA8EJPQPSvZRWupQiec1eotS6/jY
	 7+X5+iI29bvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2C8C5478C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170869069641.2819.11937551212836776155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af6c135330377db9f6ab0fff49b9071732e8f3a6105734e81d1dd219ad20fdf
Date: Fri, 23 Feb 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708690696

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1486D21770C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752222594; cv=none; b=fHSvXhxmJn9FNXW6K230MTwaZChZen1BmE6a+A+9E3oYl1E8SMN8YK9P0ZYJwINx+8bQHylMRgnti3UHBTur33HS7NJM0I8j4VUxecLmwT6y2UGif5Ad5+QC+4tCXp0PTK7uuigvI/JziYJv+TAWEMQf3jOfTwsn4UNz04Sa9Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752222594; c=relaxed/simple;
	bh=w8HCJzjIWu744aWtwZZA4ByKm9QXgEL367m9V9iro2E=;
	h=To:Subject:From:Message-Id:Date; b=Uau5cvjdTw1RvLSQEnTZ5jOZR51sJ6uKO9f7V57CUD+h27bjWpBhcCEkK4kAwHTCYYOEd67ETpLcoBJ1d2SZp5N2NnH+c39Ur+Font4O93RSl9BijDBBQt01ZFdcljlEl/rgSvRtTNFrPALK4P6zWDcHdmYgAxpNlJIHr7nCCro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoEDkK0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoEDkK0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752222593;
	bh=w8HCJzjIWu744aWtwZZA4ByKm9QXgEL367m9V9iro2E=;
	h=To:Subject:From:Date:From;
	b=AoEDkK0I7KCxSm5ZRAALyJDfIZCVlwwRVI7e4PhjLZd95zXcQcQS1weUSE4wxrnGl
	 qWyIF3XGLsGhAxfXRGgJiuK9R5io2g1xaQuHW6Qlzj2Q3Mt8xHOgsT5arWkid4JOtl
	 eGInNvutjhdXcOTxskksV6R9rddoGCyiK6zcw7wEkk9BnUeppF8XNGL1r6lHgHyGLr
	 rBuKKs61wyc7CMk1VYNRpueZPxuWB0xPaYBgxj6KbMKozjZ6Kl7QPh9wcFmC7e74CI
	 bmgHcYeIvSmpLTGZLjFe7KmeLs1CloG/evUEN/WHUqssvpiSxUIny2H5CKBSujqbi+
	 Wzek6vNxqkxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063DC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222259358.10753.10347604898609404759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d493440538b47d22a17b6971e6976a1efd4bbffbf65ad5c2e41b1c405f3da6a
Date: Fri, 11 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752222593

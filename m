Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4452192F9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768664634; cv=none; b=cqbs0UGqLhPy8wQ0YZliPfgNr86WRhn24ye5CeOzO2SiAVC5AXG3QGaN+c68O52xmmVQXcj4CkuJwU20hmBe2cRnemwAHGaFXj3sPgP6F1DeWAn/566+LJzFUKmlMErKtCvKmtSMl4xUJEL/ayhjrfz9COa1eqIaRWuHoL42Rsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768664634; c=relaxed/simple;
	bh=292KHHuawEATkk5qJlREn4qgH+M9sZhkNelfkTN6ESk=;
	h=To:Subject:From:Message-Id:Date; b=oG8f8wy2igWQJg3lg/l8erKWpYmprZzbg5QHw+aMUixauBHQYYshH5eXVlL2zjkEL1++UJb4hS4wUlT4Y8ju9OIMZH6lCtz12qsvOqkD2D5MCCqBeruKugAkmWcUbQY1jmabMtO5vIWT75nU8Pt+02/3C3wU2M/6e6bH7UvWmew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN8PENr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN8PENr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBFAC19423
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768664633;
	bh=292KHHuawEATkk5qJlREn4qgH+M9sZhkNelfkTN6ESk=;
	h=To:Subject:From:Date:From;
	b=aN8PENr9tc+Q7DQ8OVmlqIoJUeYWbA2OLP8hVVplR2IMZ0W+Jivgq6BS9xj2litxy
	 jp9DJWM0c/JIPJ4+31GLna17s6StqWpCYTBdedyC37gm6jOGuaOCOhutDxRqysih3f
	 kzldq3CbnrhdzEsVURWFc8gKChwAlbqxqR9WNYIc/fT5jhnh1b1Bg/4hy7oo1snQbf
	 sp29yIcm9Cl4/whKcFQY2Vd+83Wda6+EbEc81PZ+ZX1cJzpcafbBjcXP2xcHaJ5Wr0
	 6wil833trmcEqu+ZGzNUvTbfFKCJ98r066DgZZiS6NbmLR7n7VuObIuW1RercfxDwQ
	 mRqdfAr9NaZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698EC98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866463359.9358.13800185660856021916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d54dab492ee9f253b090a2f03c425eafb715c480492b906ab13a875d38892f
Date: Sat, 17 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768664633

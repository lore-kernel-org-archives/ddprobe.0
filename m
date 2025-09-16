Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA62D73BD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758027594; cv=none; b=EhHbuURNH12ii/cM5lyahe2SL+vlhVwwV2YpdFjiBkNPZk+yVu38GOVyeXpIdDczj4tGMbtHHhxdvoR549e5WpzRRZWDoWJNCZe23F4cWZ+lrYP5sEYd1nCYHx8PiVihlfGfbsXY8TUnuwHv9O4liwz8IrVEeFNdZs5FcF1IchM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758027594; c=relaxed/simple;
	bh=mnPSMyIXAnuOpZACZtMi5qtrohQLTTadg8X/8WQLIOs=;
	h=To:Subject:From:Message-Id:Date; b=qJabzUT1xi8l3WFUCx84D6dzoxtXN22pFw9TW6OqPXCAcyJUSdDZUjsAjxDSZmZSBckZiFYoON8cYeb9cnVhlWAjdHsS9vyngBenpBFNRT4tHfm1hTVLl9zmJmrehgSYwLXcYEkek6QZYsWphjAQ4jSvrdq/V5PkrtB3ujjI6QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LobgPx4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LobgPx4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CDAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758027593;
	bh=mnPSMyIXAnuOpZACZtMi5qtrohQLTTadg8X/8WQLIOs=;
	h=To:Subject:From:Date:From;
	b=LobgPx4+/5GJmTMUOQbTlzWnyqRztwjh/zwciIqlRtI4hC+u69HsrOPNSl2KNKFhR
	 356BHr5/lhCS5fH7sSImp45P1dWVBSTmosXyJZRkprnG06qbJg5CQpcAxZ9MCcI/uu
	 WzjQXfeMiBkD8gdsfGa796/plJ75mogQI0J0JGs/E3kwQKnD0WhfDLUpULgVYAgX6f
	 ipiv6TONz5tKflCKL8mvvO17BSjeGgZMaUqqXgESf10LVRoJWSoWsdJaWM0jZm0XLo
	 5a0o9CO0KGS7EigIZYW9yjIXeVbUFGxwyIEFEc7blytFRHkHHaPL1T5V5dVDbE0auM
	 2NVscgv6+66mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1ECAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802759357.23920.14446914630140613875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5ae7d9623feee8a45f02539c7e0a8e71b710cac4c8ee5c4a7e3a3f1bdfd0a4
Date: Tue, 16 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758027593

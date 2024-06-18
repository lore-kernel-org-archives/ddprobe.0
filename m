Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A4713BC35
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718715563; cv=none; b=jCENZtx/FCiVwfEr6aAn6D2kunw/ph+C+dsegZO54aMYun9QFhekqDy7CNEo8rExJxH4Hw07pyqjhKn1ZP3d4/Fwku3CjXR9/biHjoue01ZvUX7z9FI4zYCO1mU+ICNKkaj2h+XC/gcB8ixGNcFt+R9L0e3G9ek/0kCXMNg91is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718715563; c=relaxed/simple;
	bh=ppsy6xt8VIKiPNXBub71vIFBAxTRWSEBukc2xP6BKgw=;
	h=To:Subject:From:Message-Id:Date; b=CaUZl2J++3QEMqT7/DU5T6QsxQksGaPXnRK8XfpPCtriduDQun6++q6Mo+screGEmpPRLle6BvHw1kwzLBQKT8YH2hqDz1Xi9KIWsuoBNyxamX/aSwWroBYc7hgg0cGiARMPYzApvmk4eM//BezeFIpN/j11tMpqGdsZPDgW59g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ97PNXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ97PNXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DFEC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718715562;
	bh=ppsy6xt8VIKiPNXBub71vIFBAxTRWSEBukc2xP6BKgw=;
	h=To:Subject:From:Date:From;
	b=aQ97PNXZdSkYxgAQucReogRCooO3KGSuIXdvRZ5Iov3Fmf25TQjuWCRs1UzViTvZr
	 ZW8I59Dn83xrg1qjtM8ai6a8jWMrrZKvVYRnbHevFWxSmGt3Iig4RlODyrvimgdNgV
	 gOSdFW4VimgNMZtDEvfX/9ZujN/3kJ/CTYkmEXkT7v5IMEpLWXkFxD5BphfIEtWVs8
	 uHuW09mtPe1ILAqPr/dJA7mqF6rUG48gYi5/8smgRs6uwmUbpLBmRnB0XJAYOFmebi
	 TejHBnj9wM9zPuTlMjrKVvPxo2VOTcp9QkjAV3pNS+efmLWSN9vln9HdlGv++uBYFt
	 MVDCdcxkIsUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F3BC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871556278.25853.12340270015659676254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4e96d0ed8efce13c4f4c4dd552cf4514a1b320fdfcb1c0a73b0dbbf5eb41d6
Date: Tue, 18 Jun 2024 12:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718715562

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0E1B85CC
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747523994; cv=none; b=JVqkPmPrELUJL8suWY9bEwPG+yui4IBv1VaVJ/gcu7yn+AP6e8yLLPejL5yrlcV0zjgNCwFWJEy3P1HaUlPucW1sjxFf/2LWYzjGRZBMrE5wNcutG3jjPCgsooexJWTMq2WIc7qvNwFnjFtsg8uL3twwGGVyd5b1A72/NUIu+NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747523994; c=relaxed/simple;
	bh=qnHHDToghfpYbjV63uNfVtTTAgAXpqo5dZ55lxvcI5s=;
	h=To:Subject:From:Message-Id:Date; b=Kwl42+7uUF2DC2TpeRA9yqThS+DXw+uieevpoP8ZPalNZV+QJ34Ve0QTTKCGrfnA32tHLj+fvJoB0zAsSdOgM5NOZDXqBGhODiUJUHS3ZGZ6gkYZSWoYLaeTyNSNqlyI7aK+6UxlHTmnB1imO5gjTL4Mv9KlfJHwBeDmfFIPSIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FivBDGJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FivBDGJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AAFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747523993;
	bh=qnHHDToghfpYbjV63uNfVtTTAgAXpqo5dZ55lxvcI5s=;
	h=To:Subject:From:Date:From;
	b=FivBDGJLsWYNgSL62pSbU/n4rbX4QabZipbPQpLBorVTsuPxDXYXkfPGkQMNisVbn
	 2B8jqtweJ7No4yUEwmSLAxfijg51Y4wPLawu5rQJUH2HTqChQBA7K0+fjJTxnGUSkF
	 gTj2KkkA9icOfbKTtxWXpbej7J6VEh1V0xoygvr/ju/qSzZ6RSdPi/XWeO59oPIt5d
	 b67gpT7TQxKyr0aBxSm0ipSLWfCr6moar6735h3lAzE9WN7siwyVCX2wX6qsCAE0gW
	 7Go6vFFaHeXESHrkbI7S2ohCpsYRwQaVsICGVnuwbsBgU+Ok4oqjAnJfEpVZoVBzGu
	 XSgD/ZXWiNqaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94527C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752399357.13005.15309094712105907130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4007f9450e578a5e7ce7f3f1bcf7628f645f839496a97140ebd1722f7dd93f
Date: Sat, 17 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747523993

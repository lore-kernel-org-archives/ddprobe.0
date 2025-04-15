Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAF7221F2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744739394; cv=none; b=BepN/uW1uud5ae/9uZ9QUudu6aCIVQQ9NXNtAKjO8P0MmkcNQei6Wbw2Y/4X7/zxBZiG+FIB+oO+DC/iXVpzeXbsU9dYQbVElT7fWAjHpGAI+JKi65ssWntxkKV8hv5fi9ff8quEJpHd7cxczekBU8pgzvk9TvvwMwFG7qWqcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744739394; c=relaxed/simple;
	bh=tOdHyqk5ZIdCYskyOrWYR1ek+qbyvcFv91hi1cSBRp8=;
	h=To:Subject:From:Message-Id:Date; b=HOBAiruz+IEEzoHlmpTgnDtbaxTdV8m4GPEx0WVIK/jrRthrY2m8m/M0qm6GxRdS6CECJGXBGPCSjqnuWJZWSC1gslpdOzwhOKjOPI3syPIVqUovfbll/XgrsJ/R7CC3zK/MEnPQctnzYpkbryiu+j68nn8Ngb8pEZyYBM191qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSOEaAan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSOEaAan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD80CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744739393;
	bh=tOdHyqk5ZIdCYskyOrWYR1ek+qbyvcFv91hi1cSBRp8=;
	h=To:Subject:From:Date:From;
	b=OSOEaAanrndVi4tj/Mqb8Z9GoYAac5Jwb61+ycGUT0ginnJe+Yaf8pdPqHPNsBsBF
	 5XJt++Pe5eHIz4MuQzstmhNZK34rS3Jfu/pjWIBvGNWE+KpAX6+wq5LX/7Q+Q4/oeI
	 TEI8WnomSuXXP8y8FcMvHJ5Q1IewhrPHbh0ie9+wqRyWh/rYZNyUqXO4r5yga/I5Zp
	 HjeOceuEja2lnl5eL4q3FnjqzYAEkI77qneXuewgY67V/M5xDYh+mns4EHQnANBLUV
	 IxOwCrpmKZmVOQynvczQRItvzOsIAXlpu5/8X/UKto/BqvwjEfokfBWrX5hJ4aJDPQ
	 BaPIQp8Shay/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96500C369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473939359.9982.9198282114929245143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d059d414de6a08902735cdd144f83781877904d55556f0bc23a57ba5112d84e
Date: Tue, 15 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744739393

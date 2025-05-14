Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D44928EC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747187394; cv=none; b=qDJSN67QWYXwNvoj2ary32W7XjTPrczp4nRIrIFJxLi4Spvd2CsOsBpO2HzKZWDa+5eulsgX4WuiBufR62YEw+fwTuPkLaa73titvYz2jGn4K6yGp/KlZBx1YUBsmfrJJB/Pro6uFler1smWqbsQ+58NEumkjjcaIHTswSNdrJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747187394; c=relaxed/simple;
	bh=3oVIDFat7UvkQlYRBxO7jjwcc4l6+YgoQEVY9bq3QLQ=;
	h=To:Subject:From:Message-Id:Date; b=LrxedPwkimgsSDPtqjB5rgudv7Hh02SObRJ3UcggutdMFeHsau7TCSg1jxFHSQUGU/DV7gu3081kOPeBnusMrgiUeDRcCMtXhiTSbmxXg7da0hYyZhORd0r0fq+sPx0xrL9c7jLZugDjp8fL4NiVbI9hKrsoAtmkbz4+EjFYB1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1JkjujU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1JkjujU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC48C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747187393;
	bh=3oVIDFat7UvkQlYRBxO7jjwcc4l6+YgoQEVY9bq3QLQ=;
	h=To:Subject:From:Date:From;
	b=L1JkjujUpG8TMnBS2znFv8vHn7a1hPzucJHOdL0vmmb08rovkpe+VoEKHwRxCgQUi
	 P+IuamnkMhM0T4EUrCVGmh/dMixyMDOZwksnU/CfpE4qpAISm4zCtkBNAh2TPKRqsw
	 Jj8iMlkz0Sb0zg6z8Fy4R2+sBQuckbgPZQhB6X9SheRaJBa53gEJo5h9osM1mZnKNZ
	 a3a+uA7hwwi1/9dftcCzrpzPUKD5wCQxXD4QtJpabO8kFXq+L3VRbkCHvfwsAfWLZD
	 k1FBnR3qI35hS7HwWnaA92HYOXRHCcxyhe6Fl+Fyf5kWcxCEDodJS56OS+GpxdM6PR
	 ztVyqai1dh0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB06C3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718739358.13168.4468834124863283224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1815506bba6abf18aaed06d68dcaa66e29c40f47a39dd942d55b9d5b6624368c
Date: Wed, 14 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747187393

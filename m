Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477564C76
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738759554; cv=none; b=WgYQV16ZOIGolVBapAVWfusKYvEBMB8lS7tAY5W1p+skyoLm0TWBjyfOtlpuPtPscMadqf2wyHrVcrwrwyVjeqXsGXLIlsvWLPYNib2xEpMS8yyALteCjmOU8QdR7fttdFsqb/3dbHU6uLysLKKwOeBFIzob/ReUlJoSvBWP4ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738759554; c=relaxed/simple;
	bh=IkX4/8dJ42lTVeOrbljixiJzNzoFwmnV9IfXbrpTQp8=;
	h=To:Subject:From:Message-Id:Date; b=LN84S6O2ocAFA3FCGgXFv5u1Kct4jdgyaF8xZr8w++vhds1oyrS6ZPfqKGnvPhWRPfP2lcZlR3HK4+B0v5Qigcxnm453A/KeBTqF63G6fFRG1CtYa5e7EUAqo+3J3acmJmXQ8O4qfbkLTP/78BVdjusX+2DfK9eH8uoySbblsW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y86bu5p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y86bu5p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DDCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738759553;
	bh=IkX4/8dJ42lTVeOrbljixiJzNzoFwmnV9IfXbrpTQp8=;
	h=To:Subject:From:Date:From;
	b=Y86bu5p6nd2YlAcZ+azp7iUBl2QZMf7L4WdOz99nzTFMxW9XMbpMQG2YMYM4AaZWV
	 pt0mCw8P4oZjIRB+BhPwDPWDwATOosZfkRIKgx6uhfRjWHsc1/uCIIrILq1jjJsdqi
	 A0weB/ubZFBS82XEbN2CntH7utI7eUTZCl3XDZzldK8o4tvUopywON7dERg3Sxh4hq
	 W/q4LSB08c76Qgz3Q9lW2vlANHtIBi8pv/gquKvjhDbveMxZVx+FRo6bTvPfP/kH9A
	 2Q10uztFwIuBrI0ggzp341xB4SmS8Xz96Bodgbobgm0Qjr+H6JOGRGxd9TIOIRJiwf
	 PuHme4e7TmE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9476EC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875955359.17841.17018735043378697607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba68cedf588ac4ae3c940ebe361dac683a1d60f2b57e62a9f38cf13165d012d6
Date: Wed, 05 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738759553

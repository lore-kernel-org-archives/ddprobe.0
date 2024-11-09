Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F036233D6B
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731186954; cv=none; b=n6qc8SuPnivU7K9ucH8lmQ/tEzIgJkEFJziauUrvLdMq9Ogq4DRZrPyI71LatFwtwOWwwY5ohtdrl98pP/MF+klF7jQxPIiLdGt8MOy0ZLAwUiLfc9QPIRgR14EFVWommSowrby11S5M+PllXEjAJlv2GCA9InnhddmJGncSyl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731186954; c=relaxed/simple;
	bh=XYFPpzKX3MfAf/+VPGB1zLE2hsFAsIzuGHIUulW19BA=;
	h=To:Subject:From:Message-Id:Date; b=FVEjjooStfuPEmYLh7SeC8KBNIxldhikqNTix2Owm+YFZhL7hgDJDkO0CuLxbRz7TYiDoMaXpdAsygh8IPgm4W9uIO2xOkwGC7evF2LQLybahFwnZr40xbvWcTujifSTiIL/wuYT64vmvNpi1YVOoZLwQsGxS7MBMf+k5LPDuFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/MqDKq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/MqDKq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FBEC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731186953;
	bh=XYFPpzKX3MfAf/+VPGB1zLE2hsFAsIzuGHIUulW19BA=;
	h=To:Subject:From:Date:From;
	b=L/MqDKq4OL28GSl6b/9yAT0DuFc+wu7gE8LoffDXQyuY8hOPaYS2UQHKarmjmtz4g
	 5w9tFgNEHMbzSBt5g9piWAcDaRSPrF2BCJ1c4GN+olnC8cQ0uMpDYqeMnMT85KXBfN
	 Of7d2OLnFGmC+UGQ/NBOTqXnHR4Eo5ujOgZISWho5wHumomNwbogpENmKXGisnNWE1
	 47p5xkyfjDp4LUl2f5tsXzmXUwBm+hYCt1UGKTi1hZ/YwXs2TdKHyttTvO0Lyw55jY
	 6c1DRzumsoRnBHurBS+xk2rneyuPBxyIX//nfd4Vx8cZqmdyD7yrriw8XBlPV6/znU
	 3Gnv7lFdSvY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0672D5E374
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118695360.8065.7698584035139592325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672a60c9ccf1be639bb1f5f034d5a2e5df3f43397d07d26e865ebbbd89a01ead
Date: Sat, 09 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731186953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B5D277CB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757063996; cv=none; b=KdsP/ruxLvuPq/Zi26e7or+5p1WblHFG7jtfVM5Xbwa7CZ+Xho2Wv1TGCe4uJ/4Os3ksOGZAUKnfczKVnmujLI3/e9v1v//u0RcE/9AFe1FE5yFCbhJQocC5yRFQj6OLHtgIYAC1LK/s/VZRW4lYgR3sfKjTDi5yjbLrx4cMQKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757063996; c=relaxed/simple;
	bh=TsbxYm7nDiJVVPUYlqyNZew6RJymdbh+lqkjpnF6/kQ=;
	h=To:Subject:From:Message-Id:Date; b=P6aUY36E+XekMZxyUk/e7Eqs49x/NEbfmeqOK/Be77m7X/k0+Sd3T5LKmPV6GNxdho8Y/DmVwZ4gSM1/xm6TCgRd8DOVXl2jXsrBEazO9M8OZHdb4KSBKH9W+nPeNM1Us3RLCgDq/shEDQYUjPAW669B6XHQCDsjkZCibEvs82s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fstaJhXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fstaJhXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E36C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757063993;
	bh=TsbxYm7nDiJVVPUYlqyNZew6RJymdbh+lqkjpnF6/kQ=;
	h=To:Subject:From:Date:From;
	b=fstaJhXO4a7upJO4M5bC0niwlwtHSUfDsaX/g2iUttjIQtiuHSHIQAmWxQZNkjh94
	 2Lb60RJ/ZO16bfxcHVM6xhWwXd+v9yio+pzlJZFBiZHsqgVQAgSrIVH03F4DAd14p3
	 9FLi2qYDCdYpCaB/GxEu86RPfNP0NDyYpXHRCAVuEgOSt9RDJpbPP4799eeXRxbRZ4
	 SQ53WSyyZmmjPVxfFMsOveLWJnMRSiBLjbzHpKVHbinMJXuMl0zaPTIlujXQRkH82F
	 1voz5NGrYpV3uZ63nPS/EPp5Z2GoVpCNTQ+rYK7RsGJJOFNqUrKZ9Ejotm6ZNGYsay
	 VR7fOcy7t12bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF8CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706399358.2863.408726032069223842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9487de3fba460e9602a7eb0a4d5f0bed0d4e9e827a03e4038c109f03ed61cb83
Date: Fri, 05 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757063993

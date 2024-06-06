Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20613DB8C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717711643; cv=none; b=Ga+3f3b1W2Tlqn8qtfvQ3G7D1mF28EKP68K6TyVJMaXsxxp9tXS3Y0rWXF2gGWx1XkvpyVByL3c3Lw2mri2Z5xST9IHELr4KpFY0odMl/CSRDYUGzo7FFHStt9C/hPzdHOfAdwO5VIod2QMJu9PR0ydHwgvW3BQHK9OzpAhAynQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717711643; c=relaxed/simple;
	bh=Ak31q1Nq2c1i43r6horEIvF6JeoAtMLJ2UMX3WMQO3g=;
	h=To:Subject:From:Message-Id:Date; b=l4d7vaC7r6WX828YdiliwBQABm1aThagS1GivIdnV9/+JSs/rQTLBzVVzQXQ2UQbTxLluWlvxYDnCAwx/2qUfG9juXROS2lyznNZZLcWOXB1R9qmcTEwC7wu9EZ4m3HkcUzyqux11xuRGZk5FGfEb+CWb0q9QTStgWHKQtvI8oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiP/N1D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiP/N1D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD60C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717711643;
	bh=Ak31q1Nq2c1i43r6horEIvF6JeoAtMLJ2UMX3WMQO3g=;
	h=To:Subject:From:Date:From;
	b=OiP/N1D66eLARlw4GRQ7hWe7uxrlr3ATI51BCQ6o3erNkYJHtG+LGf0zUfJuw76T8
	 kIk9i7A3kUssS0XoRH31IiYmIfltyvh+q3dQSrQZl7EfoSt7DOw48m+l0GaJzmtczA
	 bFhkmi9FfEcnwv6PqGD/hrV4JuBWh16SZsil/o+m9Qmdk7kiWvFLTLxpBh3JewW6/8
	 /rJW+04x0Q8T/d3eZxN6IH4K0DsbKjMeWjunNJMpffYqer486v1NZ9lTKthIKiRwa5
	 /BXFuYU6rNUKDhTYTwWCVnGa+9HwKuNRkL3XWPp1WyWyBeOtOLDDWZ6BP7QyZeF0To
	 cHV7DeVsB5jIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF500C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771164279.21462.6295223288141207554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa797bb563770a9ecc153624ae8e8666b6fae129496d6f5e5388c1107ef7224
Date: Thu, 06 Jun 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717711642

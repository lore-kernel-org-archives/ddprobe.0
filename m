Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2457138F623
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775679934; cv=none; b=Slc7lT+7r/9dbUzbsMtrWy7c4Yq9hnQDe1m1DajsZhNY7ILGq53s5baVi6cb5lubH5Ob8Rfz1ugTVEk6a5IlIfo8Bq4odZuwKBi2zEUDlKukP3PCvmoWTvIZW7fWsy8aC8uNCXTKQyXCTXq2dbxOvnI49Sir7KlkRXhMML1GdF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775679934; c=relaxed/simple;
	bh=nsRSZAshfMMVXy5aojjmlxVKZQhhY/z/nDwnFz1OgYg=;
	h=To:Subject:From:Message-Id:Date; b=a4yAnw55FuY73QUwFjxHD2YRuiTOBcLBOrCgp5YPzimKSgd7MVi/Mp+vSIkK1vKFaz93CXiq6ZfNfFgzGrKX07wSTtoI5A4hIH/zaG29Wnwb0RBvFOa2IUOcEMDhG+agZRdq0bY+09WxI8tvJsekHxhcSZT0EZKOhJZRxgtdm/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwQeWS2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwQeWS2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA79C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775679933;
	bh=nsRSZAshfMMVXy5aojjmlxVKZQhhY/z/nDwnFz1OgYg=;
	h=To:Subject:From:Date:From;
	b=LwQeWS2/EPj+lfo6IRj1IUTBG0D/crYLl8kc3AdLHFjoMfbcqlA4buvucYZPhj/T0
	 x6OkP58/3MCZCVCa40k9Agx+IWktlxcH8Q8miEx45mDbBji3nAYOzxOIPxmanAJrNS
	 w5lFpB/4lv6SbxbpCcSjMRrDPH4NwBuLgBwgE2/XyQwAr182ZOuty02TdlvIlhsf4u
	 B+CbT7cnRJTYR9JKc0W+UG5qhaAs/YO1zLnom5ek/apGsB4amlwklR86J+vIo5KPhR
	 Y51XPJmCYaa9+jK8nmqhcoSl5XN7TN4KsoAJvdQLJIcolfnN/dVwXzFAmugFREXaSd
	 2nvACDbK6mWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FA10F9972
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567993369.17620.322146063055927198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159599ddabc9b54bcce1105ac77155c01a6d98aff351e65ad1154bc1e8bc4bca
Date: Wed, 08 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775679933

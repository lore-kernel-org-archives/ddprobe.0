Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FAF39F191
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774452294; cv=none; b=qq+VueQb68ptQF5343f7dVP58EiCeFEsmZAC9InS9njr2UzqOwmXv5tb51onQsl6h1vAHtpfljUSJjhRpFTMzCqIzmFGMeYVkBuYPPeKCVB8ebMLziiEjRFCn6eWea98HaBtnR68Gel15swsOd5Xv3UPW+mRT6On+UdW4pG4cig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774452294; c=relaxed/simple;
	bh=iymWdhkfJEHBudCGvwGwHTNGeKve42vH9JNcpB3NKWo=;
	h=To:Subject:From:Message-Id:Date; b=mGebfRlMK3zMZBgRKYo0r70yuRaEiHQflgSkaWl0NlLrpeegQubSmpxnDIKQQbYorUgnbpsIbt6IGpWwxyaJfC520Dbu9IkWyOJy2pJg+lzRTK+PkJ2pc7tl3E8LiWEG8tJN2IypwfcgmDIVLjwVeR4FdyavSSuD2LA/LC7iWF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM6XQqet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM6XQqet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6089C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774452293;
	bh=iymWdhkfJEHBudCGvwGwHTNGeKve42vH9JNcpB3NKWo=;
	h=To:Subject:From:Date:From;
	b=DM6XQqetlAt81xzC1GV2iueVU6PzIfKCF5AWNwarlScH3DkQ6Aj5qSdjtXP5xZu2x
	 TNfzyRIm3IXvCgKT3C+L0ejcJGztI1Z8akc798OwtSe2Hj2/P/oEb2HcQEVLIsEC/J
	 6zya0crw2KRstRoOgyookLaLMfWD+6tMi/3Emigp942+GonftskfdBG+gOanCthdi8
	 ZS54etKijQ55XR47aCsKe7s3oHaqpHtU5lG+/3EyEe1NirXP0bVF5H+l6QtZQZBdpK
	 3iVOX8k4x/yNGSVBZh4+AQn3D/jL3xUUZFLtc95LgfqaEp2JLZmACCjYBt3mSV447X
	 MDcmAqJA0Nmbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB3109C029
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445229359.3118.10575557371956689569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8b32c309d9a8ea15f8806127e12dcca63d781696b6d9bbdc6b15971c08f512
Date: Wed, 25 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774452293

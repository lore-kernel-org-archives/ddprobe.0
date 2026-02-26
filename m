Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA1312831
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772135094; cv=none; b=Jqi4a4i8VXyVoa/wKxMbIkraSfnIwXQQRlmTgnFwhQPMk298KonrysLiwpzy0AFZVhJtMnCwBJIGDzdbZPoM1CJCYMv2Z2OwtH1+E+QzYUUxV/MxivznSVC9V2uCwmGuDpYD1Z1D3gvQ+5wIJ65UCh6Vtpm/1ekfGAXAoYwhAKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772135094; c=relaxed/simple;
	bh=fqE94R1DoTvgMPk/ZmDzLW+soPy5Ploy6nYF9UWf1Dg=;
	h=To:Subject:From:Message-Id:Date; b=BJiF2fbvn/lvaIewknxQd4NG5VeW8Po+H9m01/jvsFaSJPiH7J7ARke4/8vAIB7ymtqODdlFLopU/EJPrsDaKt1kqNPtW6TKQGMfgQoiK4d/lrEphw24x12GH4H8ZpX7nrH1pThkef1G+twpU4e63QNzi0hQGREahoTj7XRTpxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxDHOlJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxDHOlJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772135093;
	bh=fqE94R1DoTvgMPk/ZmDzLW+soPy5Ploy6nYF9UWf1Dg=;
	h=To:Subject:From:Date:From;
	b=mxDHOlJL7MQML5OBGD4S6zT3JGEUnh/YrEayjEJ7KAqIumpGd+aF50vPjzQI90eMP
	 pxrYU+D6AXgwVuivgm7XfzzeHV3rHXq9y7nEOeNb+ReaqR0LxXpyDYSZH73FyM6MJi
	 36On94s/+SaCycyqQchC1Wheb1r4MKqu8NPW6Q2C97IyPgVbd2COSu8rltnZWo55AF
	 fWyqBlus83TneAU5CYyNzRUU4DSfN6JRzcPiXp54OSFhjI0V/68HmcOZbpueX4TGXK
	 IWSJbBmT+W92XPwHoRFKYhuGkwNHzwrnXHPLAhCSYVRFfxtzv8gBLt11iU4Tt1uUpk
	 sYPwlsEk5qh9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9774EFD9E0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213509361.23911.8525763430688068833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447446b338513622dc69fb512c6076fb74e9aeacec1c29c1fcc60717b01d09af
Date: Thu, 26 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772135093

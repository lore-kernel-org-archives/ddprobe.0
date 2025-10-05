Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE3339ACF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759703994; cv=none; b=EdQ/CUtkqyS68ZtZd3WV9qROWmx6/Xzh9cXYw4mgGAhpEv3SinlRmvqSNt13kxFPQ2xkUnhskd/D+itmnGla8P1CXyD3RgNTD/+geB/+PxipoipIb2wVC62IGr5CJomEJvbgeb54DhWiR1Cd2ghX7iSto07a4x87ppCanL/YJ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759703994; c=relaxed/simple;
	bh=KkrrGC6A7dvKnCwwyMicfTC1XjedE/+hoBElgQOZqUY=;
	h=To:Subject:From:Message-Id:Date; b=k+VK8OYMHMgPxTPUskqTLjCGwJg/boVAfqopig8NKD4l12lyKS2ndnn3fl3UNH7Png5CQU7MPaWkxi0LqyVKFkDSVwy20tJ5kYigvx/UXZ4/9apiLXQTihk9B19wRGL+reXIYKUWq5/vr6do3iUfLzQeiBYH+tCYDlagx3c7n60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwZrW/my; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwZrW/my"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759703993;
	bh=KkrrGC6A7dvKnCwwyMicfTC1XjedE/+hoBElgQOZqUY=;
	h=To:Subject:From:Date:From;
	b=IwZrW/myi03Wf7ej1Gj5dZl42XBIhiXE3Qd7PNA0F9lcVfrEZRGt0A7ut37sBV9jt
	 ydgArRfu+gnHVkuO6Xi4j3+/iD/ToH1O9QrvQygR+RnGjTFm8U4sO+QxLfU9XkHOnE
	 djNt/D0ISZz+91dGp9Aqx4mA2AGHmcyxRn0JsNsjS9/xr2NW90Xc5hPbfiouYFk4kN
	 mU8U/9ybsfO6NM0sdL9Z1tOmC755HkvBt4WjjaFlkQYbiLWYCp9llivfKRQ0L2GYU7
	 KYWqkDBWOuV1T9lWccZ59HtrTufanadNCkihijxmey5YpPa19dysK6izrmTVnrUS4o
	 Rx2iRdZ6B7evQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359DCCA470
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970399359.19523.2127495311165426899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422988aaa1d8c1b627314841f755670ed0de7f7636ceaef7deff4c7faa0c38b8
Date: Sun, 05 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759703993

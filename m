Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A70CBA3D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759226394; cv=none; b=Rn7N5CFLmFzhayLwgvGjhUQm7jNQMUGS2FVo2bNEhrxLG+HAHaSXkrebYYk1KBttpJ3YxFadjqCuEw9X2u6hujgKQzMfWhRFEySw3UUkSCwjKWg9RA/J6linX9f7FRCQgSGa+RtG3lXOwgi6QsfUkjp3L5lj4boshFwm+RwcOS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759226394; c=relaxed/simple;
	bh=1S/B0FfNtobzbSXePcKCqI5G8MWvbmwGexb1GiP8NIA=;
	h=To:Subject:From:Message-Id:Date; b=LVyOqqwmCcTfJQ04koZsgFbkQtS6Dt1wEfYZ/2p25AR2yfGlRHzrhZT7PJ2OK0Obo+HL9F2uLQCHq3VpYU5Q0wFfbVcWwTqpxHQ4f0NDZYnvShyLTms7DKsCaIC3iejl7jfKeITTsYIhJnPgrDXjMh4eGmYUX3QW5TquCeaiIoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IesC7BHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IesC7BHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759226393;
	bh=1S/B0FfNtobzbSXePcKCqI5G8MWvbmwGexb1GiP8NIA=;
	h=To:Subject:From:Date:From;
	b=IesC7BHfMgx24vO7g9Q45oFuk2bBSvYttF9SFKcVbwPO8qOzLm7c8b9PdXuFLiePW
	 qyhLqkb9ykTz+zBTKhNxb7S/gJOTsO7y/aq2yhrHoQkuxhjIsJQQJKIvnvKU4Xlo9q
	 4cbnTHAAPB2XIdhqUXMRvoFfPuwfhWisUQtyBhkIYN/M7BbpCt03vNUFv2C44/eQXG
	 dd/mMDgK3pIYLIJKHkJemj9JDZLuPfR/+7oKWo4kfLdQ49XANPDoUiUdOrvJBJop8h
	 MzvC4YY/IMEM1qWAC0oA30D7Vjs2XhCnpr0+zm/tSQPAPbrfuCxWgcFFde/FO2e0jn
	 RynzpmEIgHZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E972CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922639357.7152.4439587158270431016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f6ed08dd41d4bee7f7d042b0e273f79f3e694f9a78e33346c5c758b4b4d094
Date: Tue, 30 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759226393

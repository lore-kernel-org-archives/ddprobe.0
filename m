Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE081CD15
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763195394; cv=none; b=efs8kqMRaXbLcts2aTLBytggAkhPOB/7L3QxuNwTiTmlo8q6pJ+TtHOyoZcU1h5TQo/XBVlCP5/hBMR1iX/ul4X8kXQOozdbCYntEipxWC+y5UFpqv/+NUgPNjsBpKm+rSVjNlcxS0J7BxomyZywwTbNf+JOeo4IYrRynbZ8oWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763195394; c=relaxed/simple;
	bh=a+rwF0sv1DaGN7N4C2SaJY21za/FQl5G4f+ANWWJ/Cs=;
	h=To:Subject:From:Message-Id:Date; b=iW9NHAr8SmPrBHzz/MfEywymnHBcBx4HH8jZ5Z7k3KNsuosjcrCq23TZHT7fkwtO1JYlfxo5+j8rYLovk5vdhIGiM7LQbN57Z62mY14bJt31Q3OL2hfJhHM1NCYNEdFJpaV4AYt5xILa5GW/Tuuw9XnzAdt8vZ1Q6CS9n5gwOyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u59tmcKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u59tmcKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763195393;
	bh=a+rwF0sv1DaGN7N4C2SaJY21za/FQl5G4f+ANWWJ/Cs=;
	h=To:Subject:From:Date:From;
	b=u59tmcKwl38NagdU95cUQjH8HbT/EihLKt2yxIgnB0PE98OIg05Z6bbQ9U6h1J4Wa
	 JXEQhOjvdV1NK5e7+ky0JBU7/VRX/9X/sh69VVJwqVt2R14epDKxbatQH6h3KcYHXd
	 teJBL0dfp1+uWEdUa/g5fjpqq9C3J1szvKkZnfUecPYNsB1V/oq7L+B6GKpz2CciWF
	 zmclzis/J0fsVXrx+wbwyUipzoM74msfILlu5rc3QmiNlyQRqDPEAZ1ErbsTKwGZRb
	 V+CWqCrne94acu/Q1as0h7yFGfgL2lSmqPAc2weYTb2aZ/jwgRUTv1jgXcrb/erO9m
	 W6JB2nhyO0u7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99790CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319539359.23241.7293322934102337976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6269e68e73aae9e5b835b89b2dfad4c364a36e8c94265c12ead332f1114c2612
Date: Sat, 15 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763195393

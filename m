Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112B15661
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723514154; cv=none; b=mnns2+yDLmn9u5q0t3YBqzseN/w78QE53ykVz9+5lZqyI89Kx6J7HTiJeuCKBS/ueGj/0fh2oasg0xUxT8S8SU9H7GZN0H3mpsO12b0llOsGowsCKn7WC6Z89trFkQtjW24IRbFuWMKPiBNhWMj0oZ0+mqhQAeeWJ41GimJGseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723514154; c=relaxed/simple;
	bh=Qbgxjjza0+Gv6g7XzM8oWMW1umcLursbiO9ZxpJpUKc=;
	h=To:Subject:From:Message-Id:Date; b=R4b/QNrS49eeGOZwfKCG3eO0TljKokES6uKqIk8dHuCPFZlJGp2k8S35CePeXymnHFEpHPNvulX7+hoOqsW7j2QJwsutGGFrdQNVzn1naUe2CuqpAArdDzi0CMNCU0yXHoQrTFB/xjPNA9nrVzHETneDC/h86Jnt1g3L6nSfxdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogML13Du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogML13Du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E53AC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723514153;
	bh=Qbgxjjza0+Gv6g7XzM8oWMW1umcLursbiO9ZxpJpUKc=;
	h=To:Subject:From:Date:From;
	b=ogML13Du6KC5VR0b1fCDOG4xaQHeKw06YmQG5XO5eEAG92ndbnKaEQX1O1UJa7toq
	 iE5CzZtZ+WnxCmr853MqMHvbUVmkzvN+Nss9up6+FK4M3YQV4AlmJXdPYaeiQk7ze1
	 f3ueM8DaqhdwC5WIJoCZl3ZugH7BORrIXXw/vufWKvr2dCLbJjztfRbEYRSxG80r1e
	 BbWce0GbrMhWLJn5Ha511K9p8j1Bf1qclI9qU2IKbyTONNxqeVZwmt0MXrjvq1KGlh
	 mqcn8CqQf9i6LFuwrHfNDPss8THqh2H73Awp4V0iTYRQ/HWdtyj5IFl44QnN4EO50E
	 jFUNak8eShVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F777C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351415358.13063.10249612738387753600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9d157826c51e792ef3207a402c6ca1b0e2c2c8224c620bd0011fb92aadae83
Date: Tue, 13 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723514153

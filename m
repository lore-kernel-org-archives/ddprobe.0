Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF9A1DFE3B
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730897153; cv=none; b=t88n+9jUWJNotc0Hu5aobHQ4WEUHdIJKJy0mivxJtTaQyHL0uJdnhxsk7oc4Ko5aIm7T/K3uORXzYaHQrxwbswGzCWug8fJePnY9HcseMnqhe1vJilrzD/XvL2WpTMNQOpyyaFr+0E0I3WpcjGkEGtpIv9YT1PjIfrE73h9L0cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730897153; c=relaxed/simple;
	bh=/x9LC4a7uhmfR3yHME/sxjBjsbcKXSgaLmCaKLQUtpo=;
	h=To:Subject:From:Message-Id:Date; b=fA6+sdOUTs8BZLzwflYMX3H2aUsAPhjP18PDpC5ncwMS4kx3Rt3v1sfcO731uc3rjVr1fjBFZhNXqrUkpUfh1judDDeyxM9dD+P6utg5LH4SuQwN/uWvapKaiZ6PAq5CBiLEEZyHjI7Cv2BLjujdDyZfr6Pm7XF2seeQ2rBFkuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYPIPUcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYPIPUcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9973C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730897153;
	bh=/x9LC4a7uhmfR3yHME/sxjBjsbcKXSgaLmCaKLQUtpo=;
	h=To:Subject:From:Date:From;
	b=gYPIPUcYba+r19t702F9zBMo7XEs4T/j9umNmuYr/XOgxvyXHi+qa+hDpSMm29a69
	 1nI0erd6cOeVJOyC/LbWB452fCs85yU3QnsdbDqZ2Yn+O8wesxMQOg1Vbe4OVuo7X2
	 MB9Bqw6TFn+QcAwJjFcMajJzNKl7G1hX+Cm8OhTKMKeWcblEkkmti5XD5vINUrnfIT
	 G1ha1DbjSHbxdNOCQ0W/4IkD6Va6y9sH2dastOz3o8Fs2hYB4klUBvSQSp8cGhHoOF
	 Bec2IpBMHmqhnojwP7GpoBrM8VXdU5WUExRWZrWE2AmQG1rUFUw/w9n2ZW8BNVySDu
	 O9a56ZaXgzJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996C9D44D57
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089715361.11925.5793875776522390115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b210bc973f12c027d585c82f8129dd12c06f1623762212a95f9e03faacbe849
Date: Wed, 06 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730897153

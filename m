Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E81DA3D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760206794; cv=none; b=bYW3nBX9EE+ey8d1ZmOSLrW03vTlQKSZYi3XxrEA6Lp2c1OeZQNzcrc/MPAV4yzTMn14KYQhdkB1GhMQVLwaxKfrvtjeH0VE/XnztUtKR97+vfluVCgR9UH/HyGUFBXAEVPs8v0SkbYlXKswBTeQoYSjGfHAdCKaepDKs14fb34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760206794; c=relaxed/simple;
	bh=WKaIPkxo/YdfGGGDC0jMvbDogYOm7rlI2T/LIyv2Qw0=;
	h=To:Subject:From:Message-Id:Date; b=bEkbmA3T1melm0CfHXYb8qf6W+iV25utOYF1ZKi1v8SZlq5EVogmw/6frzoXrrhpWvkKWzHB+MQeF2wfqEoZlzJmXQiilO4Qaej5UYGlCj9si+/BVaxYO5j5rTIpD3G7mJ0l1YqCS1fyketp7WSIMDdt/Ia6QsjJz2KRT11+PM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFRXjOIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFRXjOIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA54C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760206793;
	bh=WKaIPkxo/YdfGGGDC0jMvbDogYOm7rlI2T/LIyv2Qw0=;
	h=To:Subject:From:Date:From;
	b=YFRXjOIpGwJuw/YcbvPBGFAx4tDx5J/GE9nsoGgMFE8aieqNfmdAIVArtUX5r9CMa
	 OXyDOBP8cgwO857hbvLwhdQb/P3K7cw8/+3PgtE9WvxjAjAcdhpW2SOSfh73BWb+8N
	 4te6BLYFqxCls406Wup87j0E5Mtn32ZethJB0kZKVm5/qj2G8/Y9Zs6e6788KpyoF6
	 +93mn1F/lrs2oCZTVv5RThG6umyJEIyuIRXkvWjU6nMHtWDBz3Gv044hzoTdV2FZEY
	 Zk6N5gvFoKb2E366A0M31u6VBMpO3uuWYvdUiclX20Ik6oKc81EwYfHBtlqO7zqOQl
	 4XiuZGgvRNIkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC71CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020679357.3573.12661398225310935193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f322f98ac8cc6e615e1693bc34950207a65b026a8caecbeb41084c86fde344
Date: Sat, 11 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760206793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEFE54F81
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745345396; cv=none; b=jZxPkVT8ohhkHU3DfhT/IYY+dmC/ajwgDyy7KJf/qy8aY3Ymzx4lhouEFTPG4Hen2p7GabqjqDExIJf8jDjedEBPQVZ1i/JGipXSBH9+A//Ru+scidBQxd7S8Nx3mhsqzjB5DuSUSrxFbWYjkkNnlweyGZc721bYJzhP6BJD5B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745345396; c=relaxed/simple;
	bh=GFG4BjsWDn2J454ux7oOakasqLWkSOaoP2wU6f45fyA=;
	h=To:Subject:From:Message-Id:Date; b=XEl1+bTZYBYmKsnfQRfCr/+iucLSUpTM5cbmsu75JAjcxrV/WIMcRrgRhy30VGnKWEzKBDrT3NxF4rA2zF1t8DtkYqex05ju9xJUB4T1yD2/hVIO+tw9A4k/UYnPX1G9nSjrizFsRN83x4Qj0qPbtKclWU2BItj0qyVrxzKoLlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYrcH1Rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYrcH1Rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5154C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745345393;
	bh=GFG4BjsWDn2J454ux7oOakasqLWkSOaoP2wU6f45fyA=;
	h=To:Subject:From:Date:From;
	b=rYrcH1Rfbdgx+ZUwomMQsKuTD+0E5AVGMJg8AFl8pPTkz+VdqvKq0azjU9Zg1CUEV
	 QUFTdXQxcqEUh6vdlO3GZGpx5OojMz4Y47f5Q9KxqNwMcREusXYxG3mdk5Z44d3SIm
	 r6xrfUredrDdB6g+koPu99qfkY3GYixhLQcq6HI30AWMfvu9cU7IMPY8yaVj4rrtYy
	 nhJjTJ3UEQkXrW1JozhvoV59xKOWUDHkI76sFG2bI1uDczSj7YIO896QN1a/XVZQJi
	 X01jDfyKEGcffpHCsTj0/WUxtKC3j/9nqcaaiZSIyAQeaZwOFnMbdFSiAaghDG+IFf
	 lF2pHBJ7uD4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B92C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534539358.19339.3053946315763323664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93456ee78b5f943013acbb3e00daf82f66b92676ec3d0c727bc6b782b865594d
Date: Tue, 22 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745345393

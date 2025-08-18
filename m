Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567D1E7C2D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755482394; cv=none; b=Y+g8Ed/mcX9tWm7F6FktHdorQ5fEbIv7iKRZcTWwzTbH8zca19uB4mXiPKR0vU51EvbuhYDW1h07+hG7O7hGzzxt2dic4ZFK0H4XqagwDUjqrNsZHg5OFE4jA8xPXOOg3K/AUyjRqpnzpryWFQ3qld3TmiL6Q0/qPrv2X0bqepo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755482394; c=relaxed/simple;
	bh=mb2+VgESTK+XstSw6w7KqOoOn7sicu8nty+QNMQ1Nsg=;
	h=To:Subject:From:Message-Id:Date; b=dl1MvU+DFUjwpKMkE6o/ldPmEW9IvBfl2k1VR9NMKxN+tWULa99zmSc3LP/yAVlm3Iv6GasjQlucTEQbWd69Vkkb1+umkz94wKIc/4HAmTWPe3yhv/qFCSmr37qc+y4X+IV/uvyEpQHIMBoqMqLK4D4kAUvomaevle+V2BrMZZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rulPZ6eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rulPZ6eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3793C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755482393;
	bh=mb2+VgESTK+XstSw6w7KqOoOn7sicu8nty+QNMQ1Nsg=;
	h=To:Subject:From:Date:From;
	b=rulPZ6eJhiEP16/71L0/prbCHxSQtgfzwEdftKc5H0Zvjyoowt8Q930Gdxrezmloo
	 hpmRgfyld/QxSo2yMeFm+UzcUWRGjXWP55MZmd+I8hAfM697u1ys9/Z/7ZIVMt15vs
	 KjJ6FHrfccb2Fc/iTuWVvXhAjWnYluJt9wfl4fhJ8fy6zTO0Zu0pchyk1GFOLNmsHL
	 l9RAPsywXOjz1CR8nkrtd/r8919pvaMe1JA6EuXt1z+hCNVaQgpFf5XyehCbBBrH9t
	 8PvxLTOpmJMzagsXnExDGRLMI+CTDTQlvOKmbcYO6sUQeFEcqPGAONvvwb0UjsF9bK
	 K2kMSvDrU3e8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91910CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548239357.15558.13537697580695898081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa7c2ab8d68700b52820f47712bd9f098c6ceb7f448a0dab2d852c0d0a83e78
Date: Mon, 18 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755482393

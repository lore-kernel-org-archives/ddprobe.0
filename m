Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40159442C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753667394; cv=none; b=QGMi36Vk3kwelYtdIS2ruvA++0ihXssCnm250wB5RGtzijFy4dRJXODwWZcQ+pgva6+WgL7mFfr5EnUSpas/Yp8nPNFhmfjW6VPeiZjtngCQggJ641S+LCtb1k25o7BExydCp+row1fSM7fqEHNCSE0P2tn1H0gyOmIxxPzl6tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753667394; c=relaxed/simple;
	bh=w1Lwzq6NXpisc+cA8AUAwwM8NlIbjD+GiuMFlQZu3uk=;
	h=To:Subject:From:Message-Id:Date; b=ZJJi1x0AvtGjIUHq5xE/q1vviBwYey8qmejYnIiujfYrUs7kQXg/ceyWLLQq6NDf9unAS+GM2QRpTiompuLZQLH0D7yrbOfH+J37ZuhYX9ZQLbc2t5RU3VlC3EJFxas+kNUgikP9SHBtnQkdWydFdNt/gpDHXDvMLxnSStBAGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxe+6CEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxe+6CEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A51C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753667393;
	bh=w1Lwzq6NXpisc+cA8AUAwwM8NlIbjD+GiuMFlQZu3uk=;
	h=To:Subject:From:Date:From;
	b=Uxe+6CEckW0iyVb95iSH/8pVRGfyWVmqf3garJ2QuNeWVA4HU/9Ilp5AeAXQwIKKP
	 VfUdoPCeLZFiLhX4CIwZF5neO0/DRNYlsK7GEYL4z021YYEuL2gpG5S2oL3oSk239H
	 E7iHR1yM+QnSM8DzZxo4gNL2SfUN0K/NEB7B/nxuXoW0zo6vnKETWes2lwfyZZ2RNU
	 8KQVRmVUmvfXNU1AwcU7nYEFnARyU3MBM9q4IydNltBRyU6dN3sVXERYqrjFKKsy/o
	 Tx+GTelSbB8bEdPlIr6vKBZRP53SN8h6d9DO4fZni3To61zBVQease+zE3DL+E5AG3
	 kNxowffMk894w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92253C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366739357.18742.10996792078500659430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4265ff4ee111502f9e83e8903a8a23766299b5c9e14d0383651863db4fcb6f
Date: Mon, 28 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753667393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145D13AD11
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731646554; cv=none; b=k8imEiCHzCPwtoKHXSOiqw8sOH192WZ5t1QB1CChHeCNSJKNXFm7UmVNDJEvSKRRmBM9yscMqZvKWI3xna57ufMdutA5YfHM8lySiEBwOek2XgqJ2dWcz3d2IXHSlPbMN1ThOIBzv7f0dn5A7tCzfkQ37wAehYQ5pSa3mf1qSPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731646554; c=relaxed/simple;
	bh=AjIcdd4f2ulyEgckYl0wiMBeoOYlT3DcmiWMz4+CL6E=;
	h=To:Subject:From:Message-Id:Date; b=WIKxOZe0O7j6MyEZiAypFVBSME5bL9RXXm3N/ansdDARfQ+j8jKMDV7qVOYyGzqzHjFJvNNxgFIQ10Hrp1fvnn1p+v1HMO6waxUhMWruYsQ43jS9B/oQQWUa1zv5yC6WkCRpV7yGFhYzmto3fBsYF7DLm6ZSQMO+EpmNTq8xFOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HP13SOnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HP13SOnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02BEC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731646553;
	bh=AjIcdd4f2ulyEgckYl0wiMBeoOYlT3DcmiWMz4+CL6E=;
	h=To:Subject:From:Date:From;
	b=HP13SOncbuboUgztyEJ3PqQfN/BAmIAZaivgCmVRmYyM8qhTGTW+sDMmoW7aWY6M8
	 UmjolpYVinCxoAFcwVa/n0PeVjCugpq9wUOGbLbKQs9wxD2KryrSmcQ4xu1Z4R1YBk
	 cfPfKb4VmZjs/DQAe8M6RVugyfaAvlwHbitTrttUcscqWc1KQn89CSFyDsrGcN5HRI
	 iwmbaC78o+aZvuD07/iirWq7+XIOGh5oXtlyz1xRXBn8VVPzPBZXGqy4/tYFn2zIne
	 JzjVsLuKEVw5u+j7ZT2ZW1MCSZabL3mArH+O5Pj+SSL3sEyA8OJ9GBmuJr40kJ/Msv
	 3UCwOW3Ridekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDFD6DDD2
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173164655361.6407.8031542048751299469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac35616f930c9d2c52fd0633b7bccf85423ec35161c9764ba27c26f2936ab227
Date: Fri, 15 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731646553

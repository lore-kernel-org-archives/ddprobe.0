Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46220149DFF
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743331794; cv=none; b=XPsNnp3IBVeOZhcXtKhNmt1FhyUHQyUlzMIE9EMnNmytvdBlbqVEJXhr4ibMM/36NBbh+8111E1KE9eX+G7wQWktNU6VoVijfULzQs6/3rDNVc2IQClBiBjVqz2JASyW7egx5tthjQIkpsAghdMvRB4PdmI9Met/uemDnl2Imjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743331794; c=relaxed/simple;
	bh=o1Y837WtqvmZgFpmmJZctaUwjUs5ULgr4UgTLhi911Q=;
	h=To:Subject:From:Message-Id:Date; b=ZTRKjCFPb7a7a40GDlMIUtXgITVh1LF+Xz4GKEKHgEd/SCdhtKnIljNdB4qZzuCv7MohqoCyYDpUihBjmDwh2hMUHOFiFqEeDuIJvNLUNbMlMFu7NQHnUeNuzVmTV5JJO35gk+HxjDrc5xMLPrAM5n9qnUUSYHIJaOHLfwLNbq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LquJL7yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LquJL7yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18B0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743331793;
	bh=o1Y837WtqvmZgFpmmJZctaUwjUs5ULgr4UgTLhi911Q=;
	h=To:Subject:From:Date:From;
	b=LquJL7yYDHBiYHP5M/ghNGTr+oXjomH3MzTzJHGzcYQkL3WefI/Yc4INj3m+ZEKXb
	 sbL3ke8MvcXMHpQrd8O1DSZL+VrwvwIGCcjvnad6OnhESHgtIezJKemIXHyCc9e+tC
	 vFhd86cKGnJ0giN7/bN38SGSx4EodJmjPDpmUfArujvn2nagLL4nAsN0JRfwThQJhx
	 4gfUu4z6x57S/f9Qdnp7WpuKRQ4SHe8zt+pXDpOcf+EiK3bX0p6QzlK8fri+BwAurC
	 K3zIYkGVPjLFlbw68NHlbSdCck7ButGuWYG+CUfpfRlUjEBAhxVQNJj1T1hQerOi0j
	 fRazzKUjZDmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A628C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333179362.14063.7751081567345689572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dd555e920b4b28523ae4cd7b78c0b2df0100c2e0a1b9e7f3f5ee7730e84875
Date: Sun, 30 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743331793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC5F19EED3
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745140794; cv=none; b=XwDYvwiMfcvRB1JN2jXvkxvkb+g7UnCiEfHBcSTi4yoM1HNcWTlbdcfYkdiT70dh8RAPS1YxDQSyFJ4lcCc3otyriqmZIsHR2982TOksHSRuV/C3/StR1pUO1cg8qCGX7tOpTWBtukKX0e1pUNd9KEdz2CVEOrRgSPBSMRL5ClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745140794; c=relaxed/simple;
	bh=d9XWnG6+/RblXKMm58z79FPy9z4gotal5xHxAQ6itFo=;
	h=To:Subject:From:Message-Id:Date; b=Z9bzwZOsHgixTlOy8dBfRzo9Lig7xX+Ue3y467wqCYyP40C2hjNeAX0QVTQPER9QI95kRkmx/0cfmaQHH9ycBdQGfiniRTAr7EZLUZoZDbsPGz5Sp74lqI8uCKN74me7t8OgYktiz/nyFbuRdSA4uvfDraGAN8zEK6Of8P6Edio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/Gp/eK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/Gp/eK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745140793;
	bh=d9XWnG6+/RblXKMm58z79FPy9z4gotal5xHxAQ6itFo=;
	h=To:Subject:From:Date:From;
	b=H/Gp/eK0f+SGD85tTzSD5FA3HWV3ZpCKS8uJ6PXUKqogq+AAuBLcaacLCHYAoIJ95
	 XV1xTsIVmRv0lufcs5UyCOZD6dLh+aY4brjGAHAfrrRmmZ6ZnMo1Z8zXVTmyST8QKC
	 1vQaIlZ59AIIzalVnkVziEwoPP4pAya5j/rWwAoA/iC3M3RMZExJ7UAMNuidsmWQX5
	 rVRBSmAR7vGLraGxvYkbM5YW0J8IZp+6HhpT/EmZCodfqNXlMwS7Suw9aaNgrIOoob
	 e4SehOu2So6M2zqOOrP1bQ0aPxX7EHEw3FqJcbQMscq+F/osyUAPqv0QLzrju4G6Cz
	 XQ5YhcTYE6fbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DDC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514079358.4575.7560459984441931371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1033c210660392216647677271537b6f9e146a34b7fd5cfd161277fa5662cf9
Date: Sun, 20 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745140793

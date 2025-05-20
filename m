Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74124DFE6
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747753194; cv=none; b=vCUjqhL+9+FYWTOj++cnMoyindJrLlHWwhFSdkmqUEaivEBFoJEje987HzAPh6/Zg85N4gWiQLCUsOVpdjdSu14IkpWhdruCIPnXy+0y3rg0zCyua1B3agUHnf/wroBq077TEc+SNGwsoz8r8dgcYERcS7sHzEnkEBtVMydgezc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747753194; c=relaxed/simple;
	bh=EbvSVP+93NoVYKjNyW79GZr80bNXL2FhkrzQ+qUzS+s=;
	h=To:Subject:From:Message-Id:Date; b=OL4HFxcj2zR46RDcuanv3sCimY+3SHJEA+1RixKJCalN3DQ9CA/P0WfFhfZeVCX5JUvhqgVOWZslmeH+pdx+QjhU0yqf8xO2Z6H1tSS7i3nTCk95komlbTj2nnXy7aFhTtj84lKT9cTdca3R2RqkAbxVRRGjkEU7YS0KI5Jb0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvg1Sq9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvg1Sq9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747753193;
	bh=EbvSVP+93NoVYKjNyW79GZr80bNXL2FhkrzQ+qUzS+s=;
	h=To:Subject:From:Date:From;
	b=pvg1Sq9docJUpV3YEgtpdYzcpotMW2wB9KmqkwC6p4e4pBLK6HpvfY+xk7WYKKUNK
	 O7adV/nslFg3JhobPSN3dYBi9g3d7r6E/20FF6nVHnY/HBHsi45umfG7E7BpAe+GL5
	 wHUqkSD91gCICCeZ1uIhIzWU2HUaGRTWMVVkbx5Ji8NPzdLkWThsdeeKHGqqd4wKnB
	 RiNa8q1QthzTOYO6WyzMvLA1u/8YfSxuxKzRVj043g1zw7zPtmwCSRhAFWJ3yLjlOw
	 LHT+UxGhEBdBkgRt+/CPGLhi7v3xaSAI5e0qf6WFL49/zk+G/sx6lW0tGIeE+g2xgb
	 9FC+KcOG+rrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F309C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775319357.17860.6524640493307530267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad2e5e89f24501204df0eddea006906d802b595af6cd2a07ad3566998a5220d
Date: Tue, 20 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747753193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FBB158DC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722276354; cv=none; b=kvp9A3U0tFUlufmtwer7pd+P/3WgmKlGHSAhxwNZ9gBYspuJ8EmVL3CuFkW1VusJYMeb/yHOctjTCetlWcaRrOymi4ouaqWALgfM534WRGvMDQeVcghlRsY5/ssfA5G01OBe/7JJAqPtSFKNNT62SLtoVXyxIhn6whLwLpKIWRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722276354; c=relaxed/simple;
	bh=vijqolCap3HqbujyhxwfCz3Lx78a5kdEIA5R0vrh7ao=;
	h=To:Subject:From:Message-Id:Date; b=RBz6gwzNhOcS83NEeZc/9qA9iwA0KmZv8ISEzc4HhEvn+KkL2mM4wY2ndAZcUZJRJVOKx+0k6uDH/UZAdnbNtAumwPe1yTGmbGPBToIfIvSRzSIfWXgINMXLBWMwGG7BmdD6Ak3LULcj1axI9gDzn3j9KOQxwjNCKrhUXCadLsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0e5inli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0e5inli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A635DC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722276353;
	bh=vijqolCap3HqbujyhxwfCz3Lx78a5kdEIA5R0vrh7ao=;
	h=To:Subject:From:Date:From;
	b=m0e5inliWXKORQDgTNnqxYk/04hg9Atw+ZqsDnTV6uy6VL+r0OjWxCpLSmb2CrV/J
	 fAJbHl5mJ7i9m3PhyG3930gR9Ikq1UOrtqLHtvf7DfoTSYa9vHngK6YiC5qVFHm5Qk
	 5z4WSt1W3Zwx+iFQK5ljtmBMNM5mVBoY+qv7AVw3rG2/oRzybq4kwXx4KrB7NHGZc7
	 +GSBlWKqML5wSBCaX2JMsyCEqsyRX4XqMY1FyuO/v5MDlDgCm+A+Eojz+m41Nsh3Od
	 Je9sce++llBLhnfimG5BhuHlyXWd/NzwF5b5nsUf/E7shQlfOV+WpB9BLG6s0GwbP1
	 1ZAgdwQTgWeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94121C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227635359.29156.13826000889366526124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac4b0659ae03875ddc4b4f58488791382cef7e8fcd5b1dc5be218cad1f7bcfc
Date: Mon, 29 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722276353

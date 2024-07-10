Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE41957FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720628783; cv=none; b=NF+Bz6yDrGCh1G2lQQgau3dNwQ5P8AlUvGGvunhZ0ksgixDxszwcHLC7rHvfZfge/ogyQixmcN3WRkxhNeRKhzhDaIjld1+qf8gurT3RfwsogAjh2DJ0JAQ9H3DlCPMnRriFL5D8LkOC5A+U8I1yqNMec6fqwCECJoPQYggDO9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720628783; c=relaxed/simple;
	bh=QcDqy0IzSfahtZfzJGjnUv7EpxlIlqzml7KltcEb9pw=;
	h=To:Subject:From:Message-Id:Date; b=EOZIovW2+SO1mBZoJCIZsETFohlR205tAg8ydISWUnQzp0C3TkLyKQH+heVqJ2SOfK79t4vde+TvUEIg/Nr3UwDPWo5/In2qr+OjRsWNYobBu14ooI+ccgvQIvUtvLOLwhLA3TSQ3UxNN/rQq2Kx7eAdCtnZpg0vUn+9EzQDNP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRY/8Kae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRY/8Kae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC0C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720628782;
	bh=QcDqy0IzSfahtZfzJGjnUv7EpxlIlqzml7KltcEb9pw=;
	h=To:Subject:From:Date:From;
	b=cRY/8Kaeu9yQTXYuANE/gjvaoVySjc8SXhLITDEqxhvi74MeKEMN4pwsmnd7H8+Bw
	 hTSeBJGLYoUtQezfQVekPNcYYxuJzP87fTDnwOgWmPl41eC6Tx11ArmDry67BdFYWY
	 wEZZH1WaJS3EYchQAwy8sRiTeYHgGm94qw5ralkZGHnNssDr8gE6RLIL9JYiPYIv5o
	 uXkcuFp4ukAWTDTyGWSRAGgqRF7FIRKNijMr/0ftn+NQzm6kLXvSRbNQcNdX17nzQC
	 4y6U3fJ0BhvDKdEu/hhWV9+OpS84bXmZpUNJzzNG8jMTR7OTKLmkGBZdyX6HQn0j4W
	 8NKR5ohszTduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5644C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062878279.3090.469148887516285416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec30be8ee5701c3d1bbc4b444eb57bbca9cfb2ee63de0b514d30fdb9114f3cf
Date: Wed, 10 Jul 2024 16:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720628782

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE0370809
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759027795; cv=none; b=N0uyMeGAMMI/lfPQ+pmx3GqPXPFtbru/4+W9uaw0vsB1hdGpiQphmbwk/kq/NGWM2zBoFdKhaLLZqaHmRYy4nXI3Pq/U63PLOY7lYnosZBxA/MV3Rv0dkaS/l8JfS40K+OWku25g8c6LQvOporPVoIc1g2YBPH9AFIuk9qTg6c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759027795; c=relaxed/simple;
	bh=kzAefpGZglEg/HDq84RaeX8/dg+gotgSKfPMoiL8ZBE=;
	h=To:Subject:From:Message-Id:Date; b=sKSyASn/UTaNt3q9E0+WM56hl9si9LK9Ia4MoE3LhqISyfciXMj0zbWpXRQ7ngpAb3obb+mi2+ggR5WqJGyzfw3Q+B7KKxoRGz8I+rbJVx3aY3F65CGAtZWSzhXRt3U5HX7ZLsodWY79hJWcPiaG6HKgILSGnnFYiT9FCCGaHhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr7XQmYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr7XQmYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759027793;
	bh=kzAefpGZglEg/HDq84RaeX8/dg+gotgSKfPMoiL8ZBE=;
	h=To:Subject:From:Date:From;
	b=cr7XQmYLJsmzAe6EKO2IybC4XFdH3VZ4GVVtL8gDkjXsz8/1CwbyHlDlG3aikXOBR
	 6QVN2XagkD9hv0aDxuMjQTCrrsA5VBrWQwyMLt1H9hVZ6xztfTFuxwFRcRn6oH0Yeh
	 zFvVi/b88UT55gmcoxPskGYYRBcnlQXCoXjDtJQW44raSY+KG37EjBDotUmV3/7fcD
	 o/7Pdx4QeNkp6QGwloB7uSFj6822qRUoj0NFLzKcYxlu8p4DbRnH6FIxC9sl3oWA3f
	 OPu49LaGId9gDikYNQ2AkXzm138yTYJTVgG+udvk5ovAzsfPEsWRPk+15RKuI8WmOd
	 nurQ8i8l6zLbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A40CAC5BC
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902779358.21661.18277384260239597578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f175bbacb7db466bd7f34e7575eade812463e84cf5599df7c1ffb0e70da1ca
Date: Sun, 28 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759027793

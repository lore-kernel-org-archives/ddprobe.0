Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CF633D6D3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762892394; cv=none; b=jJof/tnwLwgUQLjIkeRld+03V+q3Uxssr+JQp9UXZ0KXH/RYMXav85/RwhHKue/LMjjFh+UISsTISj4kJWk5RKemQAe85/MvJIdM/Q0azUov2MLULy4m4diuubbD1cqtVzfyyOS7wFHowop1nx6JkSivIkgqar3b7FsuEI/8abY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762892394; c=relaxed/simple;
	bh=Vc1JgasoPFNkqxuEyYdxwm7yLny44uJi3r2CMIdynus=;
	h=To:Subject:From:Message-Id:Date; b=tmaqe/ISQBP4C8TCpMJVwsh1tm6IsEwFH3ifZWbU7XoX1vCj8qON2PGrbab6VlDqTgynbz+7+faZaJxT4kzmhb8cOlatdrygQnRWeUbtDkgIo3UAVgfb5qIc9H/glYkJzfcpDJFcb0efdZCqYUoJpEj9tOVrH+nhSzGV6wIAPuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb+bFbZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb+bFbZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA27C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762892393;
	bh=Vc1JgasoPFNkqxuEyYdxwm7yLny44uJi3r2CMIdynus=;
	h=To:Subject:From:Date:From;
	b=tb+bFbZSJCqA6HGKTEffXG+OfcHO4tqO9wlqoTxOwgWqqdeegV06HqCTIpD0uvt6j
	 RbT6h/fwFpgp/fpxveLXE+0sqpMj8U0KShUwsNdeFQzTFT06HIj2SbMEcuAyunZpRT
	 IqcmXBnytYeZTeOuVopOA+iIRl4cKvKMACs5c2UIGbq8Qpmmn8lCE004seMElwX0zB
	 30o2cPT7hl8w/wnyx4HXl7o55l7kIaWOBXTVpH12fBXnPFKgJcHakF+gvcYptB0khv
	 DT6HGGLX6MZioi0o4S3gXpLs/7gzShdz82NH69S5erIAeZHs7wR7xUj/D5jthRU/h8
	 /4C+S5esH50Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036BCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289239358.18512.16844366075688262894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6fe7f0e9d661776bcd04e68c9d32ec7dc91e122ed0441ae733946328adad2f3
Date: Tue, 11 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762892393

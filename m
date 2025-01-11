Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297C9610D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736561754; cv=none; b=KgvTthV+Vbz8KH6AylYNkigAnCN/OGrid+FS0ArA7MPfQEnOcIfztV2H9libpbYhPKvLrU5/uTlbfMxS9IyzfVg5RVPrlcAbvCMtPx7qYgBV1lsgp60q0j/HTxMoCgn+/ueBBYuxOWtWpM5S2rvQc8TOk9kVC9DX+g/AWuQtTGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736561754; c=relaxed/simple;
	bh=9q9oiTKIVgBmOxU9HwVnQ+gJpSm9hucfa2DzBPuraYI=;
	h=To:Subject:From:Message-Id:Date; b=JBApwwsnv8mBf0hIZUqlEbAbYHAvgeXiJWtwiUXJVJLX79Fu/6ludPb8FY5p5v6euZKUWs1mP0+IVcdwQYyk0ErL8Fh/w5oUQzUpWHlRRb/C1gRkUhcBd44ihJ1NMP6hzSdBWf6T/cpEV8DvaggssMXtxnFTbJqmfaCRelgkDgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZW/Dp7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZW/Dp7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C88C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736561753;
	bh=9q9oiTKIVgBmOxU9HwVnQ+gJpSm9hucfa2DzBPuraYI=;
	h=To:Subject:From:Date:From;
	b=AZW/Dp7RpZZJINKacPSNCwAuNpu734vwO30GvSAij17Sa9tLeLaoBweTx6L9UtTUn
	 rFUO3twtINMKSOxl2mtoFYFGjtjl1RIkQ4kd3plopN5wF3Qdn+eahy9K/T878x4KaO
	 cd3INstII53tfB3zCZ5+dZDpnJUw/0MlmaQZ0HrzkAfG0tp86co7TUZePdD2Q+4EAe
	 hUwtPlzbQP0e1RI01MWshq3T56iQ4OtKsJs7SZhI8WwS5QlKseTqvftb3SLnL/aZ3b
	 fCVo5vJuDraninKtC5ke3uvYkbACVTC3vkNoCRiRx1aBPjz3sWoD/ho3fZzkDnII6/
	 96IkQOePxbVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CF4E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656175361.4066.10691096742427912492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dc19668647c146ba3f24c4c66480e7dcf3185b6ea8ef760aa57a317e88ee91
Date: Sat, 11 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736561753

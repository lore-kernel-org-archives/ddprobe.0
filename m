Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BA624B4A
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717193063; cv=none; b=g9D3p4vmXG8jyujJ+3oRfl0ogXUIFCtZcYF1krUzNhY9WurqIeOJf2SfzESKcSZM/jMPGZrQMs8JirowK/1W13benvqQ88PPUOzyFi8owebk9YNRYGmkOXgc5uP3UXdYceg1thFISV2ZrA8dMAWuSDEGpPwW4fMhboaefCk/4ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717193063; c=relaxed/simple;
	bh=YpnR+UOz29lH3qc8HLTsX1b8GIiB7iqoj1tsDOLqil8=;
	h=To:Subject:From:Message-Id:Date; b=gdYTeByT/irLqvKK298BVOYHAZ1GdwfLa9AUWFxtbL4o/X6h27FnW+PlKwOii3G/BcH5XZlDyus56Qgj3/q9iZJQr/cmn8dm6HJQUd8c6lxlcntdiyuVOpDXZoernXWfRycKxHt1G46+u03RoHQ9AsQYwB2yb8tIayBSeMgvpv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkZXT0tQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkZXT0tQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55D8C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717193062;
	bh=YpnR+UOz29lH3qc8HLTsX1b8GIiB7iqoj1tsDOLqil8=;
	h=To:Subject:From:Date:From;
	b=MkZXT0tQhPwoM8Gh0B8EFgb/09/zq0IybqH8ZyIclAK8GbxlqjSYzsdLs7ZiRAU/O
	 H3d+qvpWZwzI8VrsZNwDI/vbGgZbb+OrJz0T5/RSFyGT/7O5htetZtxPEFDPZ6stW5
	 1hyBeirDBiG5QCGeM1DhRXhpiYveuSabcwzZXVmmPHd5m2NMq/FUY0VqF1Kn1Wq5dk
	 3iciGk4hsrhS948gsi5ktNFBgoYY2DRtMzzfSP9YI05p4oGVGgIlgO9nzytD+G1Qp6
	 U4GYyGAlvfk1zcRigxT7qvaHzgVgnalXks/Bvq17vbQitHao6B+jBq2WbGAMRsuzIw
	 zs2njWOxH30dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8AEC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719306276.15287.452976721325999331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfdbbd7964ca8c3bb203b48c3f301c8323fac950dd74a1f8b01a4b3fad242e9
Date: Fri, 31 May 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717193062

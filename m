Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA9E2F2A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721707554; cv=none; b=i2Sgrv79F130vNlMxQLwg55bpY5L0Tniqp8Zing7moJ/pfkV2PD3/W0RdhhDg+lWCa3YiMKnkAHjGFc+DVtVdomGRJZEV5ilDv9YxDsjNi7T6utCuY/nqztuILWT0AoRBA5erKfCd2eF9C3maWxYTAhoqrri1ptJ6ZPoPFsPAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721707554; c=relaxed/simple;
	bh=bRAFxQI1KznRrYn6ADpPjgKutg8iKxIsXZgnm354WVM=;
	h=To:Subject:From:Message-Id:Date; b=pVL4KUvvGEc52QlUTaw7rR9ZBvwrB8t9Jn4/rjy/tnmGDHgoCiBmz5lIYTBZDVppbHFjveZ8Xnek1tM+0rUkkUsC8/WqB9mMKczJDcikvcKM4WQWKza5Z3AZna8sog3ortVlmg8+IrwNjVTnP+0NuW4Sxr9Swv1hE8UFiEH0i3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwaM9lAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwaM9lAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDACC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721707553;
	bh=bRAFxQI1KznRrYn6ADpPjgKutg8iKxIsXZgnm354WVM=;
	h=To:Subject:From:Date:From;
	b=IwaM9lAlapuutRm2dAjqdiCUD5FK3n1hFdo+hunJk4bgWwgmI7u3OnrsplzvGATUe
	 hiLpehiAHzH6YrvWMzHDusV4rbENaZY5grTJ3Ne/RtV2/xYmfNHV+OGdZuQjNKQT3d
	 QIMgTzLXjntedkPUPDz6saz5e5OY2Ueyuzrp+xV2/fXfauzzWwppqdkeYF+yxLw/qr
	 AK8iiNcNtHV/+QmrqQ78HOPDcrfO0QIwFVHmZ5C0FOC2OJuQnAt7JGzy08uIm+D+Oz
	 SuFwdbv8SzSdH7RmAkxqXP3CaL6X8rdLDX+T0lvbf47atpm88yI1zemO4xW4B/rS6v
	 oN38k7yHjxI0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE717C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170755368.3069.12418690301455116004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76eea4c44d4927ba9a8e98c43fe1b162893bf20f83bc9bc78f0ef3f8094672d0
Date: Tue, 23 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721707553

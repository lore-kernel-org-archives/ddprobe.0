Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165F4153BC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721743554; cv=none; b=DUFLy/ozbGRpThCW4BXdrlPacoegdqyHBZUyLyOTcRB9kzvPPnsX8BjFYN6NVCyZaZ/M57jMHVB2YPzntAtSkkMZlQugcbEJ0/zIiZgHmhTTYMD6d/rhTkoT4XH+rBF74DhfkNkW6SdnAaAaFBEKr+SRuIpFy1ZueHMrnqCQo2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721743554; c=relaxed/simple;
	bh=w4y2fAneKJtozo568pibkr/S74gELKiK08HZfkSIdFA=;
	h=To:Subject:From:Message-Id:Date; b=usR097fasRIw9M8vheDF6UtQO3Wg201MJ1BYtxqfwchw/VQrY2+VF9L+HbPDIq/w32LuBSQkOcv9oX/2gVK+PLmcicdZr8DUALRhFhaylVR+x0vfP0PNxcJIbrENsqLecTDO6msudYIhqIJ6tRdyerjhCyCZEwMc2CQY8lTuFlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1okUxN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1okUxN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5299C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721743553;
	bh=w4y2fAneKJtozo568pibkr/S74gELKiK08HZfkSIdFA=;
	h=To:Subject:From:Date:From;
	b=J1okUxN4Rrq3IadHDDzblUPhjSnoeaSl5YOYbx4KqpWTsKlPZkuxOjkEcKYcmWwCf
	 oWikzDff5zXF4FF6orBkLDadQgm/H2UP4j8wUoG7gyL/ftDBkyPO5dv3XzjzIHM72C
	 sk9nroHG2wWY2qkteskN0KcTSq+mwcPqI5wj+pKGmwRC1Xq6k4QzVhc0+9Bvi8Lzm6
	 Nu6DhrgjjrSw00MBRlQO0boCoJPQCUJlbpQUuwxtTrWEoz6yyVMxQ2lamlxzrO6bFZ
	 KmPiiLBPEACSypvD0KJLAPXgOqz++q0y4H6MYtwh1oVp/G8HhsqacgtOg4IAfUIgEQ
	 Q3VeGZDQooapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F04C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174355360.25391.15398752365767270705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495597ccaf66f648bfa580455d32ff13afb83a7d7f32be336342bad698bfb315
Date: Tue, 23 Jul 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721743553

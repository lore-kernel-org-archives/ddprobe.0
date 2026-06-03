Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08E349CCE
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780498474; cv=none; b=TKbHkOG1pVFbObYZmxGxLeIgUyTYxKoHu9Qa8DiDudUPhcU5Lg3CSwr0EUmYU7/OM34nFAK2Bphofx0DojMBWFAZojJZ7JtySfaKyB7TSPsTydwLowzST8OhLeOSiRs/9rmqyNqNs6drt7CT+9LUbvkL7faXbZ2Q2Uvh7Bt0gUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780498474; c=relaxed/simple;
	bh=SYZUEzktTnCCAXd4nNXiXemlMexIkxZMqdu7sLI9pFY=;
	h=To:Subject:From:Message-Id:Date; b=KY4jz6DJHm09ByZ6zqzfV2pZ0EPiU8pWd/p5ZuhhmcMtXqX5lsd5PX6Yb5vyDhUeMH+aAtRMoTnkaz1nsbJSxWFhQHoV5EUZGN4eS45hjtuPFDiVl0i1HdRnvFjUBCeAqKkLQ9tEpbEjYJltjwPT72d8+5LqQeMOVuyhmkR5TU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk9lIXFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk9lIXFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42D5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780498473;
	bh=SYZUEzktTnCCAXd4nNXiXemlMexIkxZMqdu7sLI9pFY=;
	h=To:Subject:From:Date:From;
	b=qk9lIXFK3GjWVoRqwpfiEsRP8gUQyuNuI6TUxvkv0MJ9LiPz3rzqAiHRDPM7a1EGL
	 dskwHCwCn5YoOYD1WxxVnEBv+/kbEMeBgCgpZmo4KH/0dAIOIy6hpx0E05lO7/m3o8
	 e4CeBTkRE5/DUR8nShfIvaG1XFXvqBxzQPl/BsrLXEXePGl6zBk2OVT1xfujq4eEBk
	 pwjXkBFfZul2t/xbZO/QYifmJvLEU9Dp2lqHO06OdbyBVo3F63FXVZfvds5RKeBcnG
	 UGNDda5cyOytfNexFDIuSNQ3ehmmJMLxiCAC6hg++jIR0rI2Hx1PQNLufiGPZ0sStS
	 BKDCPYgiin2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B23CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049847368.4492.13503047660524809613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434913018b51a49f984884fd272a61ef79754e7f543ec835a89997812d3b299c
Date: Wed, 03 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780498473

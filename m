Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C57557C9F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781063134; cv=none; b=ixMrneXo4G0w9f0IWgI/wHSoKaQvwtmp0LATNp0EL7Y34rTpklQJkuhmcqKs3SCzPNaQfCUxO7IZhcMBrj5Hhyl4CQ8ri+iybJ+o/dGBBpjgPdOtKjuTdy8SIYBD1eBGz9GgH7X2tOfZkxiLj6tNhFJgqeG/UeGmAHo4cadzKCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781063134; c=relaxed/simple;
	bh=D3Fx8TGq6tgx23m70s52CnJ9SBv7wSIAAA4Qr3Obu3c=;
	h=To:Subject:From:Message-Id:Date; b=hHDWmE99icS0y+ZyR0VfCGsox1KIGxxoOQH/FkkeLWw0h26uWZ/5e+ISLGli4ukAf9VD4KA4yGELkhzBDTNMUeBJADP7QE0/prvMqmnPZP+8OtX3mgxad/UFdMWgPn4l14u0S+IfC8HDc882TJzQvuDsvA/vAnq1n5zOCOUY2kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRFRWFd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRFRWFd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AC7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781063133;
	bh=D3Fx8TGq6tgx23m70s52CnJ9SBv7wSIAAA4Qr3Obu3c=;
	h=To:Subject:From:Date:From;
	b=IRFRWFd90a8UkeyaJETa1C7hdsO9zigN4duT1cpUk9YJGELTl44wgkztu0YN5G6xx
	 wG02WS4zdY3ZBpXfiNPCRd6Y+vmihXZ29w8fGl7d6U4clfFSSvD2r2uCqH22FParHw
	 v5TEgs2ingz4erLXHJWh8/rQs7SOreCVGMoKf7jGndoQb8kpbA9Ek4frPVPHGv2ry0
	 wxKK8Q2mefNq0zdrbstfluCkb5DJsk/kqxQhFl4Iog53SQWzY1ePiYqdW3uhd94YRN
	 7XPZ6Ufgw0yM3J3FAKcI/uIB6XvzX063hI8r/9nbh17uycerRibTufg0sSjnjQmenF
	 AX8hJWBF1V9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC681CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106313369.10759.1416389160035369772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ccade07efdab333bb348327a2678c94e870afad1e56abccb9a9e83aedcb7f7c
Date: Wed, 10 Jun 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781063133

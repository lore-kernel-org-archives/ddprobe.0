Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4017F1FCFEC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745789994; cv=none; b=f7mu29IScS4xibqc1aHz+RzSC8VDcMiqgVKtBzdCJtiRfCHalyTf0gk8wNQOFj3n9n6kUfzehYYYRWNA63iUugQoD+CSdoPUwZ5xwBuS5Wkl3xS7t1Oa9qMAo7vvdG8V4FegB0Yw+e00+E0VZYHCOvYguuufAOB9EEi/I5GbCRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745789994; c=relaxed/simple;
	bh=rtA+LIrjiWg9i8KjR/4RoQ/MR3E/z9jpW8TmIasdZYU=;
	h=To:Subject:From:Message-Id:Date; b=f/cXOjpY49dYzAHQZTydkGYs6aRJ5I+bKoRt//2UfaM6DFmPVb0iqTQIRMhfp57AgSAjszUzr3RkasReDXt7iPrz4MNdtvk2kdRoEaTUp1DWUt99HwxrKg5XjuL0mTsr2e/Pyr86PAwM9QSvBurE6UZ9x0dSjyMgVND16ra4d8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9K/95fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9K/95fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6150C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745789993;
	bh=rtA+LIrjiWg9i8KjR/4RoQ/MR3E/z9jpW8TmIasdZYU=;
	h=To:Subject:From:Date:From;
	b=M9K/95fVQUapQP3FHm6Ou/b4rAZ82AnzmN3pxdmfsnSm4HttePpnSVn/u0HBVYfJn
	 jZA9Qul0KrngS2P2nE1HlR9jIxyab+sQqgTztBxgax6GtKXSKu+wn1jQsOYTDcle6i
	 BqUD8nSkup/OX2pvEgR2IYyUo6CzfB/HcMeiIqMjT8CTlKqwYKLKLtM7FlagWTkb3P
	 wiRZ7XK3tgWHTiZb83NLbWKJO/Wgiunl4lQCYguJjPbTJ+OZ3VVnvOBUJkSXb8Xrkp
	 oH/tWbJSL/ATrjGjpiX0AIXqI6ywR/+oEuvNf/y020i8P3stiCuKjddm4jpnaD7fHR
	 E7+MssBdylTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B23C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578999357.7143.8788392247935199039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88772792b39ab4577f872b440d24f90998ce213c3f010ed6fb23c7ebb42fa301
Date: Sun, 27 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745789993

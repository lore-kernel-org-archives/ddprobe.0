Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185185B21A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771277094; cv=none; b=mnd29cj56vr2l9EfcBMEUkUQhHI36SfWre4VKHChCJhzKmTiqFIRMiaLF6dr4oJDqzvLHxcPma03pIrkxWo2JvZr3vyAKifjT1TNCyTtAuw71w5kpNYAJRIzZmAU5cQzM0TIPTegIboUuSBICB2rDhCWBspFdvQ7KlsUpqGItvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771277094; c=relaxed/simple;
	bh=alkMQ2q1uqUKpYW0BUgc614I8lOw9F9vy+vDJ/UPmGE=;
	h=To:Subject:From:Message-Id:Date; b=a9R/2aCqnDQMuOSIZJY03yVnOTQHA0x2uYXXG3Q/vQtjVy/pstYmmBDvHCVUlw8V+wYCjlaS0mWz/+BqWnZwkJvawzI7R/M3jgYxJ8jQzXrBpVP+k8E4mlf+mK7ukhGGd79xSuDF8PXrbJ+rF2udq4+OjlHKWYImuMMLiTEpmA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFvFlY8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFvFlY8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771277093;
	bh=alkMQ2q1uqUKpYW0BUgc614I8lOw9F9vy+vDJ/UPmGE=;
	h=To:Subject:From:Date:From;
	b=PFvFlY8+0zRzlHU149mGuGUVbxdJKX35shDM5Sc6Us1+AjWQ7+Yy8bqKGkwE/10+5
	 uB/ySnPMVqKVyLJ3Xi37Hmi6ME1Y+r71N2gTEgypVRdNsFGx8hOq4mrZGF7E9nu+wi
	 /rPX5BtIXjgKyA0G4rNL16pSw07pAIxTpHXazsnn7mKBIMzHByUGHrJstSrwVxAZZv
	 E08kRyarOfh1e9ttyrwb21Fa0LuIDby+hSY1lxGRekLzZUcl3APzMUkcZ7opm29ikw
	 +V9Z4QJgTs/FikXlAGgLWv8B4IC+rY7rextadPEKb3jwKKuC+hnKhFHTufYbksKIK9
	 xcW1xzqJQel1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D78E83836
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127709359.25771.1738889635470875802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b620937bdae57e47c3ebe916dd21ad1025451d0390bb42a66d51b8cd0fe17a4
Date: Mon, 16 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771277093

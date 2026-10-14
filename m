Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A13330D25
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791948634; cv=none; b=IBrjNjc3VxWi9jVvfSiaA4fA8cc1MB1+lZz0TvVpaDYIZOReY47U6zIu1rFumo/guobTlzEI9gUKb5l7VvM9tkMo5XgVSFhn8ckRNrNOG6dxxX02sh4Rk3ke+b45Xq0VDE+i3iYwfT9PENmWNo8zKp66XUl8I8rX+OLD9YR8LuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791948634; c=relaxed/simple;
	bh=ha/4YPLcnE2SirbKmYr3sNdwpRgqXFxYrsCc8Ogbo68=;
	h=To:Subject:From:Message-Id:Date; b=TsH5156+IPcmbasLJtFuHZFxD/PCOcmfC2WKlBFJ+VkW188QCN//HVTXqgZCes6mmHpaLLfVP56vgjtNPlKdlq+le9ud1cTCGeU6YVhRm1GQy4sBwVshqE/lzkecGyfWJ5oBHe0xLEGNhnQB88fI+7wt2d4ZlH6DGhbPuyA5Zbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4QHV8T7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4QHV8T7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C78C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791948633;
	bh=ha/4YPLcnE2SirbKmYr3sNdwpRgqXFxYrsCc8Ogbo68=;
	h=To:Subject:From:Date:From;
	b=L4QHV8T7I/mpTgwRBTL/OSByX/uuiyjkyeuiowZzIr+5ewi2YgOlPiL+WPGJDaKII
	 Mv9eYrb1qwQ/r9HGz3m2xg5VGHYivzrCtfSDUsD5hlUVlka46NUfAQzxusyjpKsgnh
	 qFvKWCEq4WIeQi/PJfgSwhy8YaLK/8OUOGqjwh8pZGW89wKOfbyVqmCLujxHRBnhCA
	 jHc4NPltG7pU2JpDwHDpd+p9Cqc/8Y3bdG0nvnIDkReVDrwEMPdRxvzt/YLxMZCyQh
	 qhokpHDIesrw1iiDdbH+evumWvBpuz8rA3InI5/H6/Dkc5gOIcl1p9PYUyBjVZj1/C
	 yt9XXRkhR0zVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3854CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194863372.3528.5048749317180959732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102b151bae2535dbaa904a54b72f77fe92e18f2ebaae9a80d7987260c36392bb
Date: Wed, 14 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791948633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B73521CC68
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753687194; cv=none; b=pzOYuGGxEt9xmRe7wUXzGIoGDgUMyh11hda8Aclb9Dld9dymgk4WeZXQmRI+I3tSam6Oc8B2k+HXLvb1E/d8Dek5ukYDFAqOmx4p44VebVCQ65Wm1LUMdSMHb8sl89cGjFzULwVhSo+DVPvAI8P8x1KPUiRCvBeGa6mHEHffztM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753687194; c=relaxed/simple;
	bh=z1scgGqZdMWna/ViJaCVTReJ7wrNjRUhmp9LSEWBbQM=;
	h=To:Subject:From:Message-Id:Date; b=Y415wtH7gyYe2kbHpQ9ybBmQncBLKH+DZryEA0Is8qpnEgdyI69Pt+xJ9LvRdCeuOd4vm+aEAqq9BJeJV3FeyeSJDTlUf2I0PG06JVWFlAxsU+txRJUT5s1NBLhn4zhHzkTPUaZ9S0lYTih31iDnDos9hu/3CwzGXWT+vYCAt3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLmaTozw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLmaTozw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753687193;
	bh=z1scgGqZdMWna/ViJaCVTReJ7wrNjRUhmp9LSEWBbQM=;
	h=To:Subject:From:Date:From;
	b=WLmaTozwk7uAfcI1kI9cnrHUJ0SAbjnazUNy8bOw14ktuD9SC6eVHnSdaQPYe3zIy
	 9UqdPXz7DCUpYNCjHXM57viVVPbqC19cvHZuQExJDz/7hZxeSAYGqNI294rQwli5LZ
	 SHnHPstBXvf+JRNNQzCh3c83kR/U3NBnOkjX+UPBjGnDcqxNCFDtKRHq3H9RX72845
	 I4HGnGV8bOgeD8ZCoBM8k41eBtxOqa7HqnXPjXQgYryUPfm93n7btvSvja/yaqXDNz
	 Jdpblr5I9+jKfKF4BhbchdH9DXk2LhhxeKh2ZGKmCW5nN73zPCgEWKMweOGG04e0Mg
	 flm3mWbGkI7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C24C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368719357.17445.9176818662497374789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734e0441313fe9b8bbf3c870039b65a75c9bbf6e05406ccaf8b1deb44d9082a2
Date: Mon, 28 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753687193

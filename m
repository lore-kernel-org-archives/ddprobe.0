Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F66184
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719273803; cv=none; b=Qc5XK0e44JJ3UXZPv8psGL9IgJORg61WjutZWA2uNS2Hu/mMaE/VHllrleueMWC0fEKSYZ2TtgEZsc2MPTizDCokHdkZr3D8Q1+0A7tP6uetgy5HtFkZwVHrLyx54yGktyRKjEQgIPszaZYXpy579JUeNOvvkG+y5l6O9j82MYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719273803; c=relaxed/simple;
	bh=gqRU2PLIod0xWpwwcCthF+PQJhE3iaICCPqBC+nQCzc=;
	h=To:Subject:From:Message-Id:Date; b=j88YJIDTTdCLg4heHg5uV9aDoE8cyHZub8MxibwlJZJbVzDOe7yjVEGzW8lnjGc7jNGLg5IULolIEzYtC1Bm0sXFvw2ojpc0AGuzbSqNSFi2BmarIiXNAE+eTBGokjghoD5wpQT3eVWAgqz4NN7Z5XUmdci1ZYFNsgVBckr4Wwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac8NfTg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac8NfTg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F22C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719273802;
	bh=gqRU2PLIod0xWpwwcCthF+PQJhE3iaICCPqBC+nQCzc=;
	h=To:Subject:From:Date:From;
	b=ac8NfTg43MjG6IKb8EsnT20ajOqZ15sWkusqcPiYFi4rOq4g4xKRiIHcCxUCj9CD7
	 1lIWA9Zd86++hO2dMgmFvvtTlPo5+hkONEx9GZCFERs9CS5TcO/zHI4jXI8QbDvbDf
	 PJh1yRXsSTb9+dYGv1sUmNT00RAS/9FueJNjzK47PVCOqU4OKEsC/xwhuRuhDQ9/qf
	 oZF1pRnYeRayVdRmCImKi+ieOsJ68jJgRjf0nb10XerNPo1mAZvBwyZRKjIJvX3Iu8
	 PyXp9LaDYZDvIKUxJHDl0S20UPDn8nXwwIrMzvOhYpH1gRh/B2ideFGVW367FZn/9H
	 VYYOvYPhdqOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBAC2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 00:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927380277.2284.12032070965096097685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927fa1bf999d66068a5eee81b177afb3cc913cc001fb0b3bd349e0b09dba29c4
Date: Tue, 25 Jun 2024 00:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719273802

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E525EF87
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756553994; cv=none; b=X4DZzqIKjM9AszqYKbhsiZwjL2HbpAilQuumUcXCkqGP6uDZTNHwtk5xKs2fBkRTXTgu8Cp3AVkawoOazZ7bezGm+7TSmvE7SwHnFotK1raLwGtXvp6qcxcTb8KJOa4wGi/qGfqJ2+k4qslPk88AtA471uugzgrVT/bvNHyk8Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756553994; c=relaxed/simple;
	bh=Hd31/hZxmfq+sywHfbjoCIVGrUmr8zih4bmM5wuvOvo=;
	h=To:Subject:From:Message-Id:Date; b=XkWA3CH3U4J9xNok6/CXqjnLrc+WgBoqhVfqE3vvwtyIN47zsGRDwcrxhCzexhHABaGodwLK6DRJiJ9SL4IIGpA/48tcdS+ha8PQwiRRqudDMGnEJK02gippiGUpDjCCG+ZxM1yg9Sxv++GO5iAcrq5Cg5fS2n35jfaUHnaRWeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFRRyiWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFRRyiWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B9CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756553993;
	bh=Hd31/hZxmfq+sywHfbjoCIVGrUmr8zih4bmM5wuvOvo=;
	h=To:Subject:From:Date:From;
	b=ZFRRyiWxI7Qy8A+IZcUihdtYcyr9GSLsnP8mRQHNNbEidVVK2rHUURrrQRFOgcwMz
	 7m3lzN54EvgfjqAHGqp813Zo74Y4/UukQb3RwPqSIgNQc4OTpMBsw8RghdOEDf+Paq
	 TRPfTh4I5CRdqnvVNLFr2QuWW8qnJjWmwJFJgqE0+yGgiaGLr5GlZ9SO/wvDPowxz+
	 q9uPA/QyCu8GJxXYk9JIOl1X78FugfGqOdGVKX4/Ezr5uN7Suq7PeKDFA970q2iQo0
	 Wi2V6TXN2UIBd8kW21JcJTI/os7DDQ3GCy8gnEJk7/bhfdlQUBpr/Hw+/WYiuCCq6V
	 hgRuUpe8eLzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74ECA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655399357.28865.3478944991700991868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acd1fad1d6d35a9e5d65387cc42b7cfa815653537dfc973c7567e8548533e40
Date: Sat, 30 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756553993

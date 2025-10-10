Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18A426AA94
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760134194; cv=none; b=Y82NybfP2SxPptA6DXGwZFKn0chOziNq2rz+F1DCwjq5HajbN8xrIEPwcmfaDlYFU+HFvpHotTx5htxGNtf9Cb3oi4+CBCHtvMtvBbuVf2r+BQc//hmEn+xJGfkvHWmVI+C/1KqOaF1CJfpnfLQrVNKc15pp2GqRNhMjPKdSIsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760134194; c=relaxed/simple;
	bh=P8IATDSu32RdBzRzJ+REkdu/XnZvTi0KCl+PtxEKIA8=;
	h=To:Subject:From:Message-Id:Date; b=fECzz57OmxPZSWT2K1GYpZMKjYbdlWeX4CSr63W5foS8G506yyP1tl80G8yTA5sQAUB1GCPb76sFY0hBQCSD5fx2gDx8tsxsvik9ht9E0FgM1CTjQ51i1OfaxJ1S+yLhCWtxj5kvvsiiZcaFXY3d8hYABrUfjSIbBCZbHajtrT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gERLC9k0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gERLC9k0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760134193;
	bh=P8IATDSu32RdBzRzJ+REkdu/XnZvTi0KCl+PtxEKIA8=;
	h=To:Subject:From:Date:From;
	b=gERLC9k0fIR3yJwEfmGR06gEhIyjhgI2MGrLGQuoUGIESdHN7ZTaWRwtfIxmHYRlY
	 i3T/2sVFlgcwE6UBQCkUXxPP6N8H5LdL/LEZt+RMdlNEhf9hSeNQ00zr+UGV/NweNR
	 GtWhRsBzTDUr4dxhZ/FSH5yIDA4uh/VQ6Il0m1MyHyB0uA5baF9LUB489uC5c+lKJy
	 iipLsYP7ff7dlCtXVtG+woSBA6y+t6lCrPxmT4tKVDGHxXK1OxfhS89HLC5Fc9yrGQ
	 pyGxEx1KMXskz/pz6qpugg8sp7steni2OaHk9PxN6I4ZzG7Nlz93+f83HoDt+mO7fd
	 KA24z4l4FpTJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F62CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013419358.26664.934334792729889667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77411895dee9fe57184be9e118a89cd2efb1f81b97f72ac16dc9756d359611a6
Date: Fri, 10 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760134193

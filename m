Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65B374E5C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779117634; cv=none; b=cuQe/axOt3Rji0RrBB5/ME9WfDAY9nu0iHgLeyvi7DSnmlH3b5WCs81uCPcP0hqR0WSukO2XDmNg1tWA1FNOrffo36iGAu9bvLa1R2Z4Y/s/wgyVYGlPD0ReMlwV3xM4TkXPkk+tcaoFRCXOlE7FCHGDhxXNwPP5f7Kb36BTgAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779117634; c=relaxed/simple;
	bh=7ey+D/HhDpveZKRmWbFjCGEtqYDI+mX3u+yVTu74irc=;
	h=To:Subject:From:Message-Id:Date; b=d3FfanTKY19ZZ3HGPb30P+tcWY/PWZe1MgRMsacFllkrv9JIPzUyE5Uzq1sY+4Rbj1NzLmU6DxvNZy+U5Mkbm9cjqInn584dJKQgqn4KBIFPamUdVH5/N1tp604OXaQtnY9vLeqOegqsF6/rKOg6vI6EdHKshtz3nzaGpSVDFOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdN+4v3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdN+4v3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6F5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779117633;
	bh=7ey+D/HhDpveZKRmWbFjCGEtqYDI+mX3u+yVTu74irc=;
	h=To:Subject:From:Date:From;
	b=qdN+4v3i9MSS2kBzqtg/WQltU3ghThWSsefXtObXzawQ4Gq2YWZM7E4MvUwuG5H2d
	 owk8MEjvPyIqB/4rcAlr3nq/L1WiaWRSlDgbh6jW4Ku6BJ/+pt4Tz65zQOhSKNA2Rp
	 LH4IB/iP9y8MuX5V/7RPjytNbG7AaCO9xAZsN5eUStrVgclC7TAATyahTtSxlRfriu
	 +lGl6DFPsStfKpg1bBvtFlxRekhicbzLuWQY4e/LpkRWCzH4gCC7Jv28CJNeyQmJ+g
	 212QHFT+8AO5nEi5YhbTa8j0cHC/Jf3UbTmx4iaDLl+zEkuc48g+oOTNYincqLZNy4
	 CXLZ8YJ/B4wzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB72CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911763369.13798.18327929043415482880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197195aff9da2c36f56f0a401406524740f7c3f346e1c1f8f31e809d8ea2b2dc
Date: Mon, 18 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779117633

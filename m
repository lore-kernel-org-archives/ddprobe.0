Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440972192E4
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765704174; cv=none; b=QLTBWYZxFOd43W6jEd1ZT+7fzSuDVaaeuwuzoIgJePlFgrSmKuP4kF3QwBwS5ESSaOYMH+sdvKQx7NFq0BbXSeVp2+a5JUya87eZguTwDj63RMx/vOfbAdStfHfwVmKA2U3KLJD2J0IllCPw3SUmnZz5M8elMKwsXxZjVqWAw3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765704174; c=relaxed/simple;
	bh=Jhz9ZK126sbQh0q+j5qci4FRKiGgTs56zAmlHPyH4Yo=;
	h=To:Subject:From:Message-Id:Date; b=kqZIfI7YVMXzo6uzcr6jlce0TiY1oV5IuH9uioLC8iPNEPrh0B5qkqkeezHeY5IQmDaIoT3r7FURzyS9/oBvFJkgbcsmAtwWNZapffWnFlDqxi2bgSN9nixYRy2SMjXYXrJA0f2CxbvB3cFkCVuyd+maij4Z9aT234nfEh3ajvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe5WwxiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe5WwxiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C41C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765704173;
	bh=Jhz9ZK126sbQh0q+j5qci4FRKiGgTs56zAmlHPyH4Yo=;
	h=To:Subject:From:Date:From;
	b=fe5WwxiRF91XTaGMBwEOT48A8yANbMWubIZnlLC3cWfnDLqJzdfWFZVJCZIl+tptE
	 +Fmio/vMfQnh1NeggYGqcRei8JW2SDJXISF+KxzVFWytLZl0+OGiEdxXcgh1jJxEFw
	 AADYVdPT7R/c39piPBE4ArWidHbR+nEGQ3LYs1Tgqldqib9d81EBlV6EtdqByNLQ63
	 uTw7zYuJ0w807WEU3/TLXkvmX4ucfJgHCWtB30qpo0B2NC4sEbl157KEh/zYZsCPQb
	 MoUA5rCT7SWLirhmnVtlLVzt/Xwl8nylPqbPQcpeeeCRQO1UbECgyRKnQZlM9ACYaP
	 SzA2PqjLEOW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C52CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570417363.2275.10684742864539695589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1586f8b97d7c38bccca2d598897bbaae453e13bea567626032a5b27649a7ccef
Date: Sun, 14 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765704173

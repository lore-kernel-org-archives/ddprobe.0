Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2759F2566FC
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762015794; cv=none; b=CnqpTBTY6mn2s/slx1KPKz4VePTeVkVe2B1r0KGylYILDp2S1YfqKI3K2l83kfLQLt0CbcNsfUU/RWDxfR5tmGfdMd4mT/XRBAVfUslYq8b8GL5c+wtAlgv04NBM89S6iqYMIG+jqT+uKla3ak+gG6aObYTRrmxh3i27jK+c7Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762015794; c=relaxed/simple;
	bh=fiWtjXyHt9eS4o7GLdIqkQJXpESWc03jYATqGVX772M=;
	h=To:Subject:From:Message-Id:Date; b=EFOoew4+EmrDZe01sdhkzHIEW/RfKHWvPJ24Ny2UQnXBxB0K1qwEb5rdxU0yIf8W4hK2hbjgOEGmmPAFwNkfyEPyys/zPgQ24aw2agx7mpONkFXOJfbOo+MEwB9y88nXPPCjp0Itjx0HGXx0Wx8q0+NSXtEMPG1udbcLAh0Pphk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmH05FC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmH05FC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC31C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762015793;
	bh=fiWtjXyHt9eS4o7GLdIqkQJXpESWc03jYATqGVX772M=;
	h=To:Subject:From:Date:From;
	b=hmH05FC1et9fRnqWreSAMWatswo9LCDspMDb0zDHM7pcP4TFHJumeyPCy7GGvW3GD
	 xZJYQPAGvOoZYKOowZGCYmm9LWrt2IMRH8tlUcvuMFPRf3sm6IXUxaU6QLCS/V0yqw
	 MXa+5cBpKwDCs+OCInzgjyFyu0I58u+d9o2VKHc1mRnlBLwVO7lBoehRvaKS2Wfc9Y
	 l60+55aTPa9WqfprCw//qGWP7WfcvSzOrjVoUDO/ec1Owmnw7N7GwdI0Ma2CB87are
	 j4C5LL7kUbWHOMCp9YawA3O1rzoG84mXq1SkCQrHZSngTHggx6ff7ZDwgywm6qSR58
	 JawIIF5cc5JZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99057CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201579358.6616.2104241710404391959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821363cc7588983cdf2fb9c6e576ab4a564656ed41aec10d5108c62d9a7b03c2
Date: Sat, 01 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762015793

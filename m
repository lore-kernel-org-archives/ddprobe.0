Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A28313212D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720511183; cv=none; b=stxFoBfhZOkKcVXvGPinh1LWnBN5Midr1RNLaAZf50qozV3zxlzymL0nz9b/tenQ7WF+iIfZik3J5aV0cXo+u6vHtmN/P3ouH7nKu3QWInyptY+amkOkfoHCOGQkD2iJUxqXyi6nSl9Udzf4WtWdzG+qsJ3kV2R7SvEcMtLegvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720511183; c=relaxed/simple;
	bh=R/OvVAcMSVvfoCuSKRzA0sTvI+ctiBiBSETPWZ/7kOc=;
	h=To:Subject:From:Message-Id:Date; b=AOej00LnWxHtSoqm4YfCb31boZ84Od2O0dKA/lyg15RugkGC0bQJhdoMSkJ0PhoWVJey5yqxK56CUS1ueuacxqGUJYxFalCFHLzUI0NEVm8cwSGqD49kcqt1byd1O9XBSpOgU2K/WhhkQQis9Qy2xPQ1oB6xz55v2QtXSPRGHjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCLyZ4Iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCLyZ4Iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE45CC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720511182;
	bh=R/OvVAcMSVvfoCuSKRzA0sTvI+ctiBiBSETPWZ/7kOc=;
	h=To:Subject:From:Date:From;
	b=GCLyZ4Izkqs6JfxAdU/kIyCCbin+kVTM6WT5eCf4fwHPeefVGC7M6ieQ7mOKowS4K
	 qEQJDYeWDD8Q8he5jgXbmiaRSIUEZxES+U4ApKPtDhVgVacznWAmurFg0SFzfU5ZMs
	 iFyg9cFU6NAeQaXpH9Tb4U8UCU+nvR9DEXo+7elSGecvIcsppHoJT/0xK60Up+z3Mg
	 vydqRdmx9tKUlaXUylmeF2ZcSwh/2KV4grykU9/vbOdi7z/e7htp5Rgl10u5ea3zpy
	 zh8yMBqtwQMRdAC4ycMKurQso0yrq9WaI0jatGKfvXq5gRuXB7y8TclRr6o59wwqts
	 KLpApIsT2MLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D6FC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051118280.3579.4486353894035648884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee61e64312d6bdacb3460a71bdff62d0a668978ff84590c6e2968084a8fa1b2a
Date: Tue, 09 Jul 2024 07:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720511182

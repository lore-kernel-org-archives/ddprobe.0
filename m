Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173751991CB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272174; cv=none; b=H+6tAkr3aFhoBOeYhdie9u9XRaCZiaRou4XuBXv8usHCckV759d0q974VYOkLd6rtduDdrbjwrwbbtwGkRGZ+XfBigzWUqjX9V7ONYpJxfpRWg0Q9w15erqg4vyDaYkRSYy+tQEwbbFcVFDTP4EGpm3DvwBj8CNa3baW2VIlvWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272174; c=relaxed/simple;
	bh=3YfYCCviA9lmPASFBp9pMd8YIN4moNjNeA/4eIRfwss=;
	h=To:Subject:From:Message-Id:Date; b=JBhmL3dnl1+XRXVQ8IkyP6jzyWNs7y7/0Ry0Ic/R6iRMerRVPpKFfovdTQ+d3iZdyXwMVP+HO0OsmyITDQ54xQw0Uwe5KD4RsNH4tVekYJOjY6Uyb3RXe57yCGLlFbLypUL13MAUdTvnmUelYZoTPmIHFBNpbYOk0UorBv5DLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDMLqPxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDMLqPxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765272173;
	bh=3YfYCCviA9lmPASFBp9pMd8YIN4moNjNeA/4eIRfwss=;
	h=To:Subject:From:Date:From;
	b=BDMLqPxS4s3Nc962j7uCw9umqM6/WdGs/fndrZxeIZSXJgoO/a9sgUiOAGnc0YXOS
	 w+LINrCuzpdxCcIMchZo/q7AslmcOB64l0UejZWlBWwswAVtyUnI3XZL+GAolF2C6w
	 aks4mnczMxnatiI0mR3Oqslpo8JqPJXHM0MF1aVvi7T3BE2U7ViBu+lTzOJ8tE5CPL
	 tpHf2rS1Xiqg2DsJJZj+9ucbnPGNYRYmuDXhH9vWJkyHPoNMM5pz4C+cORghAs3hAk
	 6HfsIkgkZdpSflrgDK/AdkctIWYPArUVpPnXdNna6z81yk6AQwdhJpuUUVV4NG3O41
	 jfXgbDfaR2QsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196FD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527217358.5294.17034582195508311428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28583fed2bab4a20663bf7ac448060baaa4186a3fdcabf89ff432a90dd822674
Date: Tue, 09 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765272173

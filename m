Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF14A23958A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752515993; cv=none; b=pBhPVi0VGiRLG1/iAPoWkieBpVdb/olmvPwoB0bz49XPNX8dENDMUDarlBoiXPi6hiar6ng2NPI+iI1ciXK8QuRpdJMkcWNsYzBb8YdhsofODKVdzlZjCCeZP1NPQZIg/H+Y9AX2+BLaZJgkosVYVuFEIDeOUMMOzTwpn6QR5Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752515993; c=relaxed/simple;
	bh=qTe6LBrx3lL52+ZbQAJiuSLRdA5lYf029bUGPaUDec4=;
	h=To:Subject:From:Message-Id:Date; b=sv7AtGjLywbW+IJCnZPlpFKC4UWgNKRqu+zZqbrvYywoqLb+eoLwihDSf6chN/dwjMqAmTkceJRBxcbfP/3M0FMcUe0nTvFKFN6s89kwWMg0CpX+z45Sr21X7fxINAi/uV+fDAziGjdFCv4+ZG6DRSNaFjOGM30IfZ5eqdmE+/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCpX8BSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCpX8BSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752515993;
	bh=qTe6LBrx3lL52+ZbQAJiuSLRdA5lYf029bUGPaUDec4=;
	h=To:Subject:From:Date:From;
	b=mCpX8BSuGafeK9DuEDOMQ7A3o+RracRDeShiGQUOtWvmiEXyrAZ3hjLRDcNP+VkOO
	 ochbrZiZzIlO7N2hdbemcqjgJ4m6iyPKDUPSTEbLEEUpSd46JVf3RQ8aUmCStcuOx2
	 DzlsNoRObeWTTPWV8xlKezDMpbnrvyjW1ukaVHKIms4SXqvziwWqSWbsTGan8GD0An
	 ui+AqIkbrymtS/bXT5XeodmSHMuiTyXnLumqYi6UQmfRAzc8+g9RGm8NkqVQ62Unp5
	 VZ5F2y76dulfjDtcIYB0Nc2KCR6t/HEj2PYcAGYEG+x9Uam6fUa8z/bLD4FXFrnNWb
	 UI91w9huhobSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93458C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251599359.28868.9496823718183322011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd59a505b2a895a8a1ef5ff168d159f8c0fa9fa4480d911a9fc021bf07df3743
Date: Mon, 14 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752515993

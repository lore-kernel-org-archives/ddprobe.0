Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D272D288537
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758752993; cv=none; b=Cv5diUmgT2VxoJU9B6BzO7y/Gaio/lUQWGeqLpxoh5v+ztvbJOHeQUDNiCs75Z8p2qsEbhvJ4wVX1dLB1s8/i55yHUWshbx9/9LsvO4hfNH2OPes9Yj5iuFInb/za75yfSQpDa89/MPbtAQqQ1bcGutYuf0p3GI/KN5T4PNJyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758752993; c=relaxed/simple;
	bh=37vMzB36dkutzeBbydFddpRvB7D7hVAYI9WWMGDEa0A=;
	h=To:Subject:From:Message-Id:Date; b=f5ihjmgJCqbEbsmDIO8sGZ+FcmM7apzQtAlsNXeebKCd4LLFsZ9mqXf2i5jKRI2TWYmZu9zhgomxEJ1H+2RP14Fv9m3ZpMifqNImYJRwuwTyLaoMgyCqsLN5I5H1OnA9rhoDu5EBVoXq04aIHxhjq7jKHdE9dlLIs9rS2oLsyQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJyhCCjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJyhCCjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD1C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758752993;
	bh=37vMzB36dkutzeBbydFddpRvB7D7hVAYI9WWMGDEa0A=;
	h=To:Subject:From:Date:From;
	b=rJyhCCjkFm8WgcSHtmyNqwc+lP57fLOM0e3gaQSMIPaDPVL7XRB8kvKubqaZ8L089
	 tX05yCdV5ABL0EFUGggjkK/H3i+4sUymXEdCyGTz/zNpBYcX+ZHw8qvCwGKuauuQhT
	 F0ANAFyBqzCaK11tkTgEmu4yCJGS8WTsgqaRusaFppnup5+Wa/W/lSlF+KGnibZpcd
	 EWNnJlfWpL8IYFX+TW9oExyFAUnUOL15dXcbR/9sVRw95JsUFKddQj88OC9hwURJ1e
	 Ufk/2gpEeLYJKlSLTpraXmZ86ZEQxQaKh8YBSS4zijnoxEWA8r3MjhLisTV6vYy3/M
	 RlDgCPkT3Y0Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96175CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875299360.8422.10483353659894202755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c860184a84f6098f198d269279f0cfdb7353d8e73ef15904c4f29211652aa1
Date: Wed, 24 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758752993

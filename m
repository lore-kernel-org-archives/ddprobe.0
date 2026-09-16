Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AE23F6C58
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789544435; cv=none; b=a/Vm0HCmPgRCRLFWGvpiXyRBmfbJh761VLdsQKp6A8kUR/S2EbUn3Ikpdo/A9gtT3hqBA24QRnGF4Nwhkdnb7IiaO9CWLggmCfctp2GSKA0R/3f+mzbYUG+T/geWZhWQ6Vettyyx+4pglYgc0Y/AG07a1uMs+bHTBFp5cbRWDtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789544435; c=relaxed/simple;
	bh=VIhmaEC1q3LfhIzeo2C9voyCUlMXhNvoNB6XcDFYbFw=;
	h=To:Subject:From:Message-Id:Date; b=X5kcNzXoglT3bUZ2j/Zsj9x3SkJK4c5xsk5L2NAvEYQpl5akR4WpYz3CWaEkJC+wc8D8b1mwX/CWsAO/PzHlVpNtAjrZJsyi1bKS3JiRBRnsg+F4Gp1LmGW+Br1QVPt2VZRMDE+m9c7DppyHcVKlF9s0oqFiewRfKILrtnMkEWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ08gbUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ08gbUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2454C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789544433;
	bh=VIhmaEC1q3LfhIzeo2C9voyCUlMXhNvoNB6XcDFYbFw=;
	h=To:Subject:From:Date:From;
	b=XZ08gbUskPDCeGwiAXGSvSA1ZQ0UTg7d13JlozQc7e8TkhZS+bNfbU9+PcmRp4NUm
	 qC3bSgVPOKDgNfjucfRoBD5Fr+iSIDvdVqOc4+c/K1OcLe9Dtth2VhFzz+tvdaDaO+
	 a2Eg9Gpc9WzzXPghelwd/ANJFMOk9eD/oqf3srYQlvUVZfRoOkFoQyn0Urbn3nOkBW
	 M746ac/yVktNdwHrLfUhSFEx9TvW9qiShpWBea8YpfS7slo/93XTnFCxiRuKTCMUz3
	 VPY4lsdwfF2U8jl9AUzipkjvGnEpTedSLBSecqWUyAwnaajJKTXAPnOuki0uzkiIKE
	 79vLHe6arG7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE030C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954443369.17933.1669352062656243246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcf5cccf6b6691ded6e0547c5da84ea7db87eb68d9aab792aa9c1c12fa4b503
Date: Wed, 16 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789544433

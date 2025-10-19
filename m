Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E839126C17
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760846394; cv=none; b=WOnCkW8yluc8guNq2ibHcy6dN9fEtYJjFK3p69hIQ1uA0AKGQdUXmbLsfAfCNNjxfF/oD1rM7rwPAw/8P24SQ2JivGgsrmKl9IP+4FY1GQjJ/r4MnE93FAGTrlbON4rltFWnItgxurBL98Nj0DmFtWdIBJiowfORlU6js1J027g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760846394; c=relaxed/simple;
	bh=tE0bFVsyDvl0H3pz9CgkwEWbOEDGlciMFWk+MRck7jY=;
	h=To:Subject:From:Message-Id:Date; b=EpIyJ9TmxnuF6U2RngCKMNNdAQYGtjdump8PIvFP/y5b9XhR/jAFDWqCAoCRt6ME8bm/a/phasVvt8JOm4jERhwLwB1PvkQ4xr7lojan1rnIlJqVAOWoOmwQC1Aa6xixSohw2GHAK25O63ogGUpcT77hFObvhcoCdTQxt81HJf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQKT5SSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQKT5SSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760846393;
	bh=tE0bFVsyDvl0H3pz9CgkwEWbOEDGlciMFWk+MRck7jY=;
	h=To:Subject:From:Date:From;
	b=IQKT5SSKfUA1Du/avTbVeofaE3dzBEK9dVXmYLSCUtG6XGEqmEv5Q6UbYrjQa6W25
	 453M5Lv0Z87ttbtEIEmVwocvkxkVAWPI8lSXMLaJ8TBjD8O9WKHBIJJR/DxEQL9OwY
	 c5GcVIHxMEq3gL6kVDx7lxk37KR1mvyKR7xNVbeCqCZHlekQtloPN2cBOEot3ILRUL
	 1Gs/MogVzYbLMRIz5sXbZNEerOh+BGTNQNpPnY22U4Dmmk0u6MBtAynJ84JtUS7Zjv
	 T8AbXlEbzqBsrJXMJfHxoLmNLsnaoZihuJugLcBJtqaaA14YWa8otLHAwDtWKg5x4a
	 np2mtzVREYmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CCCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084639357.29150.14414292934948069625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6436d45426414eda2504373450a50011ff4b5f1c11fa70d6f269341918c361e4
Date: Sun, 19 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760846393

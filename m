Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AB23A994
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757555994; cv=none; b=PnaD9h7Ni15rfKI/03ZoOJg4kyNp0ZfNtr66rhXdt15aegQaWkeJvVCfKGCLUEW1tn5AIl4tNcT07PdEllqER+MVMsgJMikaxboPXJ0TnngIZVaavMhDEkscxeBk6Pn07DoIUB7cBEPVsNJC8qYP4QRbsCdUWKJ1knS4J2Lb/oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757555994; c=relaxed/simple;
	bh=XupJrsjj/GIPXMbt2p8+IMUJ3VcEUtOWsweAPxuRVM8=;
	h=To:Subject:From:Message-Id:Date; b=GcVLh47cxvG372/9Kr2bXwcDJElPZck5LRi9Imm/Axo7WlZ1MbBTn7K2+TYxcxkVEeuP2aKVGp/gotDywGPcFHYcY3Ibr8At/jnsOiJ1/dCKp5PzhwkhrX4k9iFGzmwQdX7stZjJtNzUh8ndInh0U/AgK3KxdLBCkkDWKolkbgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hn676aj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hn676aj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6820C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757555993;
	bh=XupJrsjj/GIPXMbt2p8+IMUJ3VcEUtOWsweAPxuRVM8=;
	h=To:Subject:From:Date:From;
	b=hn676aj2dV/kGLgzMzEMEXeQFKSYQu1l4jkb0ykuTZD+XQJNdT0CBn0GFsRZDP1Ix
	 xZpZTXHhR1OBTEolsiE6IkxQH8AvdOTJlvQWXTJrDWV7EdeRMjanl5paeHvfcgMNyk
	 RpCmmDYJvaex9BNwjk3BQthVz7XWRdhmHXPxhkwVVBr/3xXRcegnGX3V4qUEju0Fyr
	 Yr9siOHKlI8zIcdNpHo1dI2PP3QmFO/Njak8R783Bysc++Y1r2VYshU+CqsCzKfovw
	 s2mbYy6maZOGcLv3631f0lmbDCgJ+xV94uWuv8xuBFgX5DLspwK779j1V0MPQRjfcu
	 e/DiMtnh3VnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511FCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755599357.18365.14466387796546030702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3f4755d760fea091db2ebf5929e5edc497617637147cd620a62fea244cbd40
Date: Thu, 11 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757555993

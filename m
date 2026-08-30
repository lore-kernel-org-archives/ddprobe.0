Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A184A32
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788058234; cv=none; b=FkiRe2Up6XRu16CExwq1GOniprZf/2KA+itZTRWmtDOd7yKwW6cCgesj4wgTtbdYvqZz/2diLr//y4VbYf0dRFYcKrSWnefsO+gXRh5HFZj3Uy0STPPUlqmNRI1Ry0T8dmKyt/yaXQzpzlfN2Cex5OTLQYc7lkQqJL413i9y/P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788058234; c=relaxed/simple;
	bh=mjXHEdcxA7x7IK35c4LfHQbOsTW5XSOoohGRCDNDrWE=;
	h=To:Subject:From:Message-Id:Date; b=OIWtym1WUiHub53zdbQu374AxvmXGxUJuUGZqpH2K83hogrwOs2fE3PV7ebX2Ti6zQhbDpl4Gs/gpQHBmerqa0aPWQi32AB5+UFVSXnt5kkJeEqiRUXYNnd5i6SQUYB1IFkhPcioP+hEXdSOAcvW1sxk1DCU4lcYQKlKjn9+f3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbOI+c8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbOI+c8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7332C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788058233;
	bh=mjXHEdcxA7x7IK35c4LfHQbOsTW5XSOoohGRCDNDrWE=;
	h=To:Subject:From:Date:From;
	b=rbOI+c8Yx2cZQtLbkdyjqQ8CeC0gAX33J7ktBANopI75ygct7D5MRDlfwoiFloUwu
	 PICUjNHyXeQFjSg1O3qBPmixAyieJj8PUm5WPkd3E2M5SvafJXemmSC7tEwG7Kciny
	 BErRFIogiwwSchirZ9+SNoTCztnNN5cNNKZaAcQ8JdxsIepkt12hyEtNC9A8OXTluj
	 pB1M5JjcKKCz6x1YEpCYl0ZawNGvi3iNJLp2o7K2+edol2Nu3rxXbiK0pFPNsUEUap
	 Bli0YBdX7telsnfURilopLxXpwxkb2L4zlNF08xQkKtkH21uO08s26FuxUinaSCbNj
	 7KkUuXeOsoQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2101C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805823369.7937.8472148044382650047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7d306648282da87160a6b0cef15d5dad568b8eb78d45ea6b2d20245ba500ac
Date: Sun, 30 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788058233

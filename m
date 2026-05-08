Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CCD3783A8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778243254; cv=none; b=NlHY8XpNlePq1U+mqiGhoSS/hWyhaioe6p0RSKffB8MMnfdy6lw4tpqOlfyP0lX2G/3pjj/wqhrnKzrLFeeVShc5w/PfNHpsT+eYqxyD01Mt2QMi3uk2mG3fA0jLKjyA+sNXu4f5FNS6h4Hop+HZosfDqIzKfttxkZPgag84LDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778243254; c=relaxed/simple;
	bh=eDhWaxwk1tiaedYUPsmLd3WrPaJx1hnyJG/iAhVrUc8=;
	h=To:Subject:From:Message-Id:Date; b=ap6McUCkn2Tv0s1/xLTGeOx++9cqJzvt6AT7R0xIJ6vfsBJSR6ehawKLJad5rGD1qq8jLUfzUWcifTRMj5cbwgxcRl89OHt60ByVr6Yj1/Y8rxkyyU0NYPofQngAX1tfsPBRfQhFlnMRaNL6AVcNIs5Ys/h/qJs8/x3rLqlcpyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNip8or0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNip8or0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBC1C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778243253;
	bh=eDhWaxwk1tiaedYUPsmLd3WrPaJx1hnyJG/iAhVrUc8=;
	h=To:Subject:From:Date:From;
	b=ZNip8or0+B5W4oeSJQwHm6LazLhlDAYpekm2Nw5TtC2xP5Es9PhiOtTz0M3zELspq
	 6iu1M5basPOyyY9hzjbm2xG2lWxceqDv+LZSoutITJkMDNRbR+DTj9yiwbtabhX1qr
	 +NsFEkiUfB4D7TihrznrX53KzySPQKMKtG/F6nbgfORx7kaL7P7w+d0DhKb7p8f3R6
	 ZWJwyMtk6vDF0N9oHCu6GTkBb3k5ht+7vxXIt4JdLZEanL6sgQVVa0lD1geGUn78qW
	 ohcXDXWkTHGcMbKzdFsgzaKdd01B3oycPNxGRg1IrV0XmxQ5bR42F1KcGUsimObtQ8
	 IwJnqXOSar9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84ACD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824325369.10732.11626602174545173545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa264e2abef2ca01a54feaf7220ca975fced897a13e993312815ecd2b9a3cdea
Date: Fri, 08 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778243253

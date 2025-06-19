Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7682472AF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750337994; cv=none; b=JkSF69jfN8GTjhcf7cmpphoJvE2RcGsFfpfp3lKKXGmyH4kAkqnoiI0X+vz9GEVaHpDxyn/8LeUvCE1ZccWYx9luES40hj3mH1GHCKG/8KzGO5HRPlUU410+aEXY9NwlEKQzsHTnry7CI69QR9Lz2Te4RxHNW1nbudhFKeCzLPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750337994; c=relaxed/simple;
	bh=ZadHIRMZejHDC4naECiMTbMU+123IbebfCJ7EcSINXc=;
	h=To:Subject:From:Message-Id:Date; b=QOqiP9UJO4cyyu4xT3tsDDN2+Q6I3g/WmxQKYlGQDlyL3gVHJCLwqjINUv8GqK5rUKxfydTf1GK/+UdK04TuOEzANBQbvXWZYSPV3bzxQnJfrooX2rfJGGS3UUa993ahFvkbBwXhdkDlTo33GioiXnHd7ImUA0+WVdBZCkNNXCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilbCc81V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilbCc81V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750337993;
	bh=ZadHIRMZejHDC4naECiMTbMU+123IbebfCJ7EcSINXc=;
	h=To:Subject:From:Date:From;
	b=ilbCc81Vyk60T3n+iKhuHI6fZA6q/FC7Sci14Pp0jAfwyvHS1+jyymSxcnse7z3S+
	 tZ61Tiuy5U77UMHdFkmx8U6qFISKVC11romu7NCGlPqXaZYGw9B487MtKoiiLYzkHF
	 ZyNeM2HeJ+SaztpPpQLq7jHsMnrXy3hLhpEaKVmt08PKWGCkQs35MgVip+folZneRa
	 p9y4H4e27PCEIVJeJgsRT4idePrDBC8Ij1w8bhmHldtySQwuP89i70wzNay0BwlUyx
	 yt30rB3ooRGmmukiDR9mqcTeLZI/kIW5i7SxBL9Bpw9Kuz92HwhvR2WxzlmMLWqAFP
	 ihilHEVmKkBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96CC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033799357.19414.17077298105859924050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a4153c7d48f6d401637fc528eb2ada6934f90f0c10bde197e3f9878d401d8e
Date: Thu, 19 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750337993

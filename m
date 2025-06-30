Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A7B21FF21
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751273394; cv=none; b=MtR9lT8GnJGwwHYmJl5cGBJY+POEiRRYsZ/1vOP2rHN9o0Bjr0iwjKsjclki2/tYMGiZPZwDR8lxui8v1a1LD0o59T5l1Z4vWWV2eMPvM6Ebpzx+XxX8QBLtt1H8vd6103M2avsSMB446JFlXEqm6cIE0rFqraBye6CAMfCMkBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751273394; c=relaxed/simple;
	bh=uJ6qmzkyaYydzgLO9sVCvxrJAI5kplBSmQ/IFuUnnFM=;
	h=To:Subject:From:Message-Id:Date; b=Me68c1URfmt2V83q2iyW3fnWCVuLEGAA8yyregXrzYRAhn+NVYN4wUot4suRr9wQsJslbCjAirCwmc13qDxj+ebHejGp62sZkR+jq5wj7OPrMLndreYP/Jt6bb1MjWK429iODNC2oFmlCgb5GU1itxIhAjAo/XvvUqbPCnXEWpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQVhqlgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQVhqlgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A205FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751273393;
	bh=uJ6qmzkyaYydzgLO9sVCvxrJAI5kplBSmQ/IFuUnnFM=;
	h=To:Subject:From:Date:From;
	b=kQVhqlgF8lT6l2ZIpgsqS32dlk2xeiA3RbgBpBQuPZHrB1NgQB1yr/CXDOP8ll9TI
	 eQpqPlmndjUSUxKWV4K49alM24+OGfTXZfELkLerENt8rRgRST5ubLTCkOnwo5ctBl
	 rtL78h62+RxceSj1vNhh/a3i0PH0AC9PgREBJYurk2gdmadbqIajrcOJUS/EOR7C0U
	 dVluwgvuQctKiUiy8488gG/6UtWPRv/oVzBYIaIrONGolvYZhL8MyX9ttRPFOA2Kp6
	 HqERuiSY1QZgwnHEPR3eWrhjn6J++NjOT/J3JcwYhNbVR0l1dOUISJJxnV1TkjDEvz
	 OqVcudNOJcIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70BC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127339357.1717.13015443081014747133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b635ac95b34a8da37b3bbb02864a83f95ab796e90843e2022555d4fa2123baae
Date: Mon, 30 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751273393

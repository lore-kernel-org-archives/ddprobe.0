Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76B21931C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749533994; cv=none; b=JYJ5i8lmie6mxyZhWyDNSUivbjw9wfpInW7obI+X6/My709PPzZV73JusGztBfWP6O/pEZpPowZaeBDnIRJFss/3UCa0IpbbsIBXqtd+dhYqmjLQHqdJEbeguv01eIRUKrkhYg2u4lphD4pOBXaU9E3Nf1r5CZxDyguAPtlz0gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749533994; c=relaxed/simple;
	bh=O+nsuYaWdoJk3DCI124XnG9DMUpG0WD9CGT+30m0yBA=;
	h=To:Subject:From:Message-Id:Date; b=Y/xaFdBhpOYp9vZsj3Vl7D5fL2FoGGVzwKwmRBxSOFIwxFZfd8tQsckArwL24uTypO1JADmAkb8shGDzoaTkZnJl77EOJ8lxuT5lsoiB35MznTosIIAy2r8BWz8PZxOhlDtUtQwzlQdUECqIVapOXrebaeq84n+vpmlplITHOv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdXMBazs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdXMBazs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C39C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749533993;
	bh=O+nsuYaWdoJk3DCI124XnG9DMUpG0WD9CGT+30m0yBA=;
	h=To:Subject:From:Date:From;
	b=NdXMBazs/Or3Mwgv3IArPtIWYXnwtiyABpWH+p5tlym/81h4S02f3lk4QZYSox3Bl
	 wiR5aYe4Y4dMkniuIGWNJyOxECxmRHwpglULev2PAu//Kf1EByrmmfkao8+j45mHgO
	 8r9qalFUHG+6huENNmAbpZ06wE/TLnSva0+X58NrzkE7uR39hzKLYxu3QV3g5lIQvh
	 HJg/ozy7dBdE2L1wf3/RBV4/ukQGGfCiPMZQXD7/Pbo53U0RFGvmG8e2yWW6w3UlEr
	 m0P1ELkb5+5stQYKm/dko1p5XtOgyC21zJ+kTQhu03tzx1akCHisTGJF75mnHLeTW5
	 mlY6Hk5h7ikVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C1C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953399357.10543.16984103315482407122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0e3d1c3af6a68b3033203f9bfece31c9664623c187436adff50b118ac363c8
Date: Tue, 10 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749533993

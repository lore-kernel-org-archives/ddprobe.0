Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6B71494A9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711558097; cv=none; b=pn1rySx0e0w06karI06qVLAYx976kaQXkMm77DYajWO2hh+PiaQPTfAQmN/HTcWApEwgoXFXSZap1ctNgUofcRtpEaMZM+Uaviy+HK3y8CFAq21YsprKLjpCNLmtzbCMndn/4MUKJpVYjIphyC081cwWpU3aqt++VspTavZS4cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711558097; c=relaxed/simple;
	bh=S7w9XymTVzZ/j6FPukpvwcQAOH66QaIV7XjOdm+wCuk=;
	h=To:Subject:From:Message-Id:Date; b=dIjuIw2TnltOTZ2SzRhrduvvGHRu6GTwhOXM6Pun3m/4avv9sL8kruqJLEfy8q9uKPWYpTuloXrAnYV47KdZC14Pmdlup3icKy07w7Dm3jOwwMUu+y48ocbu6yyzjDwdRIII/OseYmboMlR8i+Zv5Bddz9IjLp5dnOfMkWtRajc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6bIa4O4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6bIa4O4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FB0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711558096;
	bh=S7w9XymTVzZ/j6FPukpvwcQAOH66QaIV7XjOdm+wCuk=;
	h=To:Subject:From:Date:From;
	b=S6bIa4O4McJ3b8PnJ6h6JT4Tb2fhagTAYIs12j7CKylZbwBuRPlG4i7pcIHTlZFDz
	 PmJipqe/EN8MY/4ojA8gtbMMKmKOZPjWfeBAkPpvg2KZ/tQxDoK9XZM8Bu8IRxkDJu
	 4IE/FHZYTx/9wMT1XqMN0hyRv+sFrMtywg1LC24fT3wCZU06lYWD62qODgUPZ9B0a4
	 3a8euiyxT2OD1rOq8Z7CuaHW7MN5nl1DhXM3cWZ6eJ5DOgOB6BDli0Qqw5/YK27ru9
	 MzZT6r7xsv+LFmpRUKG9SF08kZH1C0mxVNagq20y0ioaAsqbrHo+roEqY+gXlCjZSK
	 iMMrMbAxyS0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FF4CD1280
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155809669.12148.13315281621811208839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a22c8e78931f13cd423426bc1c19df846a34382b8ef01c256e5130bc0534dad
Date: Wed, 27 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711558096

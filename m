Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ADA24DD09
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768067034; cv=none; b=CuNy+RIgUQCa1siwE/hR7TZbRCismUz+TRolHvMj4Re/NygotMTbtuNRUtZymiUCDFHlgrFhW2lbxM6vn6Oiygp9kjrtYpnZat+pKOrtsQbzlkLPl8CpDgyxAF+Ka4TSgi10Wsbd+XyWC24y3ATL6eq2yScd4K/NAAoW+UKaieY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768067034; c=relaxed/simple;
	bh=yXQmh+ttTKB8G6I4idRMj1jObRuR65dZgmVl4VHpTPk=;
	h=To:Subject:From:Message-Id:Date; b=fLxK6csIjq3nzGTdBVniVYpaUDuiJ6KdMDVv1gYYO9sbz1ju0wYCFEreIc6ACOMcMqtIdjAlXp2t9Isd8RRDdKLaB3AWnqOzzJj7SZahH4CINC2MEplRJ5Y6uHfRvZmXf5mt8VuELN9+qGu3R9ve9nkuMloTm40HeR9xywZeqAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7W2/dvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7W2/dvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A889BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768067033;
	bh=yXQmh+ttTKB8G6I4idRMj1jObRuR65dZgmVl4VHpTPk=;
	h=To:Subject:From:Date:From;
	b=j7W2/dvyS7tZ3NnyciUBlQvTZjLORWLWObERWpPqR21ioRtHpGwPrlt0Qvon/D0M2
	 HWM7+UGFM6NPSbxJGj5cuY5KolMD+M+sl33r4PjZfu+SHCCvH/bxZwUPgdsDuZ9bgB
	 PLl++RO7D2aGeZMtOZ3tSmfW4qZ2mBJR7w8D1oOyG5BbhCne/yrhIVDDBNtwbToM+v
	 Oqrh4pVDJzID0g9yOVr8RCvyneqIS+SGwa8gx8WIh0D+6xba9Nh4xNGEg4esRCETn6
	 XhyItsLgBu8uzYrHrbaCSoxor5ixRBO7SpP136mj6xZ1JmUCVHSfZaQ4OKI2x+Y45O
	 +QoiYdI/Ps5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988E3D1A63D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806703359.15374.2197834131310865514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec5bd5e94bdb2a3bce8db9eb9b204022e4388de196be672a762100a1af32a44
Date: Sat, 10 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768067033

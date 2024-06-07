Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D6B13342F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717756043; cv=none; b=BuBvNwhwInSlQq2LI/hMoCbasWFwwUEyqP0MTFHowhZqt2POLKAzrMt33sbXhQX+8iTAkcQAZmODAUfuq4/25HisXIyu+YF3054ji3Uo/yDyQEFL0mgT9I9SJ6Y16wVojqaXh/Dw8MTmMpkh9Dsz9Fk4dvbdRuGleQeGCThBm5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717756043; c=relaxed/simple;
	bh=nPoy4P/CsRWmMHmVBV/FXktt5dfIjI+kRWNO4O68hEQ=;
	h=To:Subject:From:Message-Id:Date; b=VzF39X7jfp/iF4BoB8Cs3ubXxbJaDVQeTkt1uoDmQ8PXdzQv8A+4hGGXWvZSnFOlsK7GrTkU+WeYUk1VPvoINX+e1MIoyabKGnguId4F7nzqUE27ObViwfZYlMjvLLOkt/wcuYw7Q1+KzgxPP0tspnFawdBzvqcBbqTa1MJIhmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFqOauBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFqOauBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F39E3C32781
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717756043;
	bh=nPoy4P/CsRWmMHmVBV/FXktt5dfIjI+kRWNO4O68hEQ=;
	h=To:Subject:From:Date:From;
	b=YFqOauBpLK6fN41L5gvNE8vKL9/m9jJGlQLsGmlwTuLeMOotsKHi6gxESighX7sfy
	 74OnCNnesHX3T4Rio6A6fEPsJ25jGGjDZBuxbFMHrOIPzn7XOerixXSVfs2LdvPbO/
	 ZT6S/X/mZKqs29koedF72C807u1e9kPs2BIKOXp25AWv3Cf0wx/+9xoL50c58FeGos
	 PmizzgdTQrJgRnYlego85tK1IGdvmfgTjrItu7H5/iw2iQS56CoFRoZlKa0J0gxPVe
	 K2HzyAPjm8d+3FopbagNcdJ4v4pZm7SzuXoWwHe20G8/PvtKuKcWU9293xbGcJEFhB
	 VDtULpjMd+x5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73BFC41513
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775604284.26562.3537172917034120554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02744a3e3f61139c7f31e06892fcf809d8cf1290089da0352fa1b53859bcedc9
Date: Fri, 07 Jun 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717756042

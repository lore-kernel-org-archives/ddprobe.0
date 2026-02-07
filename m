Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3541E27CB04
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770503634; cv=none; b=WR8CbtgYjccdnGo7bWq4iZTKnBJrm5S40pzFEmmJ5c8WBYQLohsyNGJs8cjkRyOx/1/GLowuaiwdkCBq0NP22XkjlReoRB4amwhXBv1prtd85aTCd8yrE60RGdtZDlaaowU5qy5o8PR0RLEC2FSVq78oFPsz/IzqXgA9EHUepy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770503634; c=relaxed/simple;
	bh=Zg24TJdWXHtLYu2ueTdtujFb+DHoSpDMJ1bIy4gLzn4=;
	h=To:Subject:From:Message-Id:Date; b=fgSOduewTEUxOMhzB22+fCLPA3s9uOJnuov1xtRNQ9hn8vm0xYILOg0maxcMDdcMxv5FV9awp8TMAJ24LrPo+A6OEcMFmHE1eM7k7V/ZbwbYGpU9ipdCe8oNLY6F4cGEGs4v1ZjPKuxKnamWf7L0Z9nH5cY6PUHSEKosTV42hyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsZUh+wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsZUh+wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB1C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770503633;
	bh=Zg24TJdWXHtLYu2ueTdtujFb+DHoSpDMJ1bIy4gLzn4=;
	h=To:Subject:From:Date:From;
	b=hsZUh+wGa9b2zL19Zp9cdU7bdzy7+PObcrStDUDOg8Xxcuy+CDR6GEGSd4Jr0EcFr
	 aoCxFBZIDgP0YmUZkKQdpM5parPY4EvFpowqfDfCIvicwuvrrzzm3HuZEP95bjNs8+
	 lkHq50vWOKLGrAXw9BSGDUF5HrOQHTn58fo1Tw4hJ9s3CTgk4g5AemZq//y0qaSoLH
	 C4fMJYoCtmc+GoMkKqNx4fatzIJKZOSAZq63T/QxVqQIO72OsGAve74YwxoxBM6wRF
	 hyGpSwpWgnZRcUGo4WMFZcttVuap6n7d/XrKbTyllmSmjDjfLpF1b6Bh4vThbFMcUt
	 CAOTCM35Clzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA77EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050363360.32007.11280899218065914557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae11d2d00fe6ce306f10e396c51e3bc4c41ccdf1881fb8ce342d8937a59115e2
Date: Sat, 07 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770503633

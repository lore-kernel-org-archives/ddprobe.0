Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A23F2D061F
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758283194; cv=none; b=KY8b0J1+QQ37O6ycowwCTghCpl326INkxQdH9ASV9D57PLxDPJm+qxpiT47mr4eRosN4pML4BBT2aSFYdMRvk8KVLszijtiE0Ed0/KjjGBoKF6w6d3Yfm9suUf9Z79rB0TThsIkw0FaJvUChRhdH7zleqs1PFc1SPJDm8IshVME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758283194; c=relaxed/simple;
	bh=Kc0pyIDMLgtN+x9dsPacOhoZX2Pe9DhdOSq+mpYcnqk=;
	h=To:Subject:From:Message-Id:Date; b=C1VZEPsv5a0RAx/HmQuPsOrUdKLO0kso4tlgDwMeMB+ko2bxYHGhB8V9H1za9SPNlaqMAW8hyzvaC4wixkFHPx4ljbMO524AkgvnZqJUc9W01YBP0XFqPbZoK6XFRLLRP4XXiXglddVuBi4iCGp18e1ILfn39pdO/EItASaiVGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmgyc3HR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmgyc3HR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86EBC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758283193;
	bh=Kc0pyIDMLgtN+x9dsPacOhoZX2Pe9DhdOSq+mpYcnqk=;
	h=To:Subject:From:Date:From;
	b=nmgyc3HRyywrjLCIpf1lvsbH3AyyQxhvMcIvIUQoDtUV7j+jCThGefcW2rvH/V8kM
	 lKL1ryMGFFKRo3Ti22x6dZ5lo+Wu+JtOHw8Fhbajkpm9iOjfNVtdb3Wk501DwrebIF
	 g28MJMNjPqOVDGIBtIE0sbJj8vK2ozWJ6GahsUEejMQa3+ulagEwmkovaO1w+O50gw
	 EAAPXmX0afP1gQR7TcmPqBgQPuzXXHeyFoscbBu6l7WwNXKW2cnbF9wnXmzkRpHA1E
	 VxEYK0SbCMSLnVnQWYnGAh09zW1iZks0pcIQ4ppOWPRpB9YDx2Nucwitqqkvp8oMaD
	 9ZE7SlydBTX8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADECAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828319360.1908.12444543144415093840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dd07e6644753bf9d6cbce90eb70eec7319788045cb2e3b6fc6bcd9d9dcafa2
Date: Fri, 19 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758283193

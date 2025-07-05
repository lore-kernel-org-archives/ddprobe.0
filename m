Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290F418C31
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751697594; cv=none; b=eQljKhw1av4CE7d5l7h10R7EEuf/m8shdSmEdjIOkiCFCkBofIxegV06hPzgH2mvBDzslSnuT120/v6TWukz9/3OYqTsCbRls+BJwGxdc/TBhDI5aHJLt0Yo5/y5wrL2pIfVus7YQR1QpH0+Bd9hLMDCaHWVi3jpmuc3GhSWbeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751697594; c=relaxed/simple;
	bh=S5Xeo4fYPrJKg6DXjlNFln7MCLFG0/hjMt8fy3KqZxY=;
	h=To:Subject:From:Message-Id:Date; b=W3Io3vugE/8qtmd2Om3pksOb0BsUpBayAmyJz0CVjOvrQdhhw5pEnLU5btlOJTEHuWGZ4/oIsPAg6W/GbbHv44OZNRPPTBEmmT0qagKgTwrTO22SRTdbro5EIGbX79fteqkm+UoTs/EAKYt4GI/G5i+zQ17XBDNcPh2Tpl+lHXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwJGy9pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwJGy9pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FADC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751697593;
	bh=S5Xeo4fYPrJKg6DXjlNFln7MCLFG0/hjMt8fy3KqZxY=;
	h=To:Subject:From:Date:From;
	b=AwJGy9pNsehAqAbDYLnxjAWnfgDFjU3NXhol2GFlWwavjI1N7Bg2z39qsrZ2/T50A
	 TlFbRPOWNwnz4GaSNz1HByFRpeXTZ8flpSUbGiayjNVLog87/I04hpCuAsCiBYlWGX
	 uRkvSkJcjWwYXiLxtuzm8oPz/sKBIen79juAnAlnB7rP5UnFW547lWpi0lqmPCU1MB
	 EZEbqlbErEWSctmJg7rKzgNK/IZsGlWRNBraML4zB+ZSwLFmILCuYkgMnjTDNaKIUb
	 wot33I5mTEfriOe7AJywiVf4vFO/gp9pbz1BrKzzYSU1VxX8Xwad/zMHSvjwSoyAV8
	 SwdJ4MapnwVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91928C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169759357.20036.13372714695208138360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb5bfb8215e658b6dbacbf1cdf35350cfd750e5424bb31c82a2cc38faeeba07
Date: Sat, 05 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751697593

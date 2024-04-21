Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B1A33D5
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713694823; cv=none; b=LyZp5FOugMOXDMRDT9qNFiug4YndfUJr4TLpw0Iqk9H5+IZA9xguA6fjT5wnhS6TEVx1J8DBRxfH6gETjVaVPJH+pA56u0mWDo0Ksuijaq/RkNgJf6P0qAaKbAxoOOGJIDjdROtSEo6yyhB9AFzWAom9BjDDDjTR8UTageYR2/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713694823; c=relaxed/simple;
	bh=LoOs3EX8EN07r/XrJNLtGenoO2THgRz1LAtbP/ak4wM=;
	h=To:Subject:From:Message-Id:Date; b=CsqTGHidMQDGuVb4vIJv+v2pIGZ0pZonu0cfyGCuil/P6gEH/Se4vzBT2BdyKa9Pzfeto3Ss2hTPCjeL5XF1b6g0mljnfhQ0iNdmpQgkZz0DpKKiGm8JgIKjQwzfwb3O6V1RPuTQicBDbHRqUYfVeqibYvMIoOE/uFRvE0R1fxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q293jqPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q293jqPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F75C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713694822;
	bh=LoOs3EX8EN07r/XrJNLtGenoO2THgRz1LAtbP/ak4wM=;
	h=To:Subject:From:Date:From;
	b=q293jqPKnjccUurM5JIa5mDjR6ydvimIfN1iUZKdYnnLhXcGwiY7UuwTifhmIVlnF
	 i5eCHGIU0MzVjGAKDWM2/5i//vp1q0Ps7C+KmXYqW3cyEYphKrQWoXYfNyC8X99BDe
	 cUsJ6VLA2FJVng7W/IU/bNqvrg0+z2EGTlPHXvSKC6GvCiAd5kpYXGfsGeiNWA1qoo
	 r1Y0+TOsO6R43ebLlGBnkRLAuyUX90VB8f/OI4tCUK9UMTKOl6SynjIr7r7uxHb5P1
	 ERPYGYu0HHg4aH41AXsZ2Yef88i28wdvQSlaU0trckKtWlR7hRI1srWvxOSOvnUmLE
	 N3kMeWwJpnITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C182AC07C79
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369482278.19348.3370594033945031337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1aaba71cf046f2154ed4edb46ac5f9e4244541901de6a9a00f93d41ee99fe3
Date: Sun, 21 Apr 2024 10:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713694822

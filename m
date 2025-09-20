Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D72AD04
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758373794; cv=none; b=HQEteHjcLyeHRi5xtENXuCiAZbdCTH8CB7XNuSdRc4oB+ZT2Objk4mkhEiaVCuYt5EVN12BQr9SDOQvBEdxCOJ4KdNi7FfAsXDkP+k7k4dyxnw0zeBQtwGF0qe8aByFOrOe8AU0/6W/TOKh2HcFKavFElIZoflyUDLGNWJGeLGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758373794; c=relaxed/simple;
	bh=Jhh+G3Am2PU1hWGVZWN7o0yblEyIp+pmXAUePePJ8VE=;
	h=To:Subject:From:Message-Id:Date; b=TxmTm0xz0JYanRN9dauDu5pxgLR6BsWKja7enSsKJ1WaZR+NrFq4EMogSJIOt8FyE6NgiYP++H68ASM23P16vccdnlQo1EElnqbiIpSK2Di111mouN4BVT+crVflugnxx3wjChzVPsDeMY979X/9I4fgpJbU09MN1B682IwtzUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYEiB1Vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYEiB1Vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758373793;
	bh=Jhh+G3Am2PU1hWGVZWN7o0yblEyIp+pmXAUePePJ8VE=;
	h=To:Subject:From:Date:From;
	b=bYEiB1VhTcZlfLwXQi1CgfOLrBmI/iTW4KZhn7LooE2PHqXkJK8V7/w5bIRZ9ggLZ
	 VAGXhPR1b2PTZ0iqyldY6uopdGMeVJCBl/wFo7HllR02grJ/sHfTBHiaqxvlZjoRmC
	 JSxu7OSfTugbIMoy3jXPJ10qBz3AEocUHWeUZJS3uuagC7Ws0CSuN6Ss+TsA7PyxyD
	 7UBPN3rFYf7pnsYsu+CEqqzC7GG6p37WfwjgDJUkUdrHDw3EpVzGLcZtkUmf1cKsEf
	 F+PBAJ2Bqi1kcrwrlN+sQy8bsdsPdoyRuqy8O8TZIDDS/9TnVd9rDEAXU4Mp7r3fbI
	 UHSu3FoyR5loA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6ACAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837379358.5001.7292076858654821004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e847b3f6dad242297f0aae1b1f77f1868f8f785983e96bd3fc27e5803897da3
Date: Sat, 20 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758373793

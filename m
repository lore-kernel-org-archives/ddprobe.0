Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF0FD515
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706495297; cv=none; b=BY7cKXZir0WhoeljsvdVe9UgZEqCEqa/8uM486qt565EaJ4GGcHDJ6gaS0qk1AYls2ZfBNHx6ku4p1yQ5P/A08JztGRk4qqcheu+6vMns/0XfkLVMN7MxrLp1QWlkcpiI8BgeJ2fSlXM5+JbYGBAc3pFqVuzCDckfdB9ukir0XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706495297; c=relaxed/simple;
	bh=UylOT7wPs/cLnBgIarUpA8QWBh09pMN3cs4HDrztCT4=;
	h=To:Subject:From:Message-Id:Date; b=HGr/acf9mRUtaWv3heYar/A3kRW/wXGe2jNtDZoUBwY/LMfKJlX+NX4C32T3KQZwROEgN3MX2SPmzsQEywFgQinrommjPNkW2T/C0jiGKrOEy30w4KhiSj+crAWKCyZFD8YVewZjEB3va/juZ7GHeaq2lJa2Lckl2ONMLjYTAf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tc9OSye1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tc9OSye1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF52C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706495296;
	bh=UylOT7wPs/cLnBgIarUpA8QWBh09pMN3cs4HDrztCT4=;
	h=To:Subject:From:Date:From;
	b=tc9OSye1slaE/2HxV6BM2z0+gtJMiZzCsK6Hm+CiQu8VicC41ZMe9RVRbgUPTkEw4
	 KKqAgHxaSTk4wZXWKMDRwywXBppAPqWpqgoAb2S5N53OgvQPRZ0Zrirv1QYzbtHtYF
	 +DJcWEv4kVoOKwXvOQ6YJkiYF+KR0/BpXxX57XeM1YWkimYV3Vn5FJLS7DvPMTNNOd
	 Nh+dLhd4SUIA8RorN+qja1bJHdmCQfRDLBE/diZEMF+fn90slhH5TpOw8bOxmXOiaK
	 +TWbAuE1MNqgQ4Sd+EtsH8wCuuTKRd3nxrbC/TbNLsgKtC3bWIwvuRcABBqmlc8vkz
	 wVXtphnkVSvcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2A9C47258
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170649529637.5753.17212692691517441671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bd271d9f2ee26c1048ef51b57699b67050657ee03f03524e2403998a2cd295
Date: Mon, 29 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706495296

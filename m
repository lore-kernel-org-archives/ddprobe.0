Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64188EED6
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714537343; cv=none; b=pkmOOM/3Duv9/b8yBmUMtq+bbPdLFH03SaZn5VkcTdpDTZdeqXZizENDfq6ftOh5eoy5IsmC5KgQQydZpRxMIx2Ht6Fzl3rlGXliS/EXSAaQSjXURxRNC0q2PBDkUQ5P1rpYyoA5xaFVpcsyZlUdSiFEa/tWPg3DeQDdjWCUaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714537343; c=relaxed/simple;
	bh=kaNl0UWP4d5Cdx22sR6hxVnqebNZFFU0/Mo0PeKQgc0=;
	h=To:Subject:From:Message-Id:Date; b=nBP1LEboIsC2nC5mdZIbIHFXA3gD8wKhP4LWH/Mja77T/a7BHG2wqgcElZunEhqYnKdiJCsPVGEqXCM5QrTX5mrog9qImKbgDQKxWcr5iawJjvjufqx76EuXkV3YmJjSOl6I/4A667NdymVp2PcaDf5F6gUTbepLZ7Tl2Aq0Xek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxwyN/Q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxwyN/Q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD659C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714537342;
	bh=kaNl0UWP4d5Cdx22sR6hxVnqebNZFFU0/Mo0PeKQgc0=;
	h=To:Subject:From:Date:From;
	b=RxwyN/Q24jgyp4uTpvPFGf8vo1ORDGTSSdqKhWjqV/JcYYUYQpA7N7necHMz7/W0h
	 JIJJCYQRnIwM7BQXMMD5S1arot4LUiX9qEm6MBic0diULnB4hjvMteucGWYSn5UDWa
	 ECI7kDMryfLAAr3jdF4CuO7XAcsK0nakhUhswS6hwXE54XBHMhTZANZlmMMyrIQ72T
	 L1sYPXgC7V2LfkdaUOujmoOCBycxj5giTNDTzxwnjEnL3CoBxB3iTZQ3jJ7U9tWXpD
	 +2G3rfGBEbxy0xhUNfi54Ayg4+EK9iiImit24pWvGHeK+/nMobuGO201eAPQfHKMDo
	 AMnrEvR/vZotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA00C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453734277.14751.16719785860698189992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c925fed4cac15755544d306e173b9b3325d03bff4460dd5f2e2bfb8a957494
Date: Wed, 01 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714537342

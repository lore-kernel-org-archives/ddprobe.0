Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FBC76034
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752897594; cv=none; b=to/u1DiykoRCxDmzjEK1tQdK67ibceOA31lz4zAGW6Z9dkMzjAS8LiQ66vQwTIzxTUPwmcU2I+OdNO5INzZ/WsAoqM9KHZSJVqBzFXgKEHY4fj4a+/cVHd/L2HjqYCiqAgFKtD2A12eaXLsGgDQJVs6Xcc498taWoGUtwuV02WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752897594; c=relaxed/simple;
	bh=PTPh8jEmbLyf99aESKOcLr6U4ynPyqUEBg5lPXpetCg=;
	h=To:Subject:From:Message-Id:Date; b=mhEh/6OI0DHnRLmJdoUIFUQOFUSE21w8moOVkK/1cySbpA3ubF11o72cAnVBV25H4PmB+8DEPI4LH2ccAnIV7BODOnmZVu8jzdFOHoQ0KReZq1evNSmEw5ACNZob7F4dXVBTAbSK69y4vkcNGBm1jj+4sCp6U7Gq629ukKfl0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtS/noWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtS/noWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752897593;
	bh=PTPh8jEmbLyf99aESKOcLr6U4ynPyqUEBg5lPXpetCg=;
	h=To:Subject:From:Date:From;
	b=YtS/noWNUG2mbluIRkjSIYCQUG/bw+NA1o4Rh/WK31pizBw48/9L3avuNCS7o0kRp
	 YeZZGGn3TEMnCySrl5DOo8eIyXiGNQS4w3YuPgCr6cPkk9FMWlKDy8NCfrvdzUD/M7
	 obJqvBvz+wLQ0RUEdpI5MHcJurk6cJYrMmVdOKWEWj9pdr0iX96NUyc6hvL6UK+MMh
	 3gJDNeA7kFg+GV7V56+Bvhs0L119fNZGDOylddD86XMn+23MZUgfobDYmBJiVeTu2X
	 LxF4b5BbnUI+ITsxXQNCpA4DiSZmU8pEZ1by7mGVEiry0Bo19kKphGE7s6bbDhdaZ+
	 ex6bLVe6VxEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F78C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289759359.16691.1305858517331718275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6529b41482335e385fcc94ba3b2d83b30a1040cd78b3a6232b5c57ac1f438ccc
Date: Sat, 19 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752897593

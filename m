Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CA4151991
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739654334; cv=none; b=ARRGu2/t2DB1ITfu6C9qbMEe0DQFdNk2C8mGPjOeZUW33HnP/apBJbZohorNylOMtCAVVIJ8lwfBMfi7MZLi1GSNZyJyAk6CaX1HudVWgZlcxUMRm09QNwORBTW0ywQ7qsS/y4YtdYBjFiCzTQtcOTjJz0+XDna+6EHOEt28Ido=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739654334; c=relaxed/simple;
	bh=S0YKsi/qzUbk04/9Wyuc7DSbu1t2MuL+5eA3ihdRCDs=;
	h=To:Subject:From:Message-Id:Date; b=mpOioGQ7ee5rY1bU65anvBWTfvv7xYmTLC98t6vmQRwZyFvQRNJHULhDd9UR2MgIuNRzi4Kzx3Ur0V4NRUxlNtrYvhsj2vHDg3p5ABTOAWKcDJQMxiJvbyvopdEJG7y5TNqTgvs4LHtpli3dVefLCrEhIQc61ap+UIBcbARAtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4OKWAbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4OKWAbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB00C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739654333;
	bh=S0YKsi/qzUbk04/9Wyuc7DSbu1t2MuL+5eA3ihdRCDs=;
	h=To:Subject:From:Date:From;
	b=T4OKWAboh96cq9MTuwA8g9Ij7/UilpN3Zw9LrCOJ/7LSSXgMFVaDgbMUHSmOwpfEv
	 5Hcz5S4Rr5K/wzpShvfq26NkbxDyMcMAO4IO4EASEtpM7GIfXfScaW522luF3E/Jca
	 B/yF9hxsWdLtu8vRuahogoR8k6RrgLgIOawwk7mYTtCIGyfeAjWc1CaLuMwU9DBolR
	 GLXrVKnsNCr5QoFs/KHGUZXcZ6/Ua1V7GmFceJHUZkn6TaVdeOrGGVHC5j3xnAzkko
	 sOusXlYmRW2xOqUXbljQDJf9K0UIF6c+qQsqmWkL3K1bouY+uBA9U27ALl8KnPzA21
	 E7JND8UfCz+Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B31C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965433358.20182.6076301438840683101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b959759f6ac7e6ad6ff963c7728619da4c38846bb80e948ae66c12cbb9ef3c9
Date: Sat, 15 Feb 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739654333

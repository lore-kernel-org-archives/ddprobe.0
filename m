Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F89E155392
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728289554; cv=none; b=uJ9qZsne4a5rAfq8STQa3MvwJZHHA3UqLv/R1joXs3nivj3BV3a01AIOCwz6p88vKDdvFH5SXvqqXr1v2dVBFyCgwVj6uLqPVegfhDhcNprryyEZQ341bilHOQ5AynwPXUro2Oh2GfUJ3zgDgi3T4yWoLVL8NRAx9JmLV+aAsNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728289554; c=relaxed/simple;
	bh=M7cl8NSfoXhxHGBvOUiOghIl53zvc8aKbBVRnwRMjew=;
	h=To:Subject:From:Message-Id:Date; b=h1P+TwK/w3WkS/vMSlaX5VW2LZ3sVsHr+W0PJVMIWeOTaBIswga+4XmhDiBBEfIUaXAuAS90xfVqwZgzWWYpo+VFYAwhuYQnovWES/0/7IA4GLKPipSVXjoKhRwT4JElOMUquIh3TqvueOzylf9MZC4Z1v2fJZgM6MokKvr3sXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRid+4mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRid+4mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3DC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728289553;
	bh=M7cl8NSfoXhxHGBvOUiOghIl53zvc8aKbBVRnwRMjew=;
	h=To:Subject:From:Date:From;
	b=LRid+4mXOwoZyRu3S69xCGiUs0YO9+B76oLdD2ftlk2ZfByvRgQ/U1XPca5pIAzTr
	 8z8yLJEIq8sbTlD4+ssOl0/r6Dj2Q5tsawPGtI1RKEw2DIkwCtFojmftldajFMaALr
	 v47Ufx9rGcewct2jxr1HRGSloCuIZAnEq+3BOau3CqAobomcR1fpJm6IlVXcMEqPZc
	 p2lKSJQ/YNYFcKqlZIfLO8lhfZY9jGGdAqbJzXd7+D4+ZqIaSwoxyoIzdcKkIyDpSX
	 v5iLwQMFdSQtGmhW08y8VrQgiMgMPG4VzI0tX9ndYtAhVRGQL42JJUys4RKKU3U9Br
	 8dbGXioGKH/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3FCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828955359.12520.14193073250986008457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d8ab01d6ad045e693ed0c655fac4431bf595ee142264f9a1ac9f95a04198ed
Date: Mon, 07 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728289553

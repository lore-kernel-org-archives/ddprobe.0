Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9CDDDC8
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706846297; cv=none; b=M40FQLURfGh3Mix+4ipS6auyyViLyjyK2z/Y1wppXqKi8gtXDZJmWvO2ok/unfWqzhnrfxisYLJdF5dXyPCDjaiAi3qXgQGzkCTzhRuNEiuZCkMQglduah1r+PL5CMLIwxDIevhquzfL/o4X6MbUriWRbNArkUrdgJXFHXhRnjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706846297; c=relaxed/simple;
	bh=q2HAW6YGv38UA+8kI8+INJZvNWVEitfocQMjQ+myFKw=;
	h=To:Subject:From:Message-Id:Date; b=f8cDhRAGMmzYEq9pugIbUKC2JID5rwzmo0PUkoQwBT4FZ2GZZJj8ocMCswnyoW/+cK0VPQ6cBXkHItdREyX/sFxYV5yZ+JyO+VpR/TLUjVCXn/7LLWOK/MrpvnbOONY2fVOVTV6hdPOaepmRup1VZVCRzm6/HNE8dcW9WOat4Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6nd1dkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6nd1dkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83644C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706846296;
	bh=q2HAW6YGv38UA+8kI8+INJZvNWVEitfocQMjQ+myFKw=;
	h=To:Subject:From:Date:From;
	b=l6nd1dkpxX0G+6gKkNM1vCuIpaKRyzVQSv7qdSjxdlfMC84iG+1NQI/0cNmk4VYFT
	 yuBj7EEeOMZ1RtYRxyPwHY+emQNrq8yMZMy9JyHubIGeqAcuHFjXecFU6ygGhpek9X
	 Ej5j+/BSwALRGTQHLrICj++gchCZhqGcLpyh3Dw14olYnNS78rP2DSra9+mR9Istcj
	 Voo6/B9QxVeysvhxdYFQmF4iln8K9F3YARLsldgu6vQrfi5N4x099tXvnLaoxw6dYb
	 0rULWTtGCOl62fwH4qe4fsXaQDysUUXVzFDx2AzdS+Sb8D8r11PjG4iE1zy/l/qJ3f
	 IP0nAkFFGaidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A480C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684629640.884.3238223556018299792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff71fc6a42c04e9ccbb3c21dde390604e1ec01c480f06052cd2028d449249d6
Date: Fri, 02 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706846296

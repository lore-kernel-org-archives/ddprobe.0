Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3708F10E4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754282995; cv=none; b=MAsgMjx9JvEpDwToLJ4wSbrAyyjsR1/oXstCP3bfBkH+bqZ9eYA3gZSHOl/oaDFpf6GOs+y7NfVOoCckAO3qmqWvwcJmMrfzoYid1URZ7sBqcZtDWl05aukcw4wtT2tkcbWOpbpr+qil+HV8gPfAc+q7sBbjzGP3W4Cu3Lxt73Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754282995; c=relaxed/simple;
	bh=8gBWlC3QphaB2LygMMczLSX+pBrRPZlFObZeLtaH/8Y=;
	h=To:Subject:From:Message-Id:Date; b=UffB3gWVIFqYKnF7uLvk2njX0QnkNqO3Qa7OZg2A5B79Zgwrsh16nExnISYpjUxyjthSK+iTQhgh6571FyBgvGVoqlPjtKm5xF3BnbXF59rSFu2lY8I/heWQHWEQl/podJpGCdP1LWqlYZ38tBzkNhGPiLRcDdnaSJ1ZZGrRPXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2TKWux9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2TKWux9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A191BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754282993;
	bh=8gBWlC3QphaB2LygMMczLSX+pBrRPZlFObZeLtaH/8Y=;
	h=To:Subject:From:Date:From;
	b=V2TKWux92UlvCWOqYJ4aK7NKAxrD1B3hEFF3xncCrmcyyG/U5w/v3e7OVOqB2wTVu
	 W78eIACFQei4cLJ/pnk60kxU39uR0/DJEE3f7Fd3bxqYI5MviPON9KO8VLuuspD9tT
	 3fbOqCeDkb2Mv8CkxilR5m84yNCy9iArlG0cYv89VJQt5jz+0sRdBX/wWThEbRwQ9s
	 5AR2JUGSOmmW57Cz6B89u2ZUa0YGTzoEnSP515/znJPXoAqLfkG+wY9IGgZff2P2T0
	 YX4y9Dd2FXHEi+s2FSWMjOrdJcOQLSunqLO/ugRndP6nYnjPrO0ut4zrpA0PK/HycJ
	 KkkCDe8OuAuag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034AC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428299358.15714.15976041513459205073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8395072b1bb56e392c2869805cd1793592b65753dfc2669ac0a8f96d97c60e
Date: Mon, 04 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754282993

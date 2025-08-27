Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09021E51EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756316393; cv=none; b=XMVcdcgiwYFVD8HKhp3QHX2L/g5ovM8Z5wIhuk+Lu9SNWXCsjC+dDKcg/1s2nuXm1SuCiSlD4/FQmzyd/gZnTPmmmsMo59lkLFKCTCtguyMNjuNtt8BQb+3Cw0CwSo6hoWd00UYBhsIRyXJgLu5DLZpN+h3noyqW9M5qE/JQfJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756316393; c=relaxed/simple;
	bh=4z66zBJq6FXzpEJe/yKQbq4gsk98m2f9cT9Gl5H7TVE=;
	h=To:Subject:From:Message-Id:Date; b=XuzZ1T3EtgpJH9W8roKNqFGWmXGmQQ/oV0zqslUQaaev6jCETiJDeYUS25+5HSa9lwR305G2tmv3v3nvOzXtm9Vc2Vu3SbK1bjeA33IrBESR0kUerC/5dRa1ATujruCES9UcRBD0qXWzn3jpyop4vFF49pYLNq6q7I8Bt80HwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT3FvKA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT3FvKA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08A2C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756316393;
	bh=4z66zBJq6FXzpEJe/yKQbq4gsk98m2f9cT9Gl5H7TVE=;
	h=To:Subject:From:Date:From;
	b=VT3FvKA8xuR7OQTtB5zEX3ZogkA8PsDwcw2EeQ1EWd14icPACJIMXbGejDrZo+gp4
	 40vnK1GB4FNFJAHVpJ42NO8DGm8pa4iC1nLJG5/j5RTks1W7vBu8FwaRE9gOGL8W6H
	 4DwVTk9IWTddaVBxGArNNMq1OBQ+B/ejY7dWi4batgCNvkJH/ryKn0DS6ddvz+gpzi
	 2MhP2opTb4x9+8POO3WmJsh/9NjEL5HKpIu8PVrHbghqUmGyxcxf9Z4taakhBbdNyH
	 4xUhJW5S7sqt6YKNoVnJAyV7XXVHzaXis0dAaZX//vTSJ9bFpMurNvHdZQpY67r/J4
	 cgqjE71yISk6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F40CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631639365.22740.3546100750706834698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72afa63885973723e1af53b76df4d94989dd2d4d63fd10281389c6d6ca8c6888
Date: Wed, 27 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756316393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4421B209696
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744969794; cv=none; b=UU7lDSF5ffnarAQHwOXF54EKQ2pabEJxmckPVbMWMhQQa9xaoWlkvi9ze8r6a/hsazzkfIOdTLkQGo29evWDhw9ZcZswLoGBO5qMSYfKPus5rt766DwnEIou5tE9gdSTw1uBGPkd5kXsQvgqjIjmdAJmeNvdDw7A0mIuj7LytTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744969794; c=relaxed/simple;
	bh=Vmya+LF603TwSbQHltqMkZQodoCk6yekL+hdrYPyPHU=;
	h=To:Subject:From:Message-Id:Date; b=XZuZwfHWZqTcAXkM+hzXE+2OnoCS5T9VW6dYA98powtfNM1D72fDvQLcfDIVg7it6LBSN8K04iqx9Kolh7JeSq0+x5iNh5LzUCEb7XTXqQt3FFJfKikt/GvAPcl9vo/0asYqKTsQ+2PjUew1CGxvtFZsoz7Ejplp0WbGBgeBNhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWhipwTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWhipwTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFB2C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744969793;
	bh=Vmya+LF603TwSbQHltqMkZQodoCk6yekL+hdrYPyPHU=;
	h=To:Subject:From:Date:From;
	b=KWhipwTw/rxTvu0+gjCuavEcq61LTbAKX1M1uWidwDVZMajjLf/7kx7Ho24sWrSiq
	 jyqO5gCf8jH3xEHxg5IlQ1dqWfNho/epFemC+QS6ZgqPr/Du6Ut3owxhRqF3dGM2nQ
	 6KRckebhXtSZsM4dUUFLI53ivrJfeuY0rx0YPX1WUE/oKbBXNy8pPKHYliWXU6Ii3s
	 gmgu3b9UK+SfoL2P+KIrYUJ6Kt+ZhkhpPBoT05GSGmUPhe6pftvNaRIxS62hCMSptJ
	 jmknHgLxADunP5FW5viPD1tpU1mF5zRLwaTO2IYr3y/drubuZml21OqA8KBIXg3B4Q
	 dlsBHmYNZMq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496979360.20918.15247330165633479000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93331bf8374dee6baf41c510fb846b9755f8cc1a229453c5efc3bf9060d7184d
Date: Fri, 18 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744969793

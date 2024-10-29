Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0B192B77
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730214954; cv=none; b=EwG8q9T3ugnzfBOYHae+2qENsp8cH7tI+fCEqkMyBtOGgld3Ip5QX5bbSD6UIbnWSFP2tOiMW0tsg2wFxR9HNnwE15NgwEXLpKqh8UcYKQUbR4chwzDaVK8tiOaNwVkltAcoNYDFXFZEK33z3DV6Zc5vCDMidMPmasN1NX7z8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730214954; c=relaxed/simple;
	bh=dq30FQUsq9tieeAi8PU1E7NQQf0ILWED6pEroodwA3k=;
	h=To:Subject:From:Message-Id:Date; b=qegBRPAYWAhyyl/tJL0owQd9n9Zvs6QN4xkhnOdb8eRP3PHQonDWSBwBHu/um9rT/cLqoA2nChB/iKZhENpYaeR1v4GBGUaa8kueczJ8SvaNatgvAIJWNwVVv4GvTq9Ump3l7p3kSex7jx+DkMDUJIoaGlpBrnVlNCZr+pVaOhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhIiwUL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhIiwUL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C81C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730214953;
	bh=dq30FQUsq9tieeAi8PU1E7NQQf0ILWED6pEroodwA3k=;
	h=To:Subject:From:Date:From;
	b=LhIiwUL0Kr5kJ27b948nSkLrROrrcDlxWnk2LO1RMjoIMhrfTn9TA2mXkEqJklqdA
	 dLUMny7TzWYVDOdOZCWt4MJgj2xCOAWzFVzg3yhZtp6ZywI7q0uKS5XR6mPVOVd4vL
	 xfP4L+0siFrZLOYHMUU+kD+ol3J++fuqyzefJYZDHkjBsaBoTIL8+Y+RZ8t3F6psWZ
	 Az93x7gkm7+nPdql/y3XDVJ4tbFFXH1M6xoO7Y/uPUKwecZ0fIXAookbHGAuHf5p4I
	 4noeVgg0SbQjHoqkSaKYzbV1iCpORURy5j6zYyTTaZ2taDWXaIpWK6ioYGlAsJ+qoy
	 GTxM28nrzk+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FEED3A66B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173021495364.1354.10202779522533431062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513eb842c63b516d88bed10fd1422d23f785685a7eed03ec776f54044f4cefb0
Date: Tue, 29 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730214953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3CAA95E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743751194; cv=none; b=EXlAJzPnEk9OXRFX4sJ60KtmcG+U6T656SsiUABu4eUWEihzVSWf6SyvypCxG4B6DeYb7v6g3Lry6rRPRSwUTXkllG5HNwIvq/uIqS+oA79d95r41hJ4WIsgr1PB9YTqA5cgGFbfsvhxr2fw4QxopESAuBD6sNauzhwRKhTg0Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743751194; c=relaxed/simple;
	bh=R71lGD0UIRy9UZyu/TU0zozjPIZIJPgnR+6GUywEcoE=;
	h=To:Subject:From:Message-Id:Date; b=NgYyGKfI9J03wCSPSsd746CEzW/ntH67vn4enXrThbjQezUYQkCnvSZUY/ou1tF1r4BP0TR7frMI8E+occ2vod/mwEmEvOBziKp+oOq5cHxpyrY3vwxYZZ8iSD87zOqoVn88zAkT11oZYMFRO9j5dK10aFbZN0CPjaEuGJSSDa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcHZaYSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcHZaYSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA240C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743751193;
	bh=R71lGD0UIRy9UZyu/TU0zozjPIZIJPgnR+6GUywEcoE=;
	h=To:Subject:From:Date:From;
	b=TcHZaYSkeWreI4JXtZL0/dEYIGI1y52VgKWdRVS5yPFJzVngx0MJ6aD6HEEzGrrcA
	 VMR0e8GzF+yMKpT9svKDPJDV/3DJAgpVtKceInufLcvHyVA5UIjew4jG9K2i90dO94
	 h/4n3Gd+xbMYRrW5lTf9x+3NRg9Pw1wpiHilHcHOuVKnthce6gMlT3XF9bcyzrnCOQ
	 MLlpxR0li9YXOwIJdPcZ7EK4Rnv5YqOKhIziVGk4fZhJLjHASJy0IS+xTWC5n9KqE7
	 7qSl+tbXSsFEwX24mVS1gVZjboHOkijzSH1JWX4yGhQQJHHu/Al6rBkNTkUfCfseJA
	 86u4RTqS//a6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375119360.25632.11580229118587795034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ab7161092ffce7f837b9d54c0bd763534f4a77883a7202182bec103ef09fc2
Date: Fri, 04 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743751193

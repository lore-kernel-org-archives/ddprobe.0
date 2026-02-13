Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6C26D4C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771001094; cv=none; b=FSG1z8rRSiQoELkITIA/NMqmdeCRZi0pflAn5hJaTggGl6BcZb/gTslpdkms0kZ+2c0CLp9dDtK1PKyAiu0D3jyzmSM/VMk7Gl26zwGiuob2KS1d+0MjeqVX1kvvmlcmseLUt7cIGQuELZiGd5s5ru3lfWdhJFSYqTzMxKYvy4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771001094; c=relaxed/simple;
	bh=8cYx4M8pBvzrXaQ6F5zj4fMvT2unlttqG1zAJHznkgo=;
	h=To:Subject:From:Message-Id:Date; b=JPRykS3PjA3ZQrgTPx3zx8Yugw58V6Gee0HE71FgEHM/aV91qarSdcwAZYNZXjT+Jh4Eik1rssPp6lacQ5p4gciDbh/05R9BcqdUa97/B9+oWI8n5mDDtiDDwNLdKTYbu+vXCZT7ZGrSlrd0QmUqdR4JsU20HweC3O2uLemD/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrBlbbFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrBlbbFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA0CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771001093;
	bh=8cYx4M8pBvzrXaQ6F5zj4fMvT2unlttqG1zAJHznkgo=;
	h=To:Subject:From:Date:From;
	b=lrBlbbFHGJo+XPHoaYe6jK2EPrGcJCWV6ZOK8z+44/PHKc95bJZd1QXEf0YOErILj
	 dMAs5Gy0V/EV8vL0z8phAYvOi6xIsxMF+5MsSY1a/MizZgZoyDHCt65jr7bavhMY83
	 iU8BQqlwaiPGAybcZTYkdwAphcBoXai08ahPrD/p5pV1e5Wh8R0A6ddnq6ZFVKzLZ6
	 6apRwPliN4BiFj1EUMEuLXuiMQ5UcTzUfdS1Gp4hDxiZVJQJKaUa/uiCjyKiBbYvIi
	 ux8CG0THYWufPgTa10rCXwXHgqWLt6c998/ICuKseIgxdR2c43AFZXQwC+9Hi1vGtW
	 LlKGvLiLhfiNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA42EEA84E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100109362.1602.4522251599032929017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42156e924b1f8f0bc96174478a889affc7422b43a68bed54e2888cebc32dc4f5
Date: Fri, 13 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771001093

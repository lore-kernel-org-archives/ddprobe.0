Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DDB45033
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717943243; cv=none; b=OjWYI/+UvNvVgQ9J7j/Zv9IuQ6pK/BYd7dlEJDiGcWuUk00jjvx23kbfMrx11XqjI27g/JJri8p6GtJYhOnSbGG0P4ozMQ3nSxYPsBUhwsOIyuOkr0iKaB3VT9KXp/pgKVTC+L6JbxJ/p9yGFmhlMRav5QPCm8NSlQrNlHdH9Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717943243; c=relaxed/simple;
	bh=qHBRJ9dVXMiw4SFc3hrfR1j98R+4v51iCW+yeN5SG00=;
	h=To:Subject:From:Message-Id:Date; b=SJKpeqYK638Ww24MTCKevIv6ARmNe46v5cfJQ99CGpsTNYinzMROlXEq0sxMNgKUngJ29/8qAS4QWYD5bh8rr181eogjFBgBXAAGmXkcv5kt0BJ0zlhHjcC/oFLFB0rVK3TggzRvJtyXCFv++1d118Z5IsVezo0yAO8QT+fFDXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E32MkhUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E32MkhUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95C0C4AF52
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717943242;
	bh=qHBRJ9dVXMiw4SFc3hrfR1j98R+4v51iCW+yeN5SG00=;
	h=To:Subject:From:Date:From;
	b=E32MkhUoWJLQ36qmd2PvF+mRxaX9+t2CyRQq5i93zD2c5J3tJgBuzK6Wzp2tFmFzf
	 ph2BOxKu08P9dujAO5WJrh4DreJ2qxcB60XHFExfv3UhsPnG4L4G70HGot5JRBYBN8
	 PH34fBYic8W7/+isQqN+5kQE4XgSOXwxGVx0WmofqGvc3mNS6wTTiKF/wVkkbr4rqF
	 jR87KB+lbOsHmH00H3NscU0W5+JdZMyPE0Y1IsN4slYaez49iupirlCYymuBJMQt4S
	 /Nl4as8RI0TjWR4ZUAjE82KkVYJvJ6eiyh3FXdMRt4nYznBrBPCKSkmBs6vvUtv6Bb
	 H+N8yqD495jMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51ADC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794324277.20323.17299072077965355195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0d763e12ce08fcf0ca5e000db08fbf09a35e15bc8731c3c4d5156c0ac61cc1
Date: Sun, 09 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717943242

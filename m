Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7505CB5
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711046897; cv=none; b=rG81Jpsqlq77MoI7FdiW8tS2FX0OaMksj9qX73f9q2tJClMoms9+pxUGuNlQwWxYCSGlpgd4G1DtLgdiHTFCovqXW8NsgIwPxuh7lYwf7lBAJo8scL8u+da7Zc/0K3ZDrSma3j5CVlkjH4fW6HZO42FuTkY2Yl1qiKKbCikBq78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711046897; c=relaxed/simple;
	bh=TQVYGtaPUWMPgdNYmkyz1+ErCUIJyeHl+frbGkRkUZU=;
	h=To:Subject:From:Message-Id:Date; b=fAnL84IPu6vI7hFqq4au7bfUgQ4tcdEcZKzAPJo8FsZB5N17DiN4Ofbc/aDtv4QGUTh4vhWNYE9kfyWw3w+0FomcvV7UsTh5FYHBC7vn8mC0zW7LbfCIf8gSnXAq+sXz9s1HgV+EDsDUwTofs7OKHtR1Iebq0UGbtGuGCBQsflg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q88pVGv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q88pVGv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB1AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711046896;
	bh=TQVYGtaPUWMPgdNYmkyz1+ErCUIJyeHl+frbGkRkUZU=;
	h=To:Subject:From:Date:From;
	b=q88pVGv8mbqLgktFluWsoXZHt3A93GqJ88MWzVb7dKNqA1nwiI/AMO50EkhD849h+
	 Z+3BQn/Ck2L/+ibG5dJmsXd+tGLbd6dNZat4ax463EwbAd9lkQ/+b7Kv80xz9cUzPk
	 eDv7ZGG8Zea1D6T2wxaDv42EpeaONj1eZiBxCpAbHuZ7aEsTrysSmDYuOi3/AZypxM
	 jNv26RdhATkdUk7ZjwHOzwSRKTghE7ipTK/8d892Wq35YA9q+lozMOTktIy1s4MYHp
	 kIz1t9p9GGg22mAjTk2/8W8VyuO5/GyHG4Pti0MulzBAw28+BDwlX9EatRgQh3vWVH
	 aIkHl1Q76i8WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64369C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171104689640.23999.14247414871259286571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd25354295b01c39a51c5c1b5f506ea019677932f3c2f804d6539e3f939928a
Date: Thu, 21 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711046896

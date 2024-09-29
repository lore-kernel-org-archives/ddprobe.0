Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0F8F6D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727643954; cv=none; b=H1mgWq7QRyqr6fp0VEWztFg/S87jAjWc9G+TELWtmoZkcw/sl36fRs2kfA/Ga2LfuTARPKTZ6Oi7O+A05+QJNidpvxnejZocpq1/k0k/oYt47KsGc5+XMI1lJQTnEV55KVOWHQJ5MHx69gCCBU4TtC57ZNar9x6kBXwzk8Jj/4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727643954; c=relaxed/simple;
	bh=l3Cm/zhKVwRDlZzaz6NsH8gPRQ+0kUiNVRi5l/0nnZM=;
	h=To:Subject:From:Message-Id:Date; b=ETA7HuhOl2CX6cqXeUBSKptmrkjokhf0x3FjnXCKsRS3W+uzENt/X406XBkM8JRPxm+lbTl5wapocpnHkS8yb3Klzx+1nQRY59IZBYcze7YtzSU+bA4CI3pf88WgiVfR2SbiV/wc0FX9VfjJe40h2qSy8QKAOGUlxDgAVzclWvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rA2jMfPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rA2jMfPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD185C4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727643953;
	bh=l3Cm/zhKVwRDlZzaz6NsH8gPRQ+0kUiNVRi5l/0nnZM=;
	h=To:Subject:From:Date:From;
	b=rA2jMfPY5wskB8Vkjq8ZI8m268ashIhUrqBxSHh0d0bgN3ZeyDPB7/yXlpdZRIPHZ
	 J/BobjexqY8rmqPDFDPAvBpnBJT+GWlTkNhqnC8Cw9eCLPdri40TmU+Mm0TtJBU9MF
	 CqChuEYzp8jxHpkWtwFMK72X52vK0Ibt+MAoqY7UnOEv6/CtUwnZmLo9ZGwE4J/FtC
	 asg1jSlMlfPZi27E41KC/DFqY7mngoLRXc0KHj0dv8vYYT2zOMzQDH7nYDzrOdOcDm
	 kqXSopvn9CBeubyfasUXuFCQ6Px6JO8lN0V8cDc2OYnDOvNyodyXqX5lNfzjLjG8vy
	 nBJCTb5YsIdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F15CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764395361.15489.3626437294186619483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c864b6e34492eeb0eecfc36a4feedc674c9058a4053a2331d6af1b91f8e61a6f
Date: Sun, 29 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727643953

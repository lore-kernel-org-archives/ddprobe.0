Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7321FBCA7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381374; cv=none; b=QCkPxP7NhVmE/Ohze/w8AQrYa0vw9avEA3sMkmn3yITpF2hGpYuyUv/qBjsL6XAjY8mRlDwkk+hOzGr60FoYmYZ23yWGLgESsuN65dJXtE39ulMlEd5dkEaXhhTGDNLq5viE6tB9QO45r3lRyK4N8UvfC/zaQvgN+7Gu5bcR174=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381374; c=relaxed/simple;
	bh=obndR7Vg2hfNETidSaotvN+jsQ5dG71/Ts1U0Y4IPuQ=;
	h=To:Subject:From:Message-Id:Date; b=UhFEWfbar8G5LY/Fti1BwgL5VNC0/4nHaWQ0ojBPHYvNwF89Zrn4KN56dNr6bc4Phz51kC4Yha5vzK2MGgnPMWoHvJcZ1O8INdGmYYMfi5BR2OanwOO9IePceJZxAlgj2Tl3MEXJNuLJb8vGHYYFiusZ9arWVWRHm3KaHO9NFEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCKoYpgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCKoYpgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA015C116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765381373;
	bh=obndR7Vg2hfNETidSaotvN+jsQ5dG71/Ts1U0Y4IPuQ=;
	h=To:Subject:From:Date:From;
	b=WCKoYpgdQc60Pi54k7aURstzrFGBTcBXnF35QpP72YqIFvxHggHc8LCG2WxxGIspy
	 ASG7asvhbb4BaGjKjxeDmxgS0oY/SmrdrlgX1F8y80dIi7CEXJw3REhyg6mpdCX3ZI
	 9iZpS0dX58oENFY0S1OfVQYsrj1qvPXGbQ4mDSrBj7xP/r5nXQoKKXkFGZ/Zd2TloW
	 o9TrSTjzxLahrBZrBRJEnleyls73dtbAz1pnYzuvy7wrVAkl1p6B5UXdc38s9gNoxo
	 ZzOB5uN+zsbGmmuQVY/mqI0aPbaOZxUrF7Q+RgW0jlC3adE6cpNaR+UTWRNs0GnaXv
	 6lPPc94Rdg38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293DD3C920
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538137359.20291.2395816000906454106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f75ad7585e3373466c920901f104acaebc43e87eb985b5ccd5ac6ca34c3a78
Date: Wed, 10 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765381373

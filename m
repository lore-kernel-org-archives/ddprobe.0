Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94717E4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753143594; cv=none; b=cpdvkmXFvxFfYL8XgO88bK4OJRuoLZrzXvU+7ybwQ/k5PDPFbSOUeCBpAS9AL9uphhV1STNKc6t6in8qHMBcRwfNcjIH9T/rhckZgAVXnx/CQFtuHjsByJNo/udtcFEWN6EgEuFFUQqr3hhNpoLJJYh0ZDqLyDrOnD//O3utrRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753143594; c=relaxed/simple;
	bh=7Wpg/52HJjuomH5aIfat2vnD9QDaG7D+sPREM/IrMTg=;
	h=To:Subject:From:Message-Id:Date; b=YI8nvn4LhXH0SyAzB9kzLQs2VILvxBhyH4roFskvuuKZkLXKhl1SS6vvyfQPtYroOYxul8t/AG0W60OhT1yS9H7yNT1Q4HNuPORrTqtqzhaq+5cmHWAvh+Ym7rizhUFH9N4LCY53k+xAQRq7tI5ixZn3DuxvPaAgd5+8I/JcDqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8ip/wGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8ip/wGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753143593;
	bh=7Wpg/52HJjuomH5aIfat2vnD9QDaG7D+sPREM/IrMTg=;
	h=To:Subject:From:Date:From;
	b=S8ip/wGOOZ4CTs7pMd+efP8Tod8KduIpAFxLpCFVgn8drN9zDdlTNvkgMhnnfndcd
	 zCWf0jcNk1+LHRN+Ms9poTclD1POsb979P3CkQOTVNOTAnxcuCAAciRj7x8gaKKa7i
	 my2vbFxDKeb4cHT7/ewyBU4qH1ABjKrCsy5DEnxJ2s/LsYZTvyCymLoPu/MtLk1EtZ
	 2glWQ1YI488EdNmmrHZSXMrA9nUOZSwFGMt1RDdfNUtMxp14WwZU9DlwnuXX9+x0DT
	 DyttGXjWbsItQJNGNB/AEQcZb37ZnMaXwa4528FRoN7dOfDJK/iiDxsdw31t2VpCWM
	 xEcz89B/WYQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1AC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314359358.11943.8916908472767495392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd22e7830a1b048973416a3e35123796b2e8925a4d704f26d97d400520a9f98
Date: Tue, 22 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753143593

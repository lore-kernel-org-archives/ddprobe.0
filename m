Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E0E222597
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781424394; cv=none; b=SashCEl9K/2FR/5o1Dbq0PLLY6Rpz7FkvlEsUObuVwfXhSIJehGb3n1bYutvG1Wot51aK8KGmqLLA0KVpQidQjG6dBKMaaGG58AsgvLopJ7JkKg4ZC9IKdcUP6upTeWiz93U/F02Pc1SvmO/geST+GCWoiTwaZ/R5BdWWK2VWrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781424394; c=relaxed/simple;
	bh=X5wNjM9+C4vFZfBfmJci/Om61/4kDDNkMydkClSIII0=;
	h=To:Subject:From:Message-Id:Date; b=MHTUGPca7waRV2p4T53UjSmzob7VHJirUwUETEhaouOzdFnZzscEToXSDQ/ELcWg9XmnPyNaf9WTtjwcCRBx4CVZMh5RrxrA4zOYicLqZdPfmL7tPN/QIC/JHDvN2DvlGYlsMqR9l1WqjtyxZXvxmSkADnsUh7/a36P8y8mAWng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCxqotty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCxqotty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A16C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781424393;
	bh=X5wNjM9+C4vFZfBfmJci/Om61/4kDDNkMydkClSIII0=;
	h=To:Subject:From:Date:From;
	b=cCxqottyviCPQxvAB97ictabKVt9PFhMrA0CsEBc4jZj/7x50BUhUlnKN4gCEKsDM
	 A8jeJAhAJu9fOJdNaClnw7znYOnDPqEfReeAtxtAIoZOiMPO4MCe7xxlTdhYUbVFZa
	 sAVOIy4aQYuMWGn+dhyufc7cqhM1tTze2p3TG11Wb8kpnrGbnGkOM5XawpT45uk+d9
	 vu5wwf9a4jENiFQUFfCfPNxRe8IyRZcOU7d3fp1td/iCJ2ZhDcq3tl5RVVIMp++cmq
	 ZVjP150ienBbtwuePJWI6qnXXUzuTlxNQPnMd8hhD59acbXdKHHA2VUhEHNhinpOFm
	 z/mX6u12ezl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE93CD98D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142439368.7885.4924896342807831274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fdb564030e79311646a26d7a8b8bc1aa3792fdfd7f1cbf4b17707f195a3cac
Date: Sun, 14 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781424393

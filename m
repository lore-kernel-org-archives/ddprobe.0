Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEA02222D2
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751663994; cv=none; b=Un1lmEeVr9gAr5+K6zfypPafLF0tGtDQTYQwMKSG7UHLgKdGWgX8dKSf+gsBjIv3+h4qjliGpC8C0Ru632VJjqPx9pwzvR/KRozbVMs9Q8/kC5xYpBZjRSnWlZmT/Nr2PJijWEkZzstagzj69Zi3S2yJMhWi+Fp53zP1CSYbjng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751663994; c=relaxed/simple;
	bh=WnLev7blINZCzUtryeyQOZn49IfB/U7gJwDtzwdrMKk=;
	h=To:Subject:From:Message-Id:Date; b=CE/AxFy5TnzCRE6J5bHIzDKuz/V3J1P5GnoCRAwAhsjJZD15UxeB5jLBI7+/za1MTyOkaBBUIYnfD8ND7sJcYwpJSxSIazO6jOjc6zOM7HC7a5YfhL3E805FrnqYPa28yg84wCO5u60byo/3kjwSmu1Ud3bGO9BRACHr3tRM9/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6NhJprg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6NhJprg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E572C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751663993;
	bh=WnLev7blINZCzUtryeyQOZn49IfB/U7gJwDtzwdrMKk=;
	h=To:Subject:From:Date:From;
	b=p6NhJprgW9hCC5qxwf4zjuk15W4gDoScc2j7KETJnrxqnJrbyw9mhmnH03FmVJNah
	 x4cLg+xdC2aq1EgIPozkDR3GgugYZaUwj4UYVEsv0qqGBbD2xe2kQa8EU/YmCIuGJN
	 JUquOKeyJioMzpSQMFH6dpbVOoaPj7/LAVsbpzU3t7kEzynO0wTqnum/hOb+pQimjN
	 1EKifqdjCGsnSfKZGPPNz6HVfgycHrdcws6b647Nj0ZRzv2V+WmcO+rvMD2knAKQTl
	 BE+j5CCogGiwXzFPINSk281ehpo2zyD0usWdNyC5LF9BbTq/fsOj2oTbkkGGcaUonU
	 RrTFIUFlyLhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EFC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166399357.3642.12532879232540641032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1d30928b9302c5c59ab8e072c6ced24e49b47a9852326148c1e64a49bf295f
Date: Fri, 04 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751663993

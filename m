Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA41F8755
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751669394; cv=none; b=jCYc3usLg+NA7F7vAio3ws5YomqXK1lWAJaLcEdojrjOxlXXm8rB1QlHQkUn/NvVnhz/fAfI2sV0husUQvcRFBVlCYdQjCOowVQ4pkYOQhkMUYgbHYf7L1KSHjuUTxs/ZPV77uqRNCGaq+cCpidVXFS3nrdiZz27Bvj14wxDhxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751669394; c=relaxed/simple;
	bh=ZE/shOqHS4Va4kdLDh/HmsUI9aR7CRKKUk3hp/G9TGg=;
	h=To:Subject:From:Message-Id:Date; b=gM5tlR9yUmUXcUPRoNPeK+451Bo5+WsVDnBeSiHITo5a7lvZkbAn6jYQhSmVa81WBQXPIzYK9sfi2rQgYA3QDMbdGkLcAm6pr82gUrdHMJt7hw+TDRwb60AuGdz621BPQJfAorQxaWZ1+wx3hkwpQ+A9y59pSQk6Kzd0ehpSGNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR/dhNUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR/dhNUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF24C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751669393;
	bh=ZE/shOqHS4Va4kdLDh/HmsUI9aR7CRKKUk3hp/G9TGg=;
	h=To:Subject:From:Date:From;
	b=fR/dhNUtz/qhd2jy/1X9s2kdvAT0iwG6XFWWgtdpqbmmzZl6QXFZgyLGY3LnU6O1x
	 aCkN6/I+xY7OAooaNPtHg2MWp0z2BvOyiEHa5cIo2z9DftIkC4Uf6ALW7kmgEmHlxW
	 msY4aW7XFdE6jKH+tlb+ievZhEu71QyYJYBa3pyVs1K2zqxP68igsnmo4Oa6jwVYsa
	 6biXslruZJ2Gl4thp8sI6UeTEkd7OVdeZM6jOWBYJu/80v+lFkBattcDBAnDNOexxn
	 SEyx+kKynQt5d/Fo411ota1F1auEK6IFOj0ExY4+FtkudK9nt07hLfhhDXkOx8RPqz
	 PQoD+Posxdoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E1C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166939357.8607.2308699036628418906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811c709a62f0395214a0a7e03780ef08f0358b290fa9b0d564ea150c7346ded9
Date: Fri, 04 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751669393

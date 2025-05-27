Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E984027CB2A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748362194; cv=none; b=HlG87YOdV1RajAS0alSqVhhIWWkpNSD0EhAl5zs9jPOMbFRpIVuY3XFIfP1tf+LbsxYkKwuF80PcrWRJ3VepiQiVvJh4p2KlbXu3RyVYXgmtW82H0WP1GK9uzakgmW1+l70EiM//3GUuauY7YflTRdOs2zEWA83KfEgYD6Ipt7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748362194; c=relaxed/simple;
	bh=48M8CeBWwcDXgDXWYXtcB3vo0chZCOKHwFmLb4qqCdc=;
	h=To:Subject:From:Message-Id:Date; b=de17qh0rnx+ZdwW+3I9esYubVeB76InrmvDAKE9Y6AaML1UzS3yEHkIXg8apo7XQ/mEQgsOvhFlGeL4X8b4e6FOkzDSETuSQDeaFTxjeHGB/t9r59E1n+ZyXajwiFEAOfGV/GIi6Eb5loowe0PkDzHRSBWzJobpx+bYO3DoGAPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIWCzVMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIWCzVMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18BCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748362193;
	bh=48M8CeBWwcDXgDXWYXtcB3vo0chZCOKHwFmLb4qqCdc=;
	h=To:Subject:From:Date:From;
	b=rIWCzVMfI7vhC5ajZUHaHNmeR7SnuQMnz1SycMyeFCJw2Zs7ub9obUr6QoSn74n3a
	 QaV5kFRT9i7OblSp2esWaYpqKLmjPwOl5vVSVw3oKp081TJlWIxTAXDYF5dmEA2shU
	 iU16XvfyQ0td8Eu9SZB29Cdz272hL8fDqYGhBgZikBMtdIK76hO85j5QJIZIPT23au
	 siGgf7MQdowRRKMouOEVz3F/5PhNEuf0jorX1hXwmw+JglJEqqKdYG9vnFG/fBgN5Z
	 BHgM9RtA5EtuXn7C9pWa0qt0PeXRd1eVJfcYmVODUUjnQhj4ECnFiLMyu9Wk1QJu2g
	 XG2drFShnWfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B35C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836219358.5675.17401319589327503940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab83c5b164932d6b6fbef41a5ca21adc54cb270330559d7a93b0a393576d2a53
Date: Tue, 27 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748362193

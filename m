Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D4257824
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776788254; cv=none; b=P9l3juD7brrd4tYTL1VcZJmIUfm5cNKK+5OwqXzb0/rZUWhqobXM0r8ZjHCFOLTNp55Cy16DAa9GPKlSPoDH9MjR/0CywA+ihEPcGBQZKkIst0FXnu6nJq3IKbvaW/GLm5nDe0d9TWTzqzV+yeaHBcE5qlYEFd5qQe9Y5CBuj+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776788254; c=relaxed/simple;
	bh=EH/NYiifUcUi84/7RNfawq2gog9XEE1Rf3NfE/+y6to=;
	h=To:Subject:From:Message-Id:Date; b=Pkzp5/AsGMv4n1BHYByyBiBKbKvyjmJ0rw9LPO6BL9SX3auL7499tLBAGpA2ZcnNSG14hClGqiAvoZnWsNgaPerYFGqqX213Urhh2wyX2wr67onbyvKiL7Hjm5858ra0UULI6JAD6R0IWVvFPIRADW0C6P0MzTTVjsjwu2IqiVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbWyvtgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbWyvtgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F42C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776788253;
	bh=EH/NYiifUcUi84/7RNfawq2gog9XEE1Rf3NfE/+y6to=;
	h=To:Subject:From:Date:From;
	b=QbWyvtgVc53QoNqF5LQsmdBlJ2CdK56nW32dcHcXHRsVuRePzj+rVdCj0T1+4EPhP
	 IT6xnb9Jt6SaLTVaR/WU+gZwK0/FXEZ0hu8wYLRO9PJMksj5Pjd+pTQ0sZauXe3IHr
	 bQJZprZ4zS4V6PIIWHOphvTEcV9Y7JWTPI9Hulc+L6vgW5+R0Wj+yimTUbyNk9XhCD
	 XluiwIvVSGezy8sFFMfmsnotaFpQimYhrZRDAUS/yJ34e+Hp7jfIusztVN7zZ8sttM
	 R8wt+J9vbf8z5+o5zATHk/QRua31F7RK9tKBuGERgVjowWGuE7tsItn4xoPx33GrgI
	 nEup9BWfP1KyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63FF8FA90
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678825368.8080.13559627578812473575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9046eca43b5013f75161add8a49e53b734211bfb34248feee5849fd25d990f
Date: Tue, 21 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776788253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54043175A7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784955634; cv=none; b=e2QukA/MTza2i4k49clnV/xHk+FY0mVw5P+WY4d8lhttAzFhFg/RgLgBhWO3Tx+ZQEUABZ0IB88HIiFQlhctm9nJiEdjl1pRgEfzwzSWDE6jj8w4mFkTL5OjQcVdp3sVDTYjQ+0x45Gq1U/048iN+wH+hZebzau/xXYHefuyeBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784955634; c=relaxed/simple;
	bh=yFOBmXLIr9I6fKfDw3oZI8fQeiuIOm7PoXzmt4aDHOI=;
	h=To:Subject:From:Message-Id:Date; b=dy1xT+60IM+ij/TkTio65gwjsUFHBb/5jN3VARRGldIYa5rSvgYaJh75jZ4c+3uByCG/C75/8VC6Fi5TuIaNcMAKUBAjQ5iKcjY4tbbKPd55AuEv7VF2TXEMao22maPJr2/4M1V66UEmQPRdm9CqS+7SbrJILOGWpG6bbmq0X68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkSGB4VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkSGB4VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1407C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784955633;
	bh=yFOBmXLIr9I6fKfDw3oZI8fQeiuIOm7PoXzmt4aDHOI=;
	h=To:Subject:From:Date:From;
	b=gkSGB4VSLeJ//UfwZcjmF4+3VheV1C+P8tR/HxugqzWepETM4Qntcglg/lEZtSW1Q
	 oLf4SI5gKw/ltS2WtpnBAQFOWiviwrCmSjyp1JRYvKwF075xwxN6Ain+tgngr9hXob
	 y/0z1yf1TfwDsL/WHbJi1nEgWLpdXmpmO+sj6rt0tfU89ZQRUa4pA7VD6d9yUTQlJS
	 +Vs7QrB4J4GQ7cNg1DtmO55K96zWpigEfxMwwm7+qEx3X1DuxXmkVoqymQ/NYwIUYI
	 /BhLSonyFiW3M4ZihMvY7Kiha7XiTR7EhCcrQHVode93fmQCVRxL5DWSaNIE231SPB
	 OK13YUQ1bYKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B9C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495563368.21153.17409397519568791100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5cefb0b4dad3749edf06ac86495ea916e64385df41131888f9ee415e3531b3
Date: Sat, 25 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784955633

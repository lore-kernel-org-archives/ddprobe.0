Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1962139C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777097854; cv=none; b=fh4D8SKRFVygHWZygNtgCEIx/LGoXOhdVsPxLgxDMBLL7iNRcX8IHr66IUf4Zahc7qHKfeyrDX42bbh1tli7IEQpRoLgx+wWcWbEaC0ddVQFPSAkwmOi58DY2QNaW9oikDwL/aa92Q1cet7MKxOwXnjftrEbNmuxJNNzigQriuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777097854; c=relaxed/simple;
	bh=HpP/0weGmFZfFiVBVNZjwTeizq+d4067NJEl5tdVAG8=;
	h=To:Subject:From:Message-Id:Date; b=dt91yeLNIBVWRj7juEKAmcP+AC/cc+651uL3TOgbHHWpbbIGfkZCALxhZ7BnkVdRwpua5oKaVxJtLM8fLakOxjiVVkGlhD0/4LeIS4WPZdqFgxfboiCoj+FobUA1EsKjZJ1LWIz1uZo98FcYKeXVOTmIJP/xYTvzjl/WD9YUAX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMS9sOmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMS9sOmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCF7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777097853;
	bh=HpP/0weGmFZfFiVBVNZjwTeizq+d4067NJEl5tdVAG8=;
	h=To:Subject:From:Date:From;
	b=VMS9sOmPrv9K45vjVyxXILAJMatQV6djXKPm34qck3H6S5jedokkRRTCrjxhknp++
	 82BuMOx278gSvhZ7VtXgmXOhwRIgSMFf0BcR/a7GBoOhC9h1JbbL7jliG9qJXgFT+v
	 lHi/apwtBWXJAedSRiMNCxz/DZw7zo8jrWlj++jsfraW/s2yFxshgDzfEQgPx3i9nH
	 T/4ukrY78p8XP52DeyOcFz2rO09XvNrZZPNN6YUyU5bJ6BqMgkyhMYbyeE0ZCMvogi
	 Ncnk/6pusJuReOGqJS5UkFQOsTwN/vDyOnbxuSLL4NCHYqoRyOmFgMPgBSt2fxDrag
	 4/Uwz5mLGMQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D8FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709785368.20055.3536996551156194295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7857597a082b79d6f745a86d06a86b33abdbf63e08259898862b564be5ddb9
Date: Sat, 25 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777097853

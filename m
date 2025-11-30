Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706F36D4FC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764539574; cv=none; b=o6u0AuQiM88bKtiWGqbPlFMjvFC9ScCp782GhDA7hz87G3zZL9QGPuLwcaLLbZO5e8MiOvJP58vnCBQ9QMft1XY8NHrI3ZY4MuHBLqLvZ8PcVBOIsCdP8kjgNBiMhtP0YopFFitEXr/T/AYZWYPsVRWxF2TPX1F4re07KR3ojwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764539574; c=relaxed/simple;
	bh=eBfTTswJItd0tAZ7YjTGEYxxxE1LkuKZdIVOaEjfEc4=;
	h=To:Subject:From:Message-Id:Date; b=VYdx5rxY4Vwd/PI/F07perVjBv1ClJb+/fyv0cqFvbI3V+B9aA0gtt520JKaD/+MG5vScuSQSysseFN9XqRfa1CxnrbjpUV2iLLXb2y/lcCNhwwWDfLuKckO247D16YHQR1Tb5voRoZe8tPYyed/z38oPD9x2neT3mH6xBl/47Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LamdV/XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LamdV/XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B039EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764539573;
	bh=eBfTTswJItd0tAZ7YjTGEYxxxE1LkuKZdIVOaEjfEc4=;
	h=To:Subject:From:Date:From;
	b=LamdV/XHctjp0cJvogpqW5T43M+w32IkRymK1apDyxEvdYeGNXlWzPyCTDSMpcKCG
	 +Hj1Tc7pO0vv0NM4PkJutCSVxuIPS6oviOYDVng37AhE3J3av6nQUjWe0lofujxheP
	 PHGQoqdr4B+uJKwrWaDjfr+yY0SDb2j9NTEKYyCDZnjw7nPeYErBI+50wy5gkdg/Mm
	 h3hqPYTa2jQdCpZs8GsWinVlq9cKoEhIGgeJuNBGZeercQshrLt2k2KrcRD/rpDtiZ
	 6IB54xHTKqki/+0ZFVL5lsFFM0TWaIY16xlIMVb//WyEElSPdG1DMGa6P9XNf1ECtX
	 TYTLVLYuJu0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98589D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453957359.9898.1264658349088167991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31130f11273a3814ad80b91ecd269ceec3e1d3ef458ad2471b06d3e44d5676ee
Date: Sun, 30 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764539573

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D3712B63
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745032194; cv=none; b=oaCEt0PQiBJEzDyNUxu4eGQFVWiqTB4/GbscszIHo4jZzn22Rupkg5bOpl3Iu0KUNZoLoQ2U58ETCckibJ6IttVeisNNH0LlsHb4Gf5MEpH/4xbQQbMPK29R7RqJXZIc+iPeZspF2UO9gxAe4Xt/sbdjeAw0b5KiVSM2bc41RTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745032194; c=relaxed/simple;
	bh=ZPG/4BXtXuMftoAkRFcdXw7I68YmY8RyOOZEoWOOWfo=;
	h=To:Subject:From:Message-Id:Date; b=OXS601EMe0cKgCzmPmnG589dXsDSQbxPiUyMSQnz1Z9kUFw3iUsnpqlaWiYo70hdjo8R8RSPpuv/IwC7NaU6Z599le5nieNn490s56R8ZmDsp49IPS1C14PErNlLo54dnL9/+ZG6TSGf9CSwWz398v7Y5MGMc39ksePrgCW+NTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEMHy3qN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEMHy3qN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB458C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745032193;
	bh=ZPG/4BXtXuMftoAkRFcdXw7I68YmY8RyOOZEoWOOWfo=;
	h=To:Subject:From:Date:From;
	b=lEMHy3qNxNhbO1ZjmkhZ89Ysnvo7SnrCZ3lGoAn61Nv7+Ti1RkUWBjEJWXDL02WNP
	 OFcJb5dhCo3lQJKSH4o9wkc65nLsde87CKEhMp3go2uNgb7rwYINHshbj8D9/DHAa2
	 pBnnchinR0pTpjvhaYw5xB2T5oT0Yj3Bf+uzl1fcf4yS8BRmxxGl0hmEHifuwtySng
	 oRhkZcv1G7pzlQfGx8fLVM+4v1sqyxrc/3fPonexOO2jLQfIQQwRRaSbJ2IT36Y3It
	 ISoJEiMsq43TvsX5JkLmSDABCYtrD7HkF+mzF11wpdnVzM/8hZa0dCcB/qlqCY5HHX
	 97GDD+gjw8Mtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F302C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503219361.9278.17775831782624091712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167fbc605556bd8e70aa3eb836502f8b7d77c7e72dab315e0c165379414f099d
Date: Sat, 19 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745032193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C28B38DC8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714966343; cv=none; b=BKOjym/9E8BbrccH5ybUjl0DByuhDSNUAMG1ZcD99EN5OFhtvzgzxSDdkEGxljW5tzA4ciPy4cYK5WBavL9PcIlG/jZ1wKlKKZJlwhLadYu/aYrrMAyojWOvQHqKg3WNA2GL746RqMO5+JalTcBsoZAAnfUNJcHwit9hlM78Dts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714966343; c=relaxed/simple;
	bh=4XWHudKhkpLUjHe/AGsQftO+YdhTTcnhODVogVey2Z4=;
	h=To:Subject:From:Message-Id:Date; b=t/J1Jqu2bONmf8f1HWhT4XGEs/H096Tdhhh3N4pzGor1s3ZnGQkC5SFfcuEk6UgVDA4QDaX7zX03+awgwDNZsTlpR7IWUm4n/DcKI7dhbIQ6B/DWSUXbATNYWORsFX/nZwATOHYdzOUGA0UYej0shSsuV6IP7N6X/AhNrFHMiU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeEK3nmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeEK3nmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74A5C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714966342;
	bh=4XWHudKhkpLUjHe/AGsQftO+YdhTTcnhODVogVey2Z4=;
	h=To:Subject:From:Date:From;
	b=WeEK3nmSpN6XILjD62BryjsVCYFNRbRQ8oOGDgbUC3kqBMgoB0CKejWpC1iX1p5lq
	 yfM7Zxsw5nCkQ3HYRozoRuWmkZ0w1AuZAoMxRjjjeSEClarFCMps+wVsIePYTpDdNp
	 wi3MdQepkcdyBCmXInJBHsW9uuy7kT4Ja06ZcujrEFdyzHwVQ8T0N0QZLa690YO/zi
	 5ycE4y6jsSW7pIE85XcxfMolUg1Oxkp8DRB62Xwy6bZD62mozBU5Ftys/sK5JuFY+G
	 23/7buk2IE1Dg5ECWaOIu9TuV/Yw+xnyqXMuUMRA5FQhoTKbSvdJNX46sDVnLOgxge
	 tIY8tFoE7vDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0280C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496634277.3631.6452328531634386631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94aaf353b699ad4a6b315f4041f3ba3be051736fdf5ce54b62e57739ec045b2
Date: Mon, 06 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714966342

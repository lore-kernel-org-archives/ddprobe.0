Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692B2C21DF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790175634; cv=none; b=r7yu5yWQSfC9uQYJyerSoC7Q953Qp7bj+PPsujKKiw2XW6BNqz7C54n+7Q9w/h4GF3d47j1cFQomaVxfFYgHs98NUdW8Sua8MWwO2gVqD7tctNZXfXnGU6LIwIjYGpLGjwK/wOvfjHuriIt0CljDR5Rhd/C3zqkoS2vfCRQ+JFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790175634; c=relaxed/simple;
	bh=9KylkU4RgTKEMm1QQ2jLTDShqzCklCZ79DgDSkzTG5U=;
	h=To:Subject:From:Message-Id:Date; b=svLURWnxqBXNSCM5vgB7eedj9EHz+VjjlhLzU+70Ohrv9qMVzOTgRqeUrzgdB4K7TjsJ5587JOz2WrDuGQhgsUwh+m7l0T9eNOgLWx3FfaeV4bB9SG+Ft+96q8Fs1V/T1JVYoMOqpV6DwtWjfyMAGQB+YEKzICGkshxOFfBkDww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMsIAScF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMsIAScF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE30C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790175633;
	bh=9KylkU4RgTKEMm1QQ2jLTDShqzCklCZ79DgDSkzTG5U=;
	h=To:Subject:From:Date:From;
	b=cMsIAScF0zLFC1nj6PWJu3kqIzdcoEwe+kMrf0YdyGzIU2nZg4c/Iac+AzP3JTKO4
	 28XFefzxoHrlU9pNUWeSD0VBaijYtt/jUa8QEcPUO+DqlkACpM8JIVCdk3oTKaomgo
	 10w4D3MpjJmnZJ/KgRUKSCM1SakmvWIvVaFOMNgudu3zWXbsci+PUCGJV6H0+WPyfG
	 fQC1Y2ptL+xBKhIi5sunpdmmZMG3iVDtESp98lxxmTwAtsNyv0YIzKAmjQD86r2xy7
	 chiTGuMZgVj+OC+xAm2u/l2SkPcPX//DTFwyaHHAW0J7gi8JpU+sa6pS7umIpd/yll
	 0R3jTJaU8vsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA383C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017563368.17850.4023474786505272776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314143762dced360f377963858d2e65a589a3a2502463199ab3414dfb1122780
Date: Wed, 23 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790175633

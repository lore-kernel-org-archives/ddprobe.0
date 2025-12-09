Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66E288C39
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765276974; cv=none; b=tF0tiiRxfGn+iNbV9UqBOwTJ165PAiPSNrQehf2stVVOllLjN4mA3Xopo/vjVZ2hJaSpxRf997kftpotqJtJsxWAbItGTaQNuIE4O55BZuBVEE7s5IZgRkQXuJuzxW1XdhPPGpLFLE5YvMdvMiztpiyIRyjnVCyy32wRVqA6kJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765276974; c=relaxed/simple;
	bh=OBmZAZ4wPoDBQBPyAk4ioM1Bqq8U6J8f8sjg/cNrs0s=;
	h=To:Subject:From:Message-Id:Date; b=jJdtfePMUiALFU17HvRbNUQX8/RjwjYJWAoEDxyAkHtKLwuVHvANirp5WvuWyWlSm+E3w94dwuHA8whw+SvfchqrtC0wJ6H8IlGQpo+uh3oR9s38q4b8U145xQSdXAE9LFi1ncfsOsEYhm5SDLkT55cQKG6uKBZt1n80WgIulKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+mRYgjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+mRYgjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B95C113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765276973;
	bh=OBmZAZ4wPoDBQBPyAk4ioM1Bqq8U6J8f8sjg/cNrs0s=;
	h=To:Subject:From:Date:From;
	b=C+mRYgjMf0h0i+dnwJka36p2iM6SMx+kfCG5wz02z1s9AjVq1IhYuC9OP8bW+gfJy
	 K561mOsPFd6Lt0JWPhFFyj7YmC5r3QnPD7ulwV0zNvsA42KLfDwWr5mMts5AYhdYN2
	 AYkwPnJeQ8omy/UiQb8zfKr5lzUoriNxADctk0Ox2tWGvOR9Kz971+Sggz8Y1w780h
	 KqevWeeW/F7HHJ1mospPdOHD00vSe4W0hHDxFpCdaj7Bue3SnNO34V/ifKtI0tGhgA
	 MvnVBpjMd+qjD0IFAGusp3K64Ef4iwUG4ngTu5Wh2fEb63bSc3TtF6Fnb7RLASikb1
	 F9wtuAxt2Ux8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B0D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527697358.9928.8739403140697769208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fd7b37329ac1903cc4dc5b27f0863e3a25fe50fa15622ab6ec29c6e7aa92dc
Date: Tue, 09 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765276973

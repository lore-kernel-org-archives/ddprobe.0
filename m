Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C7C23A9B3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762543196; cv=none; b=uWPezUJAV5uduIT5TJ9GnQs0Ry56mEUnjxWn1819TITLsmlvIfQlmhMwJW4uVkTSrilVJwRl50ZIepslB/7oFv7cwevSvn8KZu5UzAO9jrwzgueJB6by3ah0H8Mav+HzFuSOip4A1son42vjniD2rHp+lhL251uuyljwlg6qnrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762543196; c=relaxed/simple;
	bh=PHbNsRhQ31zbabYG5lwW+biqevLWSZUr7U+BWR6bqwI=;
	h=To:Subject:From:Message-Id:Date; b=T4DwsMvqp+0XnrkjKx9vMwT4ZMDRomvAwC0VKrRbSJYlOg5JAOeBTzaH7CGZ+1nC3QGg2HAwV5IZadxIgu5m6wrxgrhB85miIMAvlaJpdZxX2esYWdG9XqzTNOne97ECPjPzhFJ68Svu4zWnzIj8iYWz3WlMAi3pERMf6XFIo1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGBKFgom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGBKFgom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD91C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762543193;
	bh=PHbNsRhQ31zbabYG5lwW+biqevLWSZUr7U+BWR6bqwI=;
	h=To:Subject:From:Date:From;
	b=UGBKFgomCyu1Bo1NOb98Mly1BE01haPuo8kW+CpECPiJ0kjIpi1aE/3ZYGb9g0bjZ
	 En3Ms/5mRj9/WOGmtFrdvE7HaTul7Fp2ReyE44QfF91stpI0LmkI+kGrPz9vtDyxFO
	 EFXGd6Zj8flYdj08x+8VO5e1WwAt4+In0Usyzkx1RbrhP/DJC00R0kZopzHvqD2L1C
	 nFKR4eduV7EW7NXvbZUzFMb7nrFT9lWYhBzuw0lg93IKyjMGqvIYXybbuTV8mBoHwj
	 3bVHibRpY6lmu3rNeZWMvoUE7iBYjDeb4evSM5R/pIxF2SuDNW0+KZvWGkdwl6cVyP
	 XpNRlM3+KC9cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD6CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254319358.5757.18146452493861924504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92e7b3814948c44506da690c532990aa5b0a301d2ff7de15848d75aef6747d9
Date: Fri, 07 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762543193

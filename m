Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176D63594A
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755596395; cv=none; b=qRJKygvkij3xnHJ/F28GcHwUiWYrx8NaovLr/b3KEB31Fr15QEfwlDnws5MwP5XrVTyWZ5mJU4a6/fZdftYLk7CfGzSJ0JCmab1HmkZrt3tSLidd17uAjr4IEetT6f0Jia5+OQ+dws+0gle3OVhuBSAtH2YOepfWUIb5LQy0fF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755596395; c=relaxed/simple;
	bh=pVl7zyon+m8VrmNayh747jWzBapKcBPHjWCUGyBZrw8=;
	h=To:Subject:From:Message-Id:Date; b=KjWSvSH3gXmxb81J/uFZZ8gRY44k1KnGKUOXQVBSOvn/r17MspfRK6VHj0lgUrkwupiGWH8ySvjmkFfleJGqMOtw9BcQl5zeGTUIcKa9ccr5VHSpbtcQkh6Fze2mGYiPB/1c+CtydwjmfqwD+5qL8/IJB+r9PEaNuxq8W5Vbvkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdG2xuS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdG2xuS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C61CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755596394;
	bh=pVl7zyon+m8VrmNayh747jWzBapKcBPHjWCUGyBZrw8=;
	h=To:Subject:From:Date:From;
	b=jdG2xuS6mNymgQWdrcMPz2BGdXB4sC7qiGZYNseb67ZIpA4OIFF+DnDYppBOUTnHr
	 LSZI4kIYyp9l66TkDwBNP86h12erBhEK9H/vSanJevAfXcmB9plV2jV137KFMjVedh
	 vi6DaYoxbbyEnYTR6Hb1I+kAPxN6l0LYxfOMFiQ2QR8TEhwKR+AzaoR1rgo14KrvzS
	 c06ps19xPyB4YwSyH0XrMx1UrmmuZz2o5zYOP5p3yAC7e/G3ZbvZJG99kEoiosUHEq
	 BkrZyWJFfDn1No0upXqBFWK2h3ysV0ZlzNPoJ5DoLb9N1Dmx9uBKBNxJIJB6KwzUbH
	 QcWOdVrAu+piQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB13CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559639357.2804.6119573630031469411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba23c03d3ea3fe6a327ca4bb5a90dcd8bfe0915c5715441e1f978218b9c1765
Date: Tue, 19 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755596393

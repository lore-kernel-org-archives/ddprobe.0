Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169B18B0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748830194; cv=none; b=B5R1eMkFA+7S9S6GnOU4L6LlTsDGkhscGtRQyjr39ck7XjBcJEExSjfEoecd6fUKMRWFeWEx5FBejrVl1UWzJT5b1KMBwKRjESz6iMb1meKaLj4s9ZV0SFKXtUe1YUtJ58UjmFCE1s9evCF1a1t9r+xMtaL8K3rdoTWceCJzkWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748830194; c=relaxed/simple;
	bh=Krd0uylN9w4iI1vyF7GxVSvEs8BAd+jsUUZ/iWFhjDI=;
	h=To:Subject:From:Message-Id:Date; b=S1HF6BfNMOGYIrm6U5IzsUTG3OX3ybHi++HfufYNweyboSEC2mzOPm3tZdVtkqAEPPIq9h+e6I7Ry7/aSJX0N3FJJpC+D5erb/Ej99ntLIgnAltTVDMcsEmkMMZVXjEBW3CpEdkQy+vGyPezfvRWDUVrFmcuHNmyEO6TxnWMQB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n809Y+Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n809Y+Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA258C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748830193;
	bh=Krd0uylN9w4iI1vyF7GxVSvEs8BAd+jsUUZ/iWFhjDI=;
	h=To:Subject:From:Date:From;
	b=n809Y+KmQ65xwmcDJ1Il9BKHCTwujbI98tsHDajC06OpbP80TlKrCGJPLJkcS+kcr
	 sRqSXYOQqBURKkjkUnziKkkhh2GdMjVL93yeAopZv3Ea3a28P3pQklecXX1Xz4gMG5
	 KscpNiG8bxe4k4tCVyZKiWI/tOjBW3RokQWQLodgmJ3bqPeA75/u5iTYBg1D1gENHD
	 i0HN2sjEQQ2mL0Mv+Qsik442Ih+h8Kgh6yPfC6ASesRzZ/WtSIxOf5R1yNGZV4tkRE
	 HhN0J8y+uYzRVkI8a2jTbU3gOYpZ9mRfZkhIuklCH1T4okJGXVF49zdOqVqxZS0riz
	 gsWuZY4OOJ7WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94481C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883019358.13805.5766293063994644551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c124f0ac70d8f8a5a75f3d9f4c6aac284d6fd152c8e5078ef83f8349a266f1
Date: Mon, 02 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748830193

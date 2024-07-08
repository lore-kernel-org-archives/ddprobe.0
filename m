Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134591E522
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720471583; cv=none; b=UfMCpTnWgf6uEH5/dRYoJZxqAb2sOWQUyGbytaS7AoJrM6XqB+uT5ys3rJGt5I8IYUI3KWUEDusbyDSDcI5Z2FyYVrFuqSx9d1FdDVrnhOLjysecq1nvdEhVnh3QlLNvUtch428F47rT17KK03kkEccSn+DMQfGKj/OksvS6wsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720471583; c=relaxed/simple;
	bh=jd1Nlm9ah0JoNEAuH0WP1K9g65vEAjgKEg6cT5qFG5c=;
	h=To:Subject:From:Message-Id:Date; b=jfQ34dVTi60EV9eb46FX9ytiA24958BYabXoajo8ZatmGRoeTR1eHIIKe0UbKMd3h1+CfiW88ybIfVZXVUMzTUwNgdZ6H8VzWtnxltZVaz0g523pVbvZw+vl+3RXPl9QFpkOKgmvTd4eYZKjpTPe3aTGY8l+pCE5sNPyvNy8v04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrplIVez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrplIVez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36B9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720471582;
	bh=jd1Nlm9ah0JoNEAuH0WP1K9g65vEAjgKEg6cT5qFG5c=;
	h=To:Subject:From:Date:From;
	b=OrplIVezPx5XtsINBPVyJOZzHcbAMbo+eN7yvKqyNIlO/MhxRTJQkOpgHi3LoY8O5
	 Kh9sCsQQ8wIlfRE2aKENSs7CT2Dlfp9/szYpZLRP5j80/ct5bxkCU0o14CaLXNlzcC
	 WHAc2dT6yhQFBu2YHVuGA9MVt+aHJdCp4OwjbHpLPTnpiA9NyrLCqqtnNm7UBUivgF
	 fA/BdaO45InrZTv5maVzWhoREKV4PXsJZaR1vQn3NCG/93zLSHnnws3GXuIWgz58us
	 umsYDTXWCu4uqW3oYu4lDwmF0EIHECkoMy/jPIHt4rGETq0NvWVbZKDWdrPnOwFqMV
	 UF6Y5thFjMzag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2126C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047158284.6293.1764330621839436462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af4cbd063daaddbe478074954ce0c482b69ce1bd6f477a8e278df3fa30bd473
Date: Mon, 08 Jul 2024 20:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720471582

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1BF296BD6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769111035; cv=none; b=GaEZZekrwSlmOb9Fh5A/zJMmEsmKvb699BUSHKEPcqyClHQvQNqasVRiQZVeTWu6dz4Myhw4gpCuE409SBxls7P1Wlo/nq7RkNFYWsaeY6QuMuVY4PZfUiPA2h8yhtVL/s13jmOSPZMAsE29TQSsgpL/spgmuiGBZdQg2baAxS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769111035; c=relaxed/simple;
	bh=BbfzWR7abz9lRRK7zFb5MsR5KSl3lvq0a9ItSiDGeu8=;
	h=To:Subject:From:Message-Id:Date; b=HE/eCDBiPfrNvC5ri7rsXlO4SgCHdO86BuxVy57N5BuWeashp7/BCX7qX3P7nuFJK1HBypbKWMSaWUtWEoddHZAqzGZ7cJ7H3LmhxvjHHqOvL3x2DcQ6658ic1GE1YX5n+DndzCrkE6tO/bNmhJZwM8c7Km6ZSHAb5WLHlWL6Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQF1dHem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQF1dHem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769111033;
	bh=BbfzWR7abz9lRRK7zFb5MsR5KSl3lvq0a9ItSiDGeu8=;
	h=To:Subject:From:Date:From;
	b=aQF1dHembalMMO0WAwQZe6DoDOxU0fMg6EzBqb4lAEgfRutN5FIZ8Hvj9rtsdB9TL
	 8/qfvdEf6+SxB5S5XjzgbQe9W/5nYkhfP9RmhfPWioNw3e+qfJP3UAaEOU3M1S6PIN
	 rJU/SwPw8NHzSGLrJvcYlLcFgCMyV5YjKPMqfMYfRJtljPiUZOiy5rxqgR7dbKrpJs
	 arQ6VUT2hceL/ymRVehmOwVc+zEuLafsl0nijjK7XdvSk3yR4pTL1nC4fkgybcQ3j7
	 m1n06oyA0PO8RtRdeLV6zcjCqErtjj4C2ZpmBT7eDmoYG77d76fLKn+5SrAE2HOi4W
	 UKNFbhCKfj7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8EBD6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911103364.5450.2314298480905696532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa60f1f21d2dfac0859bc87f593d52f4d6d1281ca542b9a5bfa8d0fab406bc3
Date: Thu, 22 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769111033

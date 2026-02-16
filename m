Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9430DED5
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771244694; cv=none; b=cNxVAJLHanEYYcs9sdp3PhpLdb25uSFQHa5s1XZAAvDR9htznCjeCGu6CaFnZuh2gNFOUQ3jjM4E+WBPTbIqlnW+BP4ac5wCCtwhwCxRvvaLcynIfItU9CREbHmyJZoZnDEqhSZKNAEr5N53wIQyHV7bqgsRNEcFr11fMJuuNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771244694; c=relaxed/simple;
	bh=e6DMDqTgklmOmJ6zkPuB3MGMaym/a6D48fNMrgf6QCs=;
	h=To:Subject:From:Message-Id:Date; b=l+V+RLh44DmvoIv6nCGmlJVv8tM1NtSrPTdNi2RJJumEey/D6+EkTEy8cpx1xxl1iNtWTyhN1LJf6ueu/NdOhSKxSP7x40CMJ1mVJ6H8MjN7P+xENCKnc55ExA4UnMQkwrsPMimLbhyTQP4hCupZT43XCy6UEq+DfwkwL3/+rd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwaUosMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwaUosMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9547C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771244693;
	bh=e6DMDqTgklmOmJ6zkPuB3MGMaym/a6D48fNMrgf6QCs=;
	h=To:Subject:From:Date:From;
	b=CwaUosMJK/CLyRubNUh2sfBAhShvYXbdmzsziBNhS6f2jJyy8Q/vs94gPH27bPP8E
	 C9J2G3WizARFY9Th4U4Iy3W4RT6bz+VXfQpDX4EXElqPV6IebDB4sTmYtz1wX5FDDV
	 mJoyohvKQT8iHhy++ee7rekeSGjYkVOCEk2jKf6Vl6XWPd3913A3zh52KWDS9+2NC5
	 MjCzJeGvruA8AI+Qty9wMzRTPIkE3bj0/o7vx/xOqEF1WiUkZWnN5MQiV5AgYpSQWG
	 Y5HxBmXr2XFoQnTg84w0sGcWt/2F8GqH21490Zv8s4W6oG/2/JY4eC9o/3A9YZM9bN
	 lDI2D0tT0o2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97727E7BDA9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124469361.15284.843583137298807542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e360a322a9fada7536157c1adee265ba8482041a5b1494c4e2349b626524f6
Date: Mon, 16 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771244693

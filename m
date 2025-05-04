Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E51863E
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746397795; cv=none; b=WkbOpra0LzDlrk89oyo0bgSqCCMT6my6Dm/F5qMkp07W/wZkT/GsFZbcBolEhRFkVvummlhUGhcHyqOPHRUCZz7XsG+spFyWtTkiF3kTbrVsbVfhrI0hthAB4XnX77/pw3Aqd2rNMxclrI4atYvsMy94DR7Av5mAL94+XOT6dk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746397795; c=relaxed/simple;
	bh=Ki65PDhobljCxi7YBUWVdd/UZb2sGyL19inNb4V7WRo=;
	h=To:Subject:From:Message-Id:Date; b=XPKerEu9M1HjCGFLAw6Fv1b7LgCmx3l3LFpLy6Tv8WuRL8M5++GpoKwgfCAcqVjD9Qump6nCWsDLCcBli5nGz78Jk2PFWi0pXNTUvvUYGOp1dt9W851UWIQJjQ1ceFp+wFHm9q3VT19MsTQOhO+E3+u1xlbj+Ju0AX0Mogcgo3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5fTIyn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5fTIyn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746397793;
	bh=Ki65PDhobljCxi7YBUWVdd/UZb2sGyL19inNb4V7WRo=;
	h=To:Subject:From:Date:From;
	b=q5fTIyn4UbD0/HbelGG2fOz6+67JZzLe5ZVN3dGqafy6LzTEEynsgmW8grxZa2kGN
	 CZ1Y+gXT3PFRPO8RmvfKlkGwso8U3L+L1cOu5yAQoRscipEzicPbZcAgY/gt9j30QY
	 CCavB5fkOawZG2bFftezQ8okvU1cbCLcGxdswRZwgO1tr6yQDI7pzl2wennuqU8AEc
	 AB3h3YwX487b4cQDgiq/GcgD5sHsZgZu5nMRBrGy0vomRoOeO8kCXAVrg4cAPRIJR+
	 ACeHBuk0PL8dYRuHmLTN2/kZDjZH0ASJJbf/5i4PrjcKsYxFby2fcNoEJIdqKdMWyh
	 v7Em7C3iW5xmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F239C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639779357.25316.11024622418854821695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b28fe6ce83de9d356af119e65f8f4022b4becf924107d38be0c962f59d1454
Date: Sun, 04 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746397793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D2022F77E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754550594; cv=none; b=PT0BV8BQuWr8kyV5XxLDmhIkFIAuDREw29Zes8AXHfiq/tx2B+Qg+IwzoXcG9/lHxb3dLreCHwv3D9rs0QGhPW8rmtWXw5jndqh1pyQxuDf8iUOFlSWGG3msMNRzwb9VyvCviegmqesMHZzZS/Z7MMG+JlaiqOirkOJ8qUePD9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754550594; c=relaxed/simple;
	bh=5/GQeZJ33uhvqlgcOsbil4vzpMBPxpHfFtJaJOfq6f8=;
	h=To:Subject:From:Message-Id:Date; b=WdzRRK1QmFvOgeU/DMl5l2OzFPjb73SWOLFUxxmYBLL+5wWo3SdDuS7f2JvxUr+EL44gkBAk+zSrbYkSCvMHF2ToVfoCMfUVq3cv2DXSNiRev6PiczC+6EieMWingtJGCADBpbsR5zcCJ+vMLfy1oqDuX2OFbV/EGBoYhbIaImo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guHNBRct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guHNBRct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFBC4CEF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754550593;
	bh=5/GQeZJ33uhvqlgcOsbil4vzpMBPxpHfFtJaJOfq6f8=;
	h=To:Subject:From:Date:From;
	b=guHNBRctHxFvErLtuKIHA/iKQLe9mLs27xKqKssLd36HCqqod8RlLfk6FXlYOgWp5
	 xA7cTD21IunzIL0KrRJas0HNNjUjWZA3cpV69ytI92RJ4ZFyKsgvRdyd2xvQQkdW1d
	 oCnbeYoMl9XXmU6kqT/Iz3QaBtm6y29oSahxKyjUnvvdMGAD0vTnnLqOH3irwFXJP5
	 Z+ujSYOOOZBh5/744fUUNr1dytEfvH4Hug/h5FjMEuJANB7xlDDJadcmoxO07YzgBH
	 6lgx40RPHKKgx3O5Cb+ublHcHWkebnTP+6PKkRs1uJwLlzJkVGUiLxssyk5dVDdLTD
	 VrIshsdThVmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E821C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455059357.13622.14057589276106964268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b87107797af3c4c19ae92e92db8c8659a019a9e7f08556bdfa782752fbc066
Date: Thu, 07 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754550593

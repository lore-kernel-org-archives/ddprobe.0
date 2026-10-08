Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9664734E2
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791451234; cv=none; b=GDSSsMvwWo8zYdkhJSHxAmI5gM9agunYu28lmQMeviSuBZYikCtPvyNpiwFxVHyC//aQ0XuAXtzO44yW7bfZKClw5PbpfaZc6m7hula+lNF3Zh2ZEzVlG94jhyLcgaNZ7GZP1FR7Ja+Epfbh97hQ6WLCwhWm/qpGqon42zMgEG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791451234; c=relaxed/simple;
	bh=2uAjg6Ui2aFyD5SxVBLtVItb9cBby5xrDkIbDGqgkh8=;
	h=To:Subject:From:Message-Id:Date; b=IyP3Up3ZFMUXYCX6XOqiLRy83MYjSH4WCJzkIQHhYV2PPDVd78vEgGAeLCViObP2UuwNAH95E7swyckRAoLErQzmzKR8Hbo43YVonWYJDjDLL3AtMncIew4whpsyz03znCguLzwbBYtcgeZqUddL8Gsfmqc/m7YDIvMIuZdmVas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO/C7ypR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO/C7ypR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FC0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791451233;
	bh=2uAjg6Ui2aFyD5SxVBLtVItb9cBby5xrDkIbDGqgkh8=;
	h=To:Subject:From:Date:From;
	b=rO/C7ypRhjGOGqblAw1Wul/iI7VGxKTIAKx1ayzyactHwdRp9pqFB9aNXw2do+FPq
	 hXOp3NXJf+j3cm/6ioQP6roxnGRVC+yBB10YOvFpTuPbEmCqahjfSjQBTx8wCduAxh
	 JpgzfsJ/DByciHjOSL4DEfMgr6qOXiLDEumrULNA2Fw7G2KEsYCR1OHkYBdZT7T1kW
	 aEklTDjnmol5yy7wsXpzNewZjDmCa1U0rRHWqp6NPafMynaAvzbarl8iNi9PXhggcd
	 kfDkwkww679BU0eWRNFbnGlED6uUDNpDF77JI4kd0RyPDvlHKvLYitjcNEGTZ6j3aL
	 Vu1BXSuYAxMMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BC6CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145123374.23219.15188169378223323479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b3e45ad3b2308de0e8519186ea54205bf03895ba18faae3b3b0b86c02b3374
Date: Thu, 08 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791451233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30063397686
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776066454; cv=none; b=uNQ/ozkRB4avhZ1pjwn0D1l43mLojIrpiklIawgavpJ+x+pDXRKOptk22U8svRm0nmXlJ+5qI3o8nQYJuoiPsY/O+Hxu39jqJFm/Wvpzurnx/H9EfdD6zSXuuy6iw8UNw5eG2QXelOTM0YKSH6CNm9x20949YHW1/HUZoDpupF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776066454; c=relaxed/simple;
	bh=7pfP1uexk5+hX23V+OFt9RV4cJTp4Jiq9ZtrE9OfL5A=;
	h=To:Subject:From:Message-Id:Date; b=kXZ+aPDYKyEFHNWs3wi/5gl6PcrZ4HRUEZqLY0gKj7wheOqTYNSp8a3iP4hEfIb43YRfke7uJsFxLNi9B6fxktxaWtGuuNcsChrrvuV2m4rEV6DjOF8Vnw8y6RrHGG8UsrZknQgrcjH01n80A5kIH/C0ESdsgy54IZNomTemQf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2bJIWDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2bJIWDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2B1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776066453;
	bh=7pfP1uexk5+hX23V+OFt9RV4cJTp4Jiq9ZtrE9OfL5A=;
	h=To:Subject:From:Date:From;
	b=t2bJIWDvoeKmQkNmsSkr+n0SUifOarTrxwDMMbCwqTPqXGQH4wa/wlVsvWLlRINdQ
	 OEFzAETjoBPXAfIrafZifJ8HfHbH9a0ZOv0GVzTnC8+AKpq+5sGWUOBu7gqZSar5so
	 BewIxOmnROhzfjgvxaASoo5x6B4kCaFOl5RT79z/9ptQCtC94iA/6WAhPi0B+8sdFo
	 wqSETdrCDp3XszzInDLqmnWhSKj2ehGR1WPLangi4QYI6i6o5WD4ieIcHtg/V1eaqp
	 ijY8uUvJS/LNzoVxadLJ9Bl5DN/5asAi5oCOuusL7BKIlahh6jY1je3nc3F3wTFZXU
	 83X15/OrlmKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA194EBFD10
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606645368.27892.5971586095994741509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18153382453101a1d92d59a9500f8decfaa2b25980e03c312dc6734232ad2987
Date: Mon, 13 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776066453

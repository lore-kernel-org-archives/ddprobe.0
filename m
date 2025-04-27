Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372731FBEB1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745736596; cv=none; b=TxPQDsk3ec/paKvMLHraR3MPYokyHT6SEXPxlgWPdlF2lUh/pU8XCevZ/eEHsbzpIcBSoBQnzcIM//ESdup2yOYf9YDK1jJPUhSUcbPmlguo+jqakzSExD99SjKFlNzJOf3uZAyYE5hFZx+JkRLgVSXRJAR+5R8RXkfVClOOwhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745736596; c=relaxed/simple;
	bh=S/LkwdC+yatVEbAxmSD0B770LgAb+prwOsHI2uhkJFo=;
	h=To:Subject:From:Message-Id:Date; b=eynbNWFt1cqdwxPYR2dMMD4/MitKXBs/univKl2myLaEkt6a48TDDao49/oroRwBuQTF7u4cstMECFGplgZaehv2mYr6HCHZRKry8sTy4OMGRH1Lzbg486xckKMa9R9la+aW5snFbGmOLZ60SuME1QA16xSBPjm9YJZ3kMaYKbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZorFAVks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZorFAVks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745736593;
	bh=S/LkwdC+yatVEbAxmSD0B770LgAb+prwOsHI2uhkJFo=;
	h=To:Subject:From:Date:From;
	b=ZorFAVksPyvbnUrk+w/o4EW4aLhEGmfO/55ZUKeL0024rq57qLLw4ZNtL5Q/F3MMb
	 o/LsDaQcZNdNxT+nC36DXwSAh9YLGzJ4sPbvxQOvP+K1R0cR/Pu0eGNtw0u2o7SNjz
	 CmmdIYPTyzWf8NKSPFOH1n7t5hDLZ9QndbnUgfAv0lJjI1yOKBj5tQBfEpD6O3iAUR
	 ZMd6sBi0NcJl+3bSDnrMnRAHa302/z8kjR6SGpnZZwriGfNZNtndD1fhoVCDeFWNyE
	 Ym4TvMER2Ng29W5/h+jAC21DPBeJ20/3hLACWtHXrG/54/K+yQOsMMDub+KEq0wmjg
	 G6cX+lrltsP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F0C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573659357.27998.15056381880682770682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057dc36280aa84fffa6fc2e8aebd11fbb0135a0ff5b2be981540cd6c66f9ab21
Date: Sun, 27 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745736593

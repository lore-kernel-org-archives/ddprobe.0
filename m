Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8B540DFC5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776869254; cv=none; b=mugMb49YkVtTg5C5ss/Lj+R3BNDDA2izZkfJ6ZmYJ0ZAOjcVg15BMiUILJjfwjLx0QjEXkBao77y95W1DGSVxZda0yRPnZEMpws6yMIhp+4A6eYSJZINgSYfeKVhBEwrv5WvbPig8uqXeFgHM/5njTYCXk0HdYLLowbd+VzHGmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776869254; c=relaxed/simple;
	bh=MhRYjLrA9+vLAFaad7EDw7g9SMt88rmIVKGwTE9nUlE=;
	h=To:Subject:From:Message-Id:Date; b=gAP0lX+Vw8KNtebske/aINWJpRhBgO9eS4XLPXDSF+5VDgQdanAgw2AKpVlm87UfjXb77ZfgWlG4xQSrZqnM8NtgxYe8KHupgVbnqQc+TJjEag3JXhzo+nqrH4AYEmckax0MSPBscvVlQCXJ+Mb45mz6IojYK1icPhKWkSW8MEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNsqRYJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNsqRYJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C34C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776869253;
	bh=MhRYjLrA9+vLAFaad7EDw7g9SMt88rmIVKGwTE9nUlE=;
	h=To:Subject:From:Date:From;
	b=kNsqRYJ1CW2T5VyhDfr5dy6RfUK/zDPrjBD0mwa+RILRbtWlIrinaHC+1b262bSq9
	 +Kofmf7shdfUNrIyn/s05ASypxy57vJT/OOmu3KnhG0FHWmAg2KvydLUTXjZmmx1g5
	 KByShiTLBwHGZJnJuKK5vksIuF07p8W/SvQrfKo353BYATzy4H9VYnMLSdr9fkBXCV
	 VNK/SPpwxbu2VF8Gdhz4dFgmJMkv052B3Q/A5cjlqDtRIfWjOf/ewub35j1VUGZMRk
	 eZYXXGN9TTYgcK9mul2lPwqBU+GtBW3cg9fjgfgeX37D2M3tEBgFjsdbIe7RZBNp9C
	 e3/8TCI1+h1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB36F9EDF3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686925368.30194.12059683316428504233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74c21e80b7e85a97ab105042fcbea89e2b99aa0aa26533341f8550e87461ce0
Date: Wed, 22 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776869253

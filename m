Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F50D1DC198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739570934; cv=none; b=NKb0pMRxlXeviljAGHVoaShbJxeOlXs6DzL+S+wCYGaf7qV5SjlAQ6VlPlDlocS779YaTeS1QA/VQk19fc1g89MD95GD9b34UFglNIrlgklf/QPZp50taZnuz7hvB5/3hkP5HtujbDjb78r86YGEnX6oR59V1Er3kvISC4DUS60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739570934; c=relaxed/simple;
	bh=bJa8LjFUyqk85L1AGmQQIXchEVafCZZ3ZYEv/a3/yBk=;
	h=To:Subject:From:Message-Id:Date; b=McCzMa9Y0fhgRjszdSK/sjpCwBHAtLYeVv0uGiAxl0Ui66bu1yrAxYNogcZ9NgpIs+2mpJkoJ2bQJPG+O08G7ZHIicGE3szpmr9cw/16hGpgDuDs5YO49AlGhMDhPEXH+cIsioalq/XbvObHXyVx/JOERdVj5mtlDo9cKOAjCKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBTzFfMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBTzFfMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8BFC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739570933;
	bh=bJa8LjFUyqk85L1AGmQQIXchEVafCZZ3ZYEv/a3/yBk=;
	h=To:Subject:From:Date:From;
	b=OBTzFfMY11/9Hf2GNSBiESU9NqBHo9BK6ptpYaruVaqocQvGxnQZaUmF3GszQOS5e
	 a93p3UvgtzcRnma7gOCn4usywdBgKaVnZiA+N88Z7PbnTR49InVapO8yi41qgPheNr
	 mUOdFfZvNXejhU1G/qTJFvh2gBp1R15DZZSABGwwWARmA/B/y3eGIgdlfL05qByqOv
	 2oxi2jK3B5d4bP70oR2zvHMsqFLg7VjagTGMS/iDCIxiHIJ2zt6QW1MVEp6Nb4TrVt
	 BqB/m79vEJA6/bYNfldmLtm5DbH5U1m62QRU0o/u0akJqL0L+eU66l63roxf2AZ6hN
	 xBtJlth5leF9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBCC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957093360.15777.2360607368272233755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cabf20c6d2408812ee8dc740d893a15ef3102c36961b965231743720dd3b6fc
Date: Fri, 14 Feb 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739570933

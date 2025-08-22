Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C31DED5B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755893995; cv=none; b=jdslkwEj8nUmhr3rq8Ah0hxZn0K/CUr9Qa/TxVwD57SE0zmfIzan7D7CIdoOjcrGKvhNlVMj5sV5TYmX5PCDAQaSERPhnH8/PYPRRiKlQSeTRT06ANJxZVY5INLfVe47omo0g1xe8MdEkBTPprkNF/qgIeqeVfrR91ZE0eUspPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755893995; c=relaxed/simple;
	bh=JnI8SjPxfAo3DxhdNfQG0wSgg6kh+wHS/xM4syLtSas=;
	h=To:Subject:From:Message-Id:Date; b=EIfoHlfy26Xut5effpbRUqZGoDbmhYu5Ty6kQ8lsiQMWw3HaQAbvXyPmnFwkkhp+Jz0RdskNQy32apQ6sdrRRahzwgposV4yfGCrdQSyTBfTn0jDNYxi+/DeErLyoW0onygFCDKae8njKsIyDxCR67bUKaXVOwUvUAUpzi02NMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA9MRXcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA9MRXcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BFC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755893993;
	bh=JnI8SjPxfAo3DxhdNfQG0wSgg6kh+wHS/xM4syLtSas=;
	h=To:Subject:From:Date:From;
	b=UA9MRXcy4jM4Io7loxup+sgWerqX8H97fLbjpHo1RMFeDEP/o6BLXC0oOwchksQPr
	 p0oFOp3ioBX/HP7ZfI7kOpPPMBWdrUWbzYXnd7jQz67HW8l+ff/lZiWPVWrY7xpAAI
	 lk/7NS7uRTW+AykoPkzGNcyhUSMoKgU16FNyu1J1/ngQxzuH13H/Nvf+zurXotqTCo
	 k1klQiaqBamRSSid0E8I+HvF+TTGaE/4Pf/bF8tiF2ohXJBSSxxLxGSpeeAzB72xIc
	 qQfNbBFElbq2r0oF+6TkIrafaxhw7v6usL2By536ZtXjOTrTT+r86t1jq4l36eEfQA
	 qhCt41lg5akIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F263CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589399357.32029.12820458656127790729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802bf8d479c674eb3b646006e0dc3bc77a85051c5ec67b561e21e2356edd600c
Date: Fri, 22 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755893993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1F7EAC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734987954; cv=none; b=cMmkXSggvTtbyS5tdl9SCiH7+VA8NTPzQasYBs+qhUBDQ5B8g8N2KHOfSDSkw0WmWD+paKUbyJhWABciVJP3dQq+VLiyiRJIPjR56jW3oXt+YMgTh+LPeNGiiNKNA+nukZgyAOUVzApQwlx3bmhNx8Zy3vwMn742oF6IiMQjWi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734987954; c=relaxed/simple;
	bh=mvuAYTkABTdPykWPwqTLu3Oa2b1Ps3rWFj/JTsj0Gqw=;
	h=To:Subject:From:Message-Id:Date; b=LN3vvow1rPHT9uSDr6ttmEXIDyMzAGzMBa0Vim8UxOn5N5TzoqcW556MO+rJHp98KD+X/N8BiFdH0v5FZj7A5FsA1dCQdlotkmVTZ966OVl9UWYYChc+82k8wRnljVv0im8UL4w07JFU+LPXsq9/L6oFv01w8SlLc2gzSDZZ3dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvMJ1mn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvMJ1mn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9DC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734987953;
	bh=mvuAYTkABTdPykWPwqTLu3Oa2b1Ps3rWFj/JTsj0Gqw=;
	h=To:Subject:From:Date:From;
	b=EvMJ1mn+SMPrvMrq1DMZJn15PeyTrUkTS+xiizUP13OeGYag0E6ue+d6yJlHsrwGs
	 ilw267ACxoFTWQkgwWlo/qIKOjHy5xo49qQgBCvheVjpfi9EUUHz7O1iH5IwjNW3bw
	 45yvWiggMP3WubIVT1amfixpGQBcfkeD8amGzym4ZpZK6Y/0uFOdfGKNgGIcHP6DSx
	 x6sPp75y1fciwL8KoenD9tuQb7KbIS5Z0D53kFxsR1HMRrs87KEXW8+zoiTzeoWbvC
	 H46jcX0z9QqQCkrCf3vzSdEFbP4rzT0xLFfE3YPohuD5oTK7OvGRRV0dAitr2vt1Ta
	 7owcjkcJDo0gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F6E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498795360.11333.6389584558153108149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28b5108b022a4a38a29e057f1122702480ca4e32872697c8126129e5b54820d
Date: Mon, 23 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734987953

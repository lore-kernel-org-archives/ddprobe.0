Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A7A46BF
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757553594; cv=none; b=t8pIUO4poiKbvRKWBacGWLe45NWgQhLRUWOR7IMWOKxHhyNNepuLyGQ0lXQ4Na07pF6T0M5YI+TuP+0O/0O+sJy3xkCWW8AMNoD800cs54S6JcGLXnzuwiwHoFs+s/fcWw4bFNtMDnG8vGgZgPwvubtoPCJ+nB3Qe8Bjvr6TjOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757553594; c=relaxed/simple;
	bh=rOg/FJzCyDQxjEYfIyz865QIuVu8HVo9P4v66HlGiO0=;
	h=To:Subject:From:Message-Id:Date; b=sSkvzjKpBA8DDtF3MTvT8EBjT/7bNGiGWMbgMRasytKkFbw8CdZdSIzcEZ1s9vQgtb6eUlxgiLyBSFHKG9Qmhf64sg+E35RsRWRQ0TqSXwST/+3egFjA0Z7n65u1LCG4VK70h1sOaOlqSwNCNWrJp/cDY5Uqa14LtuMKbRggQAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZ1yzKz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZ1yzKz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2485C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757553593;
	bh=rOg/FJzCyDQxjEYfIyz865QIuVu8HVo9P4v66HlGiO0=;
	h=To:Subject:From:Date:From;
	b=YZ1yzKz4zAqUiwlOkq27tAqe0FcDXwfyL+3clLJ6bq2xy1W66V/OeBRcwMfjUAyxs
	 Y5KHJn6LjXD4GoBiZgr8LCMkKaL2DpOR3Nqj9T/vy5f/RFCrCeSiT4lqAOtiY/z9ky
	 VFsIVBSfz1nWNU1NANlCaDZUgB+gA6Wb1sGYGfSWS2ueSe+zU93N4Tr9NBieHZ08RK
	 IlifTB8HNMqKXKnFjyHHG++3Lu6EJmBJ4En4mGzBoJbnBOlthIvKlcSsU+3mYmZ4t3
	 iY1gBRFlogL7WiDlYalJm+t4Mbxms8dPQU5j7fVekdjoXu6PH6hx2nYitJ50SDnWIp
	 BGs5OKBMveU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E3CA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755359358.21078.17958495191291552523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a4ca533fd21f665f25040f117f33d2405eea172f8f628f503afc3abb008c66
Date: Thu, 11 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757553593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5367017BED0
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792258834; cv=none; b=u2WDGIGIh7UAbtqQ+KhtorLroQSakm97BPAToh5fJB9p+X5mg+4gweYDI2omgbrIZJlT83MbPfMkhkMhqhBi9Yjm/vwOTmO3nyQM6OztN4iS7GbU0vSwwM2De+NXThM1fSucPhggRSLZuNZkaUy+G0Au3D5kHD5czrfknBeNl1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792258834; c=relaxed/simple;
	bh=nRIJnpRMg6TAaj+ikT8+NirzsKMjdnQGanXKQaYL3ss=;
	h=To:Subject:From:Message-Id:Date; b=Tajhrw/qGjmFdiLThqOjnMMRtLZ86nYtVT3L54Jp/u5qD6TgxcmYcWAKpq4SO9F7Q7KTPu2RWBlh4ZEhpDXud/0zRUXKRG9XfsxulAJCA5W/NI9fel8qyOmGcjgOmsDBIiiaJ70CljLhfnn1tIjFPHJ59MiYzbcPjkeDuf6DDzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq7II4nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq7II4nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82BCC2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792258833;
	bh=nRIJnpRMg6TAaj+ikT8+NirzsKMjdnQGanXKQaYL3ss=;
	h=To:Subject:From:Date:From;
	b=Pq7II4nxIcV0Nc8gLimODCDWzzpKIhy49XfSn2t0Ze5T0AR6VXNDHQ0v+SK4q41Wl
	 17oJubp/ep1fYGfK/EIEYZ4Rq9Q7dycme5VCISbNoeZ8QYIr3apnvnK2acHnncVo0E
	 Yk+hQMPhTERg3ZJLAmSeuyNm1Gw2+bPQWU0T7NJOKC6T1O47/ZCw/wRGXMKiQNJtmZ
	 4W451oxCZ6mAmHQK+MhSQGb6uK33wy1HsUQygAig/9Hd0QgTPEF65CpEae4XWM4nSQ
	 yeyc9SVd4KhPqKv96mziiIoWkLpSPShU8Kgn7KKGBuG8IL/4YrNnhUcE6tBP6pDlh/
	 r3y7n16gwqNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56A6CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225883373.10926.17501751188508971477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac6d0e43e07dd2c8517983a554d36952c07e7ade5d108c2faf2f1d4fd2e3010
Date: Sat, 17 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792258833

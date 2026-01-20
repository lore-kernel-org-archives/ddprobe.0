Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAC423144
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768914234; cv=none; b=DXErVA4xhvaF/OYDiOyXHMrltgooQu5bDwwKgm+krwPJNDX7ERw1MjjFS64bzxs9zJpYi3Kab2BHv4n/lF1GyK8acIRvwTuTbzMHuUff6Xs9WPKKWg7EZuyEZJwSDqPRhW77/9OuHO6rneHIyud23WZEVo0sPEzTpfd3ATAnZ9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768914234; c=relaxed/simple;
	bh=gWQJFB4QejxXt7F8zx6YHeNUw+x0X3XWSf1CX0IJVyo=;
	h=To:Subject:From:Message-Id:Date; b=rMLqedJGc8rrRFaIjVgigUpN5pQc1OD3fk3ZxeA0uXfoP9Zlg5hDnsC0zMHaUnBgIbGYw7oi+fQ0XIHrypJZOY/Aw6MI9bx73rPFKKHqx0gd9Cs9agHWyP8nKD9Or3S/gkGzJo4Adu7SZLyP+zqWt8ThHm+c6/XbLlTTs7iOXI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r53qFfI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r53qFfI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F18C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768914233;
	bh=gWQJFB4QejxXt7F8zx6YHeNUw+x0X3XWSf1CX0IJVyo=;
	h=To:Subject:From:Date:From;
	b=r53qFfI6mHn0Y7tVZ5EY1/MllAWXyitBcG43lOfZNDZK5ukzcE0eCW8nACOVp7Xv+
	 jFoEv96NovsQW+AktFMwehl5HBxfRWDMqxtTN61OawvQT4dyxlUw9nBH9IrHfD98tw
	 LCBsbhgNhfCkOlDwiQaHBeY1469R+MRo6n2jwLWOXpLe4cfKdFrzbTCTX/9bOdEWPL
	 ZKirdSYTFyhbRuaCixFR3CswalvnuBj3Wcke8x78Qgp+08pyYoPc5kbX8z/WGnYiK1
	 xetGkZpdlFULj8f5f3jt6KNXN6AgL3efolPnRS+cPcvhjI89WuEhlx+nhPK8qDKucm
	 It6iIsgv1KJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91478D2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891423358.3810.7050805742478334658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ee0737c8382add12b61f07bac589b2a83397aac51845ca81bc556979c0de0d
Date: Tue, 20 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768914233

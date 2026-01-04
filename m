Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F61A9B24
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767521634; cv=none; b=rtnmBP0ZT/oSGMJr360Abrr10MqYYs6sRFdQnI51JR+XohMDBe1xqkTimSwwp3s7dRkZNjQCs4mzrdJ2enKjGOpyXD+a+n9UQ34QzPiIfi3vPwSIxULRUgXkpefdtEdowquKi36cLM8bz/JOzNRQHzRbARvYMZvi0pCJiGFXc6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767521634; c=relaxed/simple;
	bh=TY96ffTrSR6QarM5/fyk0ZozoJCOOy0pglkya+XZpd0=;
	h=To:Subject:From:Message-Id:Date; b=MUMb/duv0VpqM3ELBeRmsmb7DUBEQioi737CsNtkZDOcHp5iwFmB5k9TfnUyran1jW+wp50Q1fayMUo3symLkyhKIiIKP8VK8Zeo7i32Li9ReUG00dvuiJXT/f1W5Z2vTJY7oYEOu7ESd7eHg4KWNbnkY5WAlqzJMe1aR/zg8hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dstjEOhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dstjEOhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767521633;
	bh=TY96ffTrSR6QarM5/fyk0ZozoJCOOy0pglkya+XZpd0=;
	h=To:Subject:From:Date:From;
	b=dstjEOhn5f7jN9LP3t4TmNpaFVBLsIvtTC27eCEEHkJC/BoTPeqQWOjKDdcL6FdNQ
	 GkgGvJuejzHBtAxopRyuIIVKqsdLORB0GMA9rNO6QzoriAYDUfBAywFgCGto7HF006
	 zghkR6iYiWLhOWAAzH+OEy6v3cDAXpas/emmfXwUgy6M6VM68Fb/60ev2/jjM+IjtW
	 AC04pllN9wbJpZtZJ8ECjv1l+Z+Mf1IKKwPpsfSYICmWS3tzR2HDuOIXwUBphCzXuo
	 WFvgDTqFjx8BTXn1jmDuYshxgUaOa73mNUUfOEruP5jU6Q5Dr3vQkdtCrKNHGqvAiU
	 Mq7g3HuuR24Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98494C2A074
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752163360.24762.11691702651152112398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7c6540e526df03a31d1af6e8f44ee31d9b92939ac28095df24b84d3f7f9de1
Date: Sun, 04 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767521633

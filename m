Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F332BD18
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718571503; cv=none; b=dRhEpMjpI8d0MxF2s1hGs1vX2iBlzEtcqXsi0JK0AwtK/mjvHGcbPN6zT4n/u/zS5aS4Z75VcBHXJbyfA4K/vEsYnpIGzWZGI7DkjhbqgOTowcfVesprkoZ0mpNbKf0GpeQ2mu2C1piMMnvqa+431I5QMMPhH6v8T95jXCRLt24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718571503; c=relaxed/simple;
	bh=lIIBq0MB3YJ5G02nC73zmkifVrQlVopFsWakbNz0G18=;
	h=To:Subject:From:Message-Id:Date; b=FMP3KfykrNjNrkcCAcEPOggBDUlXCtij3VzqvSED5MQv14LYEgL+pxIL0DRt8QS7A8cRI98AFBpS1AM+sAr1L6kwE5IpsVSch/8sJBWTqxb0vG4ShZa+1weOvrX7aAufk7Cfd93Z8aWqShG81V6u4RXc/3xKJTDhgQ2A6VHmovw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0MUwCtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0MUwCtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE801C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718571503;
	bh=lIIBq0MB3YJ5G02nC73zmkifVrQlVopFsWakbNz0G18=;
	h=To:Subject:From:Date:From;
	b=O0MUwCtJCCQJPdhfzrcdN98MFszVh7e1c6UTQHhJy9cDIXiQHLeAE1zN4YRcKOJM2
	 kG3pfGfipPSNqGorYe3ol6DAWyC5s+joRdVNpKTellvQ2fPQFQbh9YmUhcthCaJWFb
	 UTclh8BZEaeamUgbB2q9zSlDfq67Srx0EazxSNgY4KvLX6MWjH1jzbBz5laxNBs6ai
	 +/qQGSZ0CC8w6YzuuYAb5EXS//8K6iICWXtkrHbOZH2w+Nid8DecsY7lasL/asCvXC
	 eFPB9cP5A+NpiHwxwrnLsIds6kQ3Z/FN7ll3SErT7PaBspyzKpJK1tU0y9EQqW9mJX
	 nV5eB4HrEIl2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B51C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857150283.17592.15424850210484706627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b218b237b6f0d851d23407dffa1e7e449e0e7b5b6ae374aa65efa3f3b97711ff
Date: Sun, 16 Jun 2024 20:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718571502

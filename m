Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42C1F0E29
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749236394; cv=none; b=AxJOl03eQVvHOwtCqhRFOXUZNM2bo2KFp44hsvcuvI4uT2laBmu7MsPIToxVRwrv02uyaumSrnccBChSWxV9Rd/XPSLxTwkXgwnzp++Tw5j71pTTMQ63P2SprKPA62LH4l+ihLXa3dpHRJpweKBASeDUBx5ajo426Qid7WVXImU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749236394; c=relaxed/simple;
	bh=udF1EAvhM5u8MboqUM9LXoC8IV4MjHNKEQjVaeibvjc=;
	h=To:Subject:From:Message-Id:Date; b=nwOk67v2vJhwh+wBJqOmM3//S1L5gAAiml8aZLdD5HWe/Ygsg+jk6bKiCuugTMziThZ8f00pITB/avQ8EUtyXjQ52/hwDGgU4a9KQIMS/TweirAuijZCAAxxevWW/hkQH56tD9EaugZLD+DDaquzFeWM1g3ehSXHMZ5lhH5+BWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJhTOSLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJhTOSLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB94AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749236393;
	bh=udF1EAvhM5u8MboqUM9LXoC8IV4MjHNKEQjVaeibvjc=;
	h=To:Subject:From:Date:From;
	b=cJhTOSLzLbN9TxdtNZDoWRdnH6PTwOxWcrIVqBtHWULkoMzdFSEfOLYswdsnPzpgo
	 2M8vTKq9a8xBy6zwqssVJsd6jVV26q1mu6zyxBB9nlVpQqfZ9JSXeYz5sNRBbGdm7o
	 t4U2GBLOAuOc8jxCNvq+PWUJFHd5sL73K3dBaMDn2JHn0ZC9zkj8/ZM22z0L1oYaTT
	 4UT3fOTtTZ/oXJZssN4zaT0BVXvEut0cJkoitY2WNHRIelBRZAzxKozc0cb/OojTwn
	 RfDbhXjvVoZ5QM7P3z75l66erpDM35aTqdCp9uKPH/Q8kXoAZqgLrRdhIJY1B/3M4X
	 s6zMGlFIr4Sww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930ACC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923639358.24874.15734243693764695894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1caae0f52fdb699617506aa16565318be6276ce5779583431e7352c4cb0dbd
Date: Fri, 06 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749236393

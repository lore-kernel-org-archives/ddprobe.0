Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6891DFD9A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745600995; cv=none; b=aGJtbPWPffqeSCenoi14Du9U8MIcaIu96D7ylmfH0OSQnwSB5xdRnKh6r/0KdNPplqwMTQmfRLVmowrksTOt5vL8RJdiaJtd1SW9B2768h6YBwA4R9Tb942g79RvuxmxixwlOQfmDBy/yEhBcmDveITJSBr+u4VUEyddxGlTYqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745600995; c=relaxed/simple;
	bh=gWem8NUt6nADsxWEl9PBn2Qp1wTuQkmeGeXt8naFO3k=;
	h=To:Subject:From:Message-Id:Date; b=JCLe6jKM74QwilkNf2+0LCBLK2hhCwOQ6bMHHXwxSw28rf/DWHBLQlXYncyOqTDpPj/grVwq45rMRZmToTTq40CCE0iEMP0dgXiX2wApSsd3B8fndrh1SY2Gy9oWYk69raLjJ6qC3W8soCip5Wmp2x38QpZKwx14bz1wQ7Zcwuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+vzpXFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+vzpXFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B0C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745600993;
	bh=gWem8NUt6nADsxWEl9PBn2Qp1wTuQkmeGeXt8naFO3k=;
	h=To:Subject:From:Date:From;
	b=T+vzpXFruHl2+cfy9korRQbqruEO067IaZDx0DcJ1Qb19DiKEnJ7aArM/DvLu168/
	 hgp8yGJjgIq8VK/IZp8Rqlr1ypxxogK74suCgElJ6oI9/OZMcQkVozojeKxLIcuiLv
	 2u6Ty4ufS42v4Y55P0pqZD3fuTBssZewL3pNcDwEAmFbliaeLwAY7j2y1K/6NEunmu
	 UkNK6Kdb0hhOv24RxFIJPxB5QELwam+R6cMdpjNd+22cKLabgRR5VJxC0+3GuFvyQM
	 uXhAvzfCV0Mz+dxRAJrbURMZRyQ98Yh9GuEyzd4SEZ0AfTGOGRTqzkIpVEZYWQExYr
	 2vI45a7z/buhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88DC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560099358.22987.3794169597650957577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1c560dc4af51d31fc61e66da9b19e3766943983e74a05674748043252e5635
Date: Fri, 25 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745600993

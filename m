Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72487EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720365383; cv=none; b=cAy9b5XEPtjt//rF/5h48coeBa4ZeKTFu5xr4d1zAz5AGg0j3qA3/zHuThwOfhUnax/BQ0qjr8tlKf+wVzO98BnEjAwp0YW7PUKd5UQ1HJaPT1g3Z7/bl4HmRujKB60Y/cDT//P+nG1YC6UNg+Ksuv2sMoqA2QcT12zt5yYrmBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720365383; c=relaxed/simple;
	bh=LT574YG3rXrBNd1Tm8CVaVdR7e9Se7uumlSUIkJEixc=;
	h=To:Subject:From:Message-Id:Date; b=hnV9qwhWrtWckr+UlD/nnnD4d9PQwe6pyZZnOQZgFn6xQ+IGkjOdYKAGctrlELcBG4SkAFG8vy+KmyX3DbhrqE6Qd0guwDK9xoRAqMwnx+ybv0GbFmhMtVOPSAycqCkCYlFEpodlgW6gGI+qxxyQWX8cW3t7ji0alyNa6HH5rv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucyXjwPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucyXjwPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B06C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720365383;
	bh=LT574YG3rXrBNd1Tm8CVaVdR7e9Se7uumlSUIkJEixc=;
	h=To:Subject:From:Date:From;
	b=ucyXjwPVyQ9A4JN5g/zdXGd1tOdDt2zWukuS2NXinop7c2myEDTlxR2ox9mYMJ8jy
	 3Cw2PXsv2UouK3vn6kQahL6rJrJCmy2TKHkKl8s9hDrbOd/QlvvCtiN+HV255WsLU5
	 gFzxe3/rWxVI2SPyMNW93xKFoS+BJsirpOS7/qt7YTKIwkxpPbDZLo3yohRt+VGwFS
	 OBY95H2OGxE80CSYXfrB397deJlJGwe1hvzX+KYrBSgZacJJqyELRZE1F9w3cyT2OW
	 01cWUgCqINT5OSLnhCn6e3Jo0QAut+Wtd/1RCH4QJqSzy5nkZ2aXoCRNc84f4gywj1
	 nV0F6JqCkiyYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6626C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036538281.8480.6529833159867913315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124712fbcc2375817d56636e72e22ec49024b268f6c51fdd98ea3945238d6735
Date: Sun, 07 Jul 2024 15:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720365382

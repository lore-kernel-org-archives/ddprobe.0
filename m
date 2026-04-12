Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9C53624CF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776016654; cv=none; b=BB5sAYNEOAjGAr+2jXyBamqBmD4Jbo0xyxYdg2J3qtTN27uwB4Tv+Fm7Zd2r0Gm6Fe1868yGw6pYgYekGaDZyWAPjBKoMOmw+mrUuBK92jhGO4g2+wZs8uhtks6RUIR1JDbTHdNh7z/VPHXX7W81yw1zJZ2QkUs1sNapSZN1ENA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776016654; c=relaxed/simple;
	bh=fXXLE7/a6TdtMPgpe+RjIjYHg/4VEGbS5t40T+0KxIw=;
	h=To:Subject:From:Message-Id:Date; b=hc4VdjHDvvv9LzR9cwiOb3vdbH0XCNd+zAY09XEc0VWe2V1oB62iikityzYComUapqJXbi6yQdmnOdjrOz686OM9t3bAU9lHJsATeuBmiUltHlr11SVWHFTtJIAMcP+59YPPj68swNd2JvjSoPN9oEIGp9n4F+qZgZxSZeVFlVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRnLdFNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRnLdFNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC44AC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776016653;
	bh=fXXLE7/a6TdtMPgpe+RjIjYHg/4VEGbS5t40T+0KxIw=;
	h=To:Subject:From:Date:From;
	b=oRnLdFNhSBY4p/wr+vKB+vvIg0bu8csbAToTwIurK0plpMLy/MnnxqxH5n3uUS4Sk
	 AWEeg1W4ZkWwsIdHD4h2DrjkX3NQV/eyUu7v41hInLqbJijzag8o2BKnYyyRWD64ii
	 BtLIlTcFgIDjgX45PxBBQGy552VT3Kzfy7XJRL5oRoSyyBUYnOKh/+ctky2hZPKBDm
	 fi8Y488Swq5iscaLy+CfG7jv019iWPvHMNkgAU0sgaEXXr0qmpsVC3kTOXxvauLQjY
	 pZgoICx6VfNgPh45UtBKc4q8Ah8UfXfrVFS+BUUFs9NYuWvaixVfv+0eH9wGn0GYXB
	 8TG103HMv8GZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0D1E937EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601665375.4675.10474317232167436112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ebbb26300861b69da3a9947bbe663511e7e0aa896870d1e3a86c496c8de7cb
Date: Sun, 12 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776016653

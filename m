Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AB73396F8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768810434; cv=none; b=ukFFy8AwWBaSPiBZIwIjSfZdsCcRp1Woau1787QJn70kSOlZRM/oyHD7Rx4w2AuJahAfIZn1xDwz0PZypVR2J0hebGaNMWyqTCuPil9f08RIy73aueOtETsSU4zcAC5IambeYHjhGWKPhh533g8AZ640YH4aBOpu8HzwwBoQCjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768810434; c=relaxed/simple;
	bh=taP6ndEg845cWKhyE5asFzPBT9Ci1DQu9s3UPuO4YhQ=;
	h=To:Subject:From:Message-Id:Date; b=ijlTqN+8D/LiF3KD/UFPufKv3Al92lTyP3EaxalsEY0vsPH7WlqdrPAAV+HRKcJhzaw5k81Zld3/kUgt39vYRvH6J7IeR5u0XjnqX90FV2VzQX2xLiNOUUM3CwOLoFItwQk2ZxI3OZzlGiRIwjvNtb49WkrbPoTuLRSaZIAECwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkI2C/3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkI2C/3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A09C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768810433;
	bh=taP6ndEg845cWKhyE5asFzPBT9Ci1DQu9s3UPuO4YhQ=;
	h=To:Subject:From:Date:From;
	b=ZkI2C/3/1UI8sWSoh4MOktnngzxvWBkWQ/chwQN33NSw4OS4CuVhAAXRETmj/uez2
	 PH3k8psLEA1UmlhPRU1gkQ9tLsoZmF0xkpBSqPpOa2ErCbeYirB+0tuHyIs7OgJIXb
	 hhEhtTIXUGyfLHJo9o6c/TuNhUnl+wh/qt9lDljzn1D7id+pmBTDepIvc/USLwUxoy
	 7E0mzpTgAcs19hvUMatUhyKboG2ZQd+YiF6RjimVplci6NVhx1Rh3RZ4K5jylOukD2
	 mNACj6tDwziJVdu9s/9Z0xcEJFwy99+Iqz4ZG+KDS5GmlKp6FPwTTIbqhyHVVLtbDm
	 XT4o7PQNRfncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4FCA6003
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881043358.25929.16977053466408009735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c2c574d73bd99c23d4ab38292fc6c1c9306d7e562c9e4bdb0e00e014ad8cf9
Date: Mon, 19 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768810433

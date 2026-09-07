Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3981A34752F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788781834; cv=none; b=NOoJWW6Q6fUe7JOpMCZ4Ik1FuA7ApIfxXP241hUyffn84/lxptY0WhHuAGB4l8CrtaN5C1/yff/0nfL2/6T9U+Y8kugIk73EWyK5AC5jHyIOLd0mpX7kXy4EQFJ+ERFhWo3qau2+SdBBELzjT2uTRiT+hxlQqXO59jCapF6vFak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788781834; c=relaxed/simple;
	bh=g+q7xgAoiIG8bUw2RpvTNcEMRke5kJeYKQi1CcT+uls=;
	h=To:Subject:From:Message-Id:Date; b=uQeL9/YUiXeXz1jk6a+S6vw8vLXGET1nbWP6NUyv69T8XWyYJQvI9KRqE/ts8vjp3ruDO8KDrtDyCf1iDgw8V7Ifwts0HphYU/uIt7kSpgSSMeyJFrIJb6oUWjJu2U6Jvx1Zqnj6Lcd2e07Lx1Mz0X6PYJmA71BStrzLwjVozW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIYSx/8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIYSx/8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8E0C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788781833;
	bh=g+q7xgAoiIG8bUw2RpvTNcEMRke5kJeYKQi1CcT+uls=;
	h=To:Subject:From:Date:From;
	b=jIYSx/8H6EyEoK7/s31tgMIXvUdJvRPxVQikXzZAnt4qs9z0XbXn4ve7+ZF/ChrzS
	 Spf+asC4+D2UCNcfhBmTvzy/BbVp/QnD4M2+Ox578/cnTu4p3UMKyIcSHOEainAyQ0
	 ixcvMDj7qbdcSa6ti4WJK4nJ7WCcCZedR+AyMFN92JCClPOljF4/xqKmgcqdUV816p
	 n9uJ7qduD1oKLhmmL98jFO0nm3mhYyET9/sNu2SnGChEkj76m6bLFnOecYIXwHBDeV
	 5RwiIvjR95xs4AsE0BN9OUD3n5muylzGa/IJezy6srxLO6gssI/KTMTHkEozYTALEg
	 0T2oH8D76q40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE9C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878183369.9885.629977895463849827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe4668e78ab442a6e8ebb9240bcd60915575e9ec6705f71f56be04861a32ebe
Date: Mon, 07 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788781833

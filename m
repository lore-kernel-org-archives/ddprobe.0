Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C242AA6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758689994; cv=none; b=ISy7mJx0IJHeQ0umRDFQXHau93N/ZgXTA7c8O6jZWpywlG7Sse6TDo2Uf08MX1TgMStMGRcYVghtC4iCzzhDQeQWzoxNWJBvZMfmI3Wqjq2H9SOwN1uTE9fMWF99Sxd0D8Up49YWXS5CWJpZWoBC59k6ZYeA274yHtvtsuMc9W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758689994; c=relaxed/simple;
	bh=okw+wOJjPl0Ztn59VJV273iIXCmvMVe7kiJovNx17bk=;
	h=To:Subject:From:Message-Id:Date; b=JfDaWLq+yUrPwlARBCn/7A4tK9pgBPhaRwGeXGfSHOr2EVvu815w6yKEoS+duNdJj7SqhwsrFNpUl+YfDcuZLe+TS3oZ8PGDCcTSj2NJIa6taLhykNIJZzOtYT8uPaBwDlkJE1dFJ7HANaTFPFb/vvnPzQC4GWCSaCmHKNM6nUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4eDF9A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4eDF9A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E66C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758689993;
	bh=okw+wOJjPl0Ztn59VJV273iIXCmvMVe7kiJovNx17bk=;
	h=To:Subject:From:Date:From;
	b=H4eDF9A7yf1hCrMXPT5sUimlgmhJWO2r0wDfcIsESPil58YJRoE/OZ0vKaUvDFgu2
	 cUoCl+KzHrcxfdRFGrrR6TUWne7rQBir0R3mvtWop399bwj/limdhP7n5fHDW6p5xL
	 LFcISOk2bj/CG55+2Py9/WWFyyZKqtE4zlk/huPxv8WC/b+TFAAb8IcamCbq9da7c8
	 xDRv3OQ9ob/6WX6A1ZRoeQswTA591kelNrw66rR9QNvXP7Ah8gfQoJpxUphL2+PoTW
	 HtWUVLJA6LEd9y4mtALCSZEg5W/GiTHyzd02UWLjy6yzu5wY36yVuxgAy9a+ub13jf
	 82eNhyc3oXWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92239CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868999358.31404.16371567673944016798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dfd39f9ca6c2a4b74c8e0f8f6f78d1a7ca4162101a71435f744ac0bb67bd6d
Date: Wed, 24 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758689993

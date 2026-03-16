Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF172390213
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773692094; cv=none; b=HPEpBAS5/F7XtE4kVw34BgYqsyeuuHfj7O5ryOif6bMAX7ez+YqpLP7TY9I3O335+QGLNHIA17+gt8Jw2JKvSOjx93+At5R96k1QiRcClF2kND4qOujZGBdZElDw2rL3F+timXDsao26VKoChxwRW0EP/KSLY32fmoHUMDuMVi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773692094; c=relaxed/simple;
	bh=b26SM6vOJucFsQOMLBDjuBzALeqqnTTmoil3mHmwHv4=;
	h=To:Subject:From:Message-Id:Date; b=dJ9fiWHB+HwLN6APqkVH1r4Y6WRv/GPlWpiTF54Asvs4xJmiBlKf1fDK2rGVBmVUtImOC0Fgt6jjAygBWuaApL0xjVTTR4UJqIcEjNJNJWnpf6htogNCoN0ae8kPExSJz8CvWOPA74MxXwoq3d3Cm6EowQF5y0nlruEUjsI6BYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D87sDQiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D87sDQiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732EC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773692093;
	bh=b26SM6vOJucFsQOMLBDjuBzALeqqnTTmoil3mHmwHv4=;
	h=To:Subject:From:Date:From;
	b=D87sDQiWXmHABPlb2VOB3T2uf2AJgrtCAfbWK63CqPqrzoEBq0rWWjhmgvoVC7ac6
	 dgZQD88Q/Nm82aFTL1UsHTPXZKHRpsY7LJsyawUiHjnROL9mGNVZ3vz4empVl4L7Db
	 ch/Vf8652waIHui3cq/PDLqy6Ua7lIXesBv4Cd0X3W8JNjVcgyttAbPILchKmjNRYa
	 QtVcH4UUXQ0+P4+qEGOUwJSN1SLPjtm6OgT5B73obeonBNfe4ofe8ZHYhkWAK0a4Sl
	 j5BLgpLxJ3ajxeWtsutEpsfsoGsFT9lGsdx0cKNkNgKUNvBJmxOIvPnvhYmQq0CMjS
	 Knt1kR7MzpGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13BF53D92
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369209357.998.766091356950289565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00d07189cc2f559a18c3c3af4c71b7d8367ea127dfa520f65fe5e87d9fe595c
Date: Mon, 16 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773692093

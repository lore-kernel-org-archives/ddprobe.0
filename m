Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FE0248883
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774377894; cv=none; b=ABx5Z/V4HZ4KSWhxk6rPgAG40dUlLhS8P+6eiYROrocOn6A2MO2xdZhvg8cvm48C5mqVmsjpQOBdYfKNiunzDgYqBkVHfJAVJjD1rrwTiN3pZLJi4MpjfT+lWsWehzvRzJLbnFB9gvIBfgCsjUXsfRzKVuKQyjnN1rDXeDF+IM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774377894; c=relaxed/simple;
	bh=CyYC9Ri7BDnOWvB4ljnssgyLIOYVxQEloiPPelL/tt8=;
	h=To:Subject:From:Message-Id:Date; b=C3RTzB1NbMzUDJnl/652OatwcgYM/i9FOhks8EmvNuyg3eS5QDm1zTcD9FXYtcgdT/bRTTde5aaA5vQXLC9jhQ0/IdHUzCebqStF5WXjrpwKVBupOS7Y/+R5Qv8WGIdffaw6yfQuX7mIIB1Nd92gjVWvK7n0YZhJk0jgqTRRQJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXblUwZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXblUwZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F54FC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774377893;
	bh=CyYC9Ri7BDnOWvB4ljnssgyLIOYVxQEloiPPelL/tt8=;
	h=To:Subject:From:Date:From;
	b=VXblUwZ69OftdipuAKtedr/jaWz6QyfV++5+MyaoYukOQALiCIJjhsf/AyqiocE63
	 etk6hByLLyyVCpPMmrWDxriF/4TV0ykb5P2Mh5mia6E02Npj9Dxv7sBpWU39S1Mlhe
	 Rys4dmMysIhio7AfjZB6tGS0ZYmwo0vQZ8nWyO2003nd4ZSQOEzeuUiGqfAnSPGdXk
	 0rVMzUq0faP1PGLpoboTRXnNGAu7el2XrmbY1vnbxD0OevH77W6ppa+3+sqle4OkEC
	 f8nnxWPIDLVMKDqMh8UfFfPlK9+JESk1nFBX6mAy2cYrk/lUwuf1TL5+Bdb6shicNu
	 wjC4BGwyNM1GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFBFEC0F6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437789358.14884.2710207375857017581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8683447ec3162f8acc8b54da01fd7a6aef29f7caf05f590624acc55fd60efac3
Date: Tue, 24 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774377893

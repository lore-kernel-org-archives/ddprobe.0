Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E64732C93B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760724594; cv=none; b=EDuDZNMjuhG79uQsYNV1hMQQsVJ46U9R6DxlGMkdlV9uFqNs5AK8/O9RP5DG10rvWINpsDiicBk403NIl88Jqh28NHn8ZZs51Yd0gov+7TDwJKzj1Tovp/43Ax1NbAJ9A7jJIv7O62nYwOUqprWbMt+PLijWH6sIBmKN6Ln9tJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760724594; c=relaxed/simple;
	bh=i4udAaowGLl0b3pZBc5yrd0Zu/AmkPIz5YU2exPTAnI=;
	h=To:Subject:From:Message-Id:Date; b=kaKseVVREzcW1Ty/7t5kQW7cC94PFXGGoqJlcHhGIRrnQfwFpfK1/UErC8tYblKCubbinpmybfGQaBtsY+kFqkX1vez0D0cyy+wjz6RL2Cg+oWqdiBzQNGbH2UQc4uH+LY2CrdA8vKzFAeLmxvmQeVMUDl5n5cxaGDD3WXFvqhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmJYPWIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmJYPWIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB9CC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760724593;
	bh=i4udAaowGLl0b3pZBc5yrd0Zu/AmkPIz5YU2exPTAnI=;
	h=To:Subject:From:Date:From;
	b=PmJYPWIiaqQlSWrQDrC9m/w9C3ZWjfsrOdFBgLV7NiYA5cKoFCALxLN3Rly6trvdP
	 Pa70gPhRUpXE1sGoYhwdAWf21i8jCTUuaZFpzAnZh7rfbOxvOzRNY6oJ+GA5OEjX6q
	 DhJovgc68ZTzd9VaD2o07u4l2DxCW+C127sTplS8gBxwTy8B3JhWFuL2VGE+hUvaRE
	 SLIbY2qEQUfcuqEZkf2dogOX6T5j2/D+BNNnXxX2NGMuPoD5RtcyUAxvjFg3esZCB4
	 C0i3jSbLza3x3TDytzGRa+DrvssWpsDGXCyI/nwbHxoQU/nhe7XFO0r1PZhonhlvwh
	 rIDhCGBwUdx5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7ECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072459358.7165.14687525943017221006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15297491b7f1313ad6b374288ed7e0e5bcc535b297de700fe0e2b0b49dc5f77b
Date: Fri, 17 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760724593

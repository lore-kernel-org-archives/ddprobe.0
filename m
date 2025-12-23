Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EED17A2E6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766449434; cv=none; b=gMF6/QqwAtlrmdfNvG7VH8/amDxRxn/NAZUE0NbZqI7cVRoeXZzQS3Fys01c655s6g6rbNG2LRMThhs3NpHFPMOCuoIJ028wY41SZbiDQxzHy86yM2GXTWsX9gr8L8rfUd6Rw122pg/4NyFQTNYGBR6ppNJBL8SD6V4UEjnm6dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766449434; c=relaxed/simple;
	bh=F09eJsM7+itzoQsz4P7VUHu/gZxE5OxnyVN9Rii0ZA8=;
	h=To:Subject:From:Message-Id:Date; b=dINZas1RhRHNt/Fxvt1zgxe5SeOPVzQB0tBoV8fUhF5r6WtG4lrBbI5eMN28HctRjikayQMCWHTWEoKrJkx0JQHLBeJQloU6sf52s8qNm+HXIxcnOLzFLBKnyn4wLQyMtSn3jEgPS/qZyCwtzBUsudV6K/mz1hirUKBVnr066ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mubsbJQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mubsbJQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C5DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766449433;
	bh=F09eJsM7+itzoQsz4P7VUHu/gZxE5OxnyVN9Rii0ZA8=;
	h=To:Subject:From:Date:From;
	b=mubsbJQSjcMjjXSgtrTqemGrOP/GIuH+tIGHMopk26+gE3uSaczf4oyB/HF1NuAyo
	 MGs+ivSRpKWDMZTKoJn6IdIZJFwk4mbVJmiYmOdXJesk7A7osDnz9cfoVu7UKeukiO
	 awnPUC2gm5Rg9ierq4km8rGyRECeKrytlrwcu2OhmY+5glUvzT5yQiG1w/KdzSQkn1
	 kK79d1hXxGgM+5zk5hgKO0sF6eXuNHbgTiXycm+DU90hVIUFk3Xjt9u26+I6YNkr9m
	 Vz0B0DH4YoeZugfHflbC92Qcv6RejBmo3CppXBSYlXDnvcSLKIhHf9/wSPO6FizA88
	 cVCgx6rkxOUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E48E6B25E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644943357.1003.2267394699330336108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc58c1c35b54f74e78e767378b81112a68a6873f159480ccc522315db9b0ce0
Date: Tue, 23 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766449433

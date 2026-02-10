Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1F6313E0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770764634; cv=none; b=g0QDW5iAZ33H7a7/yL8x+8wsQfUA4ybQyNvSyOosPIoSXf2Z93o+Vip3byGtVx/1B+QfQXyl+F0KmK0ttCxzmEhpsIU/L80WCw3tFWIGY8TOl9I0+kwNbKIcOvkWm9Hdpz1TfAiAf0YgdvWST+vHPN1KXxO3Xii7fG0+0TDjsRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770764634; c=relaxed/simple;
	bh=6f/fqaMGFnOVZCafhHxMlcKA9DhdiEpULUlghC36W3Q=;
	h=To:Subject:From:Message-Id:Date; b=YBsHXcA5LtxBGm7ThYECrSh3JtcM/ZiB20x3ILntM/gyhSw9+ODDltWSOhInYzDILgRETZwJ+WO2F0sObWtwjb9iGcX3owuzhiNn1bdQx5UHvQaFfpmCQZkwuqfVFqshxJGgzeUrsoe5SU/QEVF7JNjln+XZmK8yan7sg7gjIO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaJ5KlhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaJ5KlhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27B1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770764633;
	bh=6f/fqaMGFnOVZCafhHxMlcKA9DhdiEpULUlghC36W3Q=;
	h=To:Subject:From:Date:From;
	b=WaJ5KlhNHWsJ9llHXkGesv0fgWW5Gm7Y6E4EN7swdmJeGo9Gg5MoIbO6d2KIit5Bf
	 2MIa44eyihDBtdmh4VkeeyZnMJI9zVub1BRZxwhoiI/okIgUJSTLaQR0Mi3+wQ6UlQ
	 oOji1LZDcvivkwzAiHhK9ZmH8F8KebRxPsGLWsCsIIaTqLXZMySDfFR8OMduN3DbHQ
	 oDBh0nCnCxnvbo6PvnUKbVdBWCzbUb553/YoW8mpC8mU36rWvlFsLs0rCh8bS2GdBz
	 DKuJlro7Fs/SlUtzuMmzV2MrKFsWV50StXD94fDAybSCnxiBEo+hlmSVultgwx2vcL
	 +ziAkICmmzmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5C5EB271F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076463360.12248.12107895129718769365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bf449f13233c211f8d39aacf4023443a30eb065dec1fe2c7b5948360798af2
Date: Tue, 10 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770764633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD5623EA8C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774481694; cv=none; b=qDOB7wRaPHcuNOTuPLfQtWgxRLqxSdPo/LTk0OoV5mIxgBt1gaiLzfKRsNTytxyC+2pOQ8QPoUHAvzTF2JDKPJSoFsvV0TdWn66rJcQEsaGyldhZtsmmdOUVSQkJ8jgdTxMiRGVeBPF7sxe80of3crQWQ2vzI5w2q6cB41xYUTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774481694; c=relaxed/simple;
	bh=07kTbGdKqKJvCTyVB30VdBAp7+r911CEJOIX2B3vyVI=;
	h=To:Subject:From:Message-Id:Date; b=EniGjGjMgbF28Y4eH/Lkrl8F8rghBx/5rfcQ2ryNa1XOuNx3PtnYSnpYk1LY28HFWr3S9TfobRJhIdJAHp2sJC41bgU90eGHi+4wukMXQBw/nyqDExUnA7kBHOoneAl6MvVjpuLBk9yFGDD3kh5aOfYdiyoNxsuzOLaZKPP4jpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1Y6gT4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1Y6gT4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774481693;
	bh=07kTbGdKqKJvCTyVB30VdBAp7+r911CEJOIX2B3vyVI=;
	h=To:Subject:From:Date:From;
	b=q1Y6gT4wJK5CXxQACtlT2uFhatlWUjISxibi3COb2vqdOdTiiPz3Dh/cL7K71jN5H
	 4L1i6mi4GpWeg/8QCpH2LuErJzpzWKaXZaye93r0/99IXIFqNoOiZXMeCtbdN7Enyd
	 JQU6WzAYr0LRDIKhinyLuJwT/25GzDT2SV78/chJkWYhQ2V1bmOkhKR6NyORRRQOrr
	 cbIc0fi1Qdu7Z6YwmOmK10Iar8MEWULK9lhXTlyej1MC26U8ymEpM2OCxkZRlk8XIO
	 7rkPA+JXi+UlxRyMOkiuamJwlBnhWaURh1TZEbDjbQCha4lGtTuVp+PYy9Iu6HRsTT
	 1fwyblIvCjkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97411109E52E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448169359.32303.9231882316668846170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab460c3d15575b9883757cf530e13c44058601896a4b53fa1f0ab20faa33ff3
Date: Wed, 25 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774481693

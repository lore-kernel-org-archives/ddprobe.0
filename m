Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EAD30AAB3
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756911594; cv=none; b=f53StLler4q7qgBGIVmwX6RcZ++gmHb3gWUKH8gWKgRjk+H9CP3DfLVAW5xzUfWBoIcFrfLC5OPHAl9UK8x2k0Dn+aPH/uEgqvzlAkR8SOBvNf9V+I/5Tn+DsqFYrzRLtkHHmCRgxLyHrEh7zBfA+1FOqJ88ZxPp0x2syLwduks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756911594; c=relaxed/simple;
	bh=o6KstYJPpVHEVKcs3/ORsgEFAmA6gsjYhhrLNMgmdQ8=;
	h=To:Subject:From:Message-Id:Date; b=d5RRikPJfvNjjAIhGhMVy1GjbyLbwn5QcC3Ky3TdPhYFD+fcptPv7MfAAQA13tc9P6qwiSzbv7KJLFIMFSn5IIEIPUO/2QDePW0mH1Kq1S+GdHuQE8F0+b9W1EHJkpog40+gl28vh3/BW59EuDQFJBI4r/5v+3/cYKaSL/76LYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD9twUIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD9twUIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A60C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756911593;
	bh=o6KstYJPpVHEVKcs3/ORsgEFAmA6gsjYhhrLNMgmdQ8=;
	h=To:Subject:From:Date:From;
	b=iD9twUISogX7hXrINAgXShhWwC255Z7bxEPlGB1YPYx4nN2Z3/Va0W0xX+Udq95XB
	 1VNcOHzuvXtc6bQmuVsxwffIt1ZcjmJ1vWrUFgHBs0CxFQ2QH8aGBaqyda5F6ZRyBc
	 cITjB3348ZKFAhghSFxFKGyhnNqY2KBMp0+OOuwzZUfwAKKFxD5KLawMAMEBG/eYb4
	 SzOdl3Tw0xoC/UWw0ByQBU0MnK1j42/wKTB9Nc89PKn+K+mH2d+q8Uovj05VqrreSq
	 3DYo0kUN+BIr9RR7OzyQCZOlRUwp2niMaHr54/kVnLGJVMX3+gYGiwHXUypIWaaGy1
	 wmOn85x9OCEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF85CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691159358.22055.15041617376262423288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78e1100ccc680ca0ba4d49ce465898dc805a8d43aafc5e783bd0c8f83fadf4f
Date: Wed, 03 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756911593

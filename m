Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8B184
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750378195; cv=none; b=BrTENmhL6oVm/jwZC+7xU5obFvXjvzBLnKrsCJpU60bQIYHY21e+3HYO6V49qj6/T7y80FuPwx0I1sFxaUhzX/mddxUVYxiwlyiKNwpF0l/TYk9ThzUoX4xKZoxpI1GyudzHdahGR4uGGXohci1XHyc3Zym0cVp9FjI27EqPWpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750378195; c=relaxed/simple;
	bh=vy2Ct2HI6ge52bYb3HtsakaohG6v5s8rlVFKys0Zs90=;
	h=To:Subject:From:Message-Id:Date; b=CDrmqORGOTggHLaFA2HrHFQZ10DQhS9r0uHxqhWIx/A5a4Sf5yxL6PKirHYq8WRtC1F1G79cUGNSOvDWiyR4pap9b5nlu11u/+Je16K4fztrSphwe/UB3r71Oaqt5hEFSg4+8lz6bcOjdZECNJrAt9nn7ko9wN2WycsigKz8SoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMVPS/Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMVPS/Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC9C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750378193;
	bh=vy2Ct2HI6ge52bYb3HtsakaohG6v5s8rlVFKys0Zs90=;
	h=To:Subject:From:Date:From;
	b=sMVPS/ZofYw3p0Jn/Dppr9E21AbwB6IW15eghMl7+/gphX7WSxBZFY/ii48JcQUg+
	 VBb+OgGdpzxZBHPCp+9YaadG0dSwC+83VcSIER1Z6ZXFgsGUXqcduPtJqLEPFEcLtt
	 iZLfOnM8hSS9Mj9fcarKv4oYlmy/KCb8SbAzCl3/lzqfqxcMaLSw6n6idJ5YxUEnwy
	 UIXUeMXwZI3F2d02Bkuu9WjpUcw8X8ozpJgm0A8mIrMB+rfTtGDneMbVeNE0Ct5yVN
	 8VOz8sMCChuS1hAt0Wc2wyu8qBesRzz41CDYctVMGOfjmVli//E+lzK1JyAPPAUW9A
	 312XC5sZUEMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A85C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037819357.17925.1892746423207609796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdda1c8bd6348c6d1ce40abf14ef17ccc2f58233f39a6004f77c033467e9a201
Date: Fri, 20 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750378193

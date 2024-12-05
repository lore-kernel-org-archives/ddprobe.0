Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EDF1DC1AF
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733396754; cv=none; b=ESSdpXTkshYM5YWlEo5G91SReBdMinl3Eeg6acbi6kSTBm/zvD/Ju4pboW5zzKMVTeI2W5K8atT+kxwn98h6V7A7IaCnPsmxjf/jh0PkGboluDw9/UKJ3Pi6tLo4JibimEDZFs5htJzieMSPR0gJxklsW8phvDKmis1ioLQ16Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733396754; c=relaxed/simple;
	bh=g1XHIPmo5zKZ/7L7HD9n0/4sE94LA20OavXuh7rknyw=;
	h=To:Subject:From:Message-Id:Date; b=DXKEu4zJgCBGBS5LQHKYUIfgZI4+O/U8R5IoEhlmPglhP+e3mIgTsbo2tkxm3+thIPJi4cqgXXRgbQno5xqi5/WrMwVsYefAPc8s623EuUDHOAZ6E02hqk0YQ+Q2LmJe/nhcW+UvSp7t8aUtiAZBqBtx7Y+dCzLOVG47EwmyyMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWaJNzwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWaJNzwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA693C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733396753;
	bh=g1XHIPmo5zKZ/7L7HD9n0/4sE94LA20OavXuh7rknyw=;
	h=To:Subject:From:Date:From;
	b=jWaJNzwidDVaA9rBInO/mjCpUObsMxVLoKg/Gt0B6gDjJpPRAuadM9n5NoPnomZBN
	 iwt1rZlyNsf5J+vBT0b4KPVXdy5GG1oxlYlxWoDa6dJzbYDxifUPceYeLjk333rdeF
	 YfhoVoo6P9ctbWjtIBovX8alEFWP4rb/prac2zuoH0FzZFnv9pgxVdHuJ6Sue4BLCg
	 +wsxsG0/6IxcOVKFjB60mB149SC9o1VC4s14nr6OsGveipsnWgrTOUVLQ7DZp2ERJj
	 yRRib7/f2FiBxSUdilDvFSKsqQMXQSBM8qPAqdLpsRg/yUK8Y1F97uG7mVAU07FADY
	 Nt9oD/9/dA9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68CDE77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173339675367.17562.15966655851766865959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33359bb90e46cf8ef8d27ce6eb1c9252563756a3ea40dc712ae5fa4d05fa630
Date: Thu, 05 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733396753

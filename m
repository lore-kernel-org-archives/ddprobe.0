Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E22F16DEC2
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716899063; cv=none; b=lLG+EYq4GOIZswk7lccgvf/J7GU5VSKgQZXvaFYFafirtRJ6VfgEtRtZ8Mx/JNsMHza2CUVGVTXOAsG9ThlintKbe6DzG2CKEd91AHbJkNQyOWRABF6yt0j0zenJMMAUOqt3viVxOKUwSsQkxvtdaobAoXNQWjcIWd47Fl7PZzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716899063; c=relaxed/simple;
	bh=WhnLhIu31wD0gTAme6EuwI/2rCxzEP/ex+wQkP+BEPc=;
	h=To:Subject:From:Message-Id:Date; b=kVVnj66Ox4YoaHDjL5BBN2mq9yrWd+juM0HWkkoTD4fYVG6/jVDhVpT4+oYHvBNw3DnuXzqiH1nfd7yHjqJDa5xaC+Wc/Au5l1OUGqNx9oRuug+s0yg6vsbLsweM5vqlBGPFCYrOktmpuQQlolYmOb/vUVUx38WV46T5/g7lYn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+FIX8Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+FIX8Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC462C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716899062;
	bh=WhnLhIu31wD0gTAme6EuwI/2rCxzEP/ex+wQkP+BEPc=;
	h=To:Subject:From:Date:From;
	b=J+FIX8JdtUEWcqlh5vAcGmkF7cRgQ+cm0LZLyOjzginyKJbbzJyFQpkxIAWqTn0zq
	 1wuPxXyeeMbCpTg13qjgAp93qLU+bRqBPwLgkbjYMFQECBhx0UiQAzF3YxAzPeODHO
	 I63W7PQRuGWlKQyMZWKTooe8FdTKykwB/szs+fmPxgJtI14kizs7DAqG1YbDsGMo/B
	 glO172Le5YnSnFw/ijtZFdvdA6b1c3AGiLTDP10TwrHSKdn0srs5URoJwm1sGveSI/
	 7v2Pu5aGhfXCzsJoF3/Q0z/CuK8qPkcToDuINmKhX2rch+SBhFbbD/pjVW2v8JTT/i
	 F/n07iES4Ur5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E09C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689906278.14568.9159698610101156021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1dce8f607b605a211152c794c5cd840bbd879aeb04120d5abc3cb6e899fc3c
Date: Tue, 28 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716899062

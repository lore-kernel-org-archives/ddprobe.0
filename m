Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95049270EC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790091034; cv=none; b=sBDKho+NmUiCDfBzkOBeQt/jR9xDTnqHnOtEreONmiRbP0jnB81v/gFEqyhC4uHzQNc8vDnKQhtRbXzJKyQOMkIqtXapZ2157sQW5hD5RrnZtdDunSDWjAf8I5GvoTzhiy5B6lx5eI92xW25Rx9+wtq9MjoMcLxjkYE354jO9bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790091034; c=relaxed/simple;
	bh=uuxPjcqmpZfhjEqItZaimO1pzpjyAcUWsyx4etHh+OA=;
	h=To:Subject:From:Message-Id:Date; b=QJSSm1Ir8EHwVw1oTmXlyoUCQt5dz9eNFVjFVYGxoSo83/P8kWNG2znH4I7Fpv+X7FkAaQAolDyEZbtRNcQhwXeDMrSHJvckwaTQwZ1Ip5c2lrSykCwA5LPxTT5yzwHJbBaM/c0EhpVsdommhsN4KzQJIOpeWlgBTI1VYjnq3fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcZOgaJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcZOgaJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25523C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790091034;
	bh=uuxPjcqmpZfhjEqItZaimO1pzpjyAcUWsyx4etHh+OA=;
	h=To:Subject:From:Date:From;
	b=hcZOgaJcWRlVdlRqeE5iRXyXcU1ZNX62qecv1YFaBhyp3hzSHS22lKmpVC7PMwL9s
	 3TBtOZNjqMlx2FjiQUrLkk+dVYdRBLSDiO96YljHihGrJpDGBCm1QR8mHYp/Vp5PN1
	 U8B+AFji5nDXVlMWnef3Q26z1AhdcCpvi2lfjOJDyhkvISe404UQljxclDOnVkkvhF
	 3B7n3P4G1QtOBsF04DFuiKeALtkHBKtd14pSAqePCPmx757GPgmRZRgUoe3lP+jJs+
	 H0ulwFuZ7MqNknfoeF3sWETaRl3KIJeNDlgSB2w1yNXgrmiI7gGBgH7EV9Fb8Y51y3
	 1T0Y84qxosSzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4F44C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009103390.12471.5808370064890570014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c0207b3661f8b18de4ba3dfc096e496d0d695dcb2e4383370b9988c56c2a34
Date: Tue, 22 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790091033

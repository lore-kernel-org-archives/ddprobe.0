Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2802C21F6
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777760254; cv=none; b=RckzL7TRMoPhEWZ7P2V7qOpLPVEAoxwhl4r2W+9TQz+UiMskALquBWkc14mxl/Q6Rruxmg0JFK5M3aR3xNnxEn06Lysx9iJhgGbo1VrHeONaVujwWejI+Mfd1qbKJa37SFbeJKHZ0cJdiI3AtRW46dip6bLcR+mn7bsAk745Jlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777760254; c=relaxed/simple;
	bh=5Tecpu4j5baX4qJwp3coSGq01kzbOmtWa+wBwt8v21M=;
	h=To:Subject:From:Message-Id:Date; b=uaMh89GG83yI7DXrBWsIG18Vz/JSG8KGh0I7FnA8WUJ61qsVESyNbfzuptiG69saIUC8HrIK6e6tLcA0QIK+vNX6PoRyHBBpf4YwYNZtttZFgb0/LLHDs1cgWZWoPPa6FMV39oFCs52RgVRTjoKEielHOurCDcmUBdoKwLVDESY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrlNaCtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrlNaCtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE584C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777760253;
	bh=5Tecpu4j5baX4qJwp3coSGq01kzbOmtWa+wBwt8v21M=;
	h=To:Subject:From:Date:From;
	b=mrlNaCtDCnkJQgzRT6GVRlFrLqydWIG8rSf7UInklOcqESZK3gkiLohcFcnb1ey1i
	 ixMMsXXqfKSur8BAS44yEnunqVlkNTVJqEfMnm7r8beIinUWTRX3V+u+s5q72DhXvS
	 FcCuSoKvl2fGvNGdZwBPToLVCQd0kAtWUJ34u/0W6vANGE+edGqxU5vEkk06EH+jVO
	 wBwN5VETQiv5MlZNf/LD9kJrKyt7YnRqWPGGHcWnS1Qq9CsOauBjas9IRDB6dvIZSc
	 FicQMZ4BJyDGrUq0WpDqa0hdOAOwiCZnIoIH5FHRECqRB2HAdY9jFea5z6QMlI/K59
	 vQFNNlFBXg7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB4CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776025368.24873.15498180908019833163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361cd98296b3b725cbce2fa5ba73c118b57ccb743a73572c4e5af3f88d3aa476
Date: Sat, 02 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777760253

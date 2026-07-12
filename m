Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537C5370ACD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783862914; cv=none; b=Gitcagw1F6zte2GmXa8XwB8gAlekYUv/pALxtco8pEmYbRMRfxkRfYDVTqPUthIH5ecFn0ZE1UkC7OH4erfZnhRhUA0rOtvdDNi0Sq1i2NdZQkqOzHVpwdcjCZFvVqgC72ni1mVLC6V+pXMK278ve53Gh1lErtJM58vjowYSB94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783862914; c=relaxed/simple;
	bh=jCcIImBne2P4D5WOv4IhNNuFsu6/4NQf1MPpcRotTPA=;
	h=To:Subject:From:Message-Id:Date; b=Ma4ZjjduMqawEb4/fGOFd+ydv3zDbp7+OYttZWmaWPruWD7wYKjeVOltDpnP9i0cfkhfqaNKqnqQX8db+Ze+dRTPqLqkRHftMbnxpJKPXr//oTg3ZCpJL3kFxN5G30dCWJ8nGIGYyLgudOC55D8eXrB03kZvWw/FF+rnZoO1k44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1MSAqai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1MSAqai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C955EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783862913;
	bh=jCcIImBne2P4D5WOv4IhNNuFsu6/4NQf1MPpcRotTPA=;
	h=To:Subject:From:Date:From;
	b=u1MSAqair8I4bucLWoAaN8MJDZT2gQOHeTndfDMMYNpbHMV2wjZF5Pl99KSkguNGN
	 9TGs7pruRu7TnVnEbkAvbJyIWcd+Hhmp9Gunq1OqDwEFbXSjSJtWl0uxoUGzUEqkQA
	 UE08ppX56Nqeu8qzhzzt1Q/c6evM/yXBqQL4qp1xJFRSiiox09szCCZgByMqKOwKDN
	 tAJR6OEULLkAScO+KRNY4pt93SclH8XAxxC4sTO9k8RWarUFg6lnxmSdhIHLN8DCDr
	 ueg+jveVtRlgzVDg/9iV4vflUIOnClECBhGDbd3neGhAqTkdV83GGLqIww8+IsPgML
	 fqu+vcqlm5edg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8300C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386291368.10265.6869755305097999456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1548483fe040bb6b470a387e2c88520993ec94ac3fd4adb8d7085028ae0be869
Date: Sun, 12 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783862913

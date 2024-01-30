Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB20F364BA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706578697; cv=none; b=rFaH+hnCcjpCuXrmBYdUYSuAqpxtGtTqhzidGOa1bMdur11Jyh89te584msyb+wN6LoRPDf8lTsHyNEH00EUIbcfHpELc6RSTRU26jvwQWvPoFMYc003bpes0r0RsLF0FSCxU4s+sEyiSHGC/aOvkfBmvyn+UnbJNjTO2J8tLvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706578697; c=relaxed/simple;
	bh=N/6tEC3pd8f8uvj9gymJPiwp0NJQ6Q/xWA4KdOBbCnI=;
	h=To:Subject:From:Message-Id:Date; b=MVkuop0d/OhU3DXujXP0WIiB6SuGmBBVZKFB6FQno4o/Yebwc6iDo4h55GFikYNo2A5vOgBjDpIyQa56RDLPwEIuAdNk0blnuYUEcc1WFnLogXkjOzD2oLAI6eQcLKFjVo1pyrywV1aALKI3JksbIGtiRmvK49kaAMR+Tt083wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAOiGWm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAOiGWm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7917CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706578696;
	bh=N/6tEC3pd8f8uvj9gymJPiwp0NJQ6Q/xWA4KdOBbCnI=;
	h=To:Subject:From:Date:From;
	b=aAOiGWm22fpp6ggCvbWb0+OAXQoTcLukOtOVRs6J7L7EM4kKyqzr/Is8cDykPPc/P
	 WUW7v1+CkBPzaTsEbjx/UawnJJspf3Jdm8Msv6K9zoGVebxqm4o28nQ9X1d2juk8VM
	 Awf6D+jct6wnVRI5/z74IhphR6LcLUK4iLVpAUL4/zvf58QKe0fpNz/UU9zPwWe+Ja
	 UocLfBQAjzXQHDRZwdJfNE6ljj6bed+JpdeNdQfQF4cYERcaeLsRHIvhggJmnr26vo
	 I3P5fPu+yfeHPghK4P9HCqc1mpO9vfAGbW6MS/X2GCRHa3kcogwAyNvz1oKSjI/IB3
	 aRnt/bNNhRG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6049AC47DB3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170657869637.5601.15477640757991385552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efc1e27d870dcd009066e09aa1095e129b696b0bb95fa73329c893bbd8a87bd
Date: Tue, 30 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706578696

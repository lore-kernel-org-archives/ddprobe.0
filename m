Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3113921B905
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776302854; cv=none; b=Appf3QEe1Rj7PMub3UFaOzLHQP9VdErvXkgPjMgR5EtRLKWVHqf56qMO+cPivxblxLCDkW7ZmWF0+qcUP4rwu2kqpzVZX6UgRp6VVOzuek9/FtkM+PFipL4Ci6K1drEkJXps/3Uaf9YGOqu6fFBDuPhNYAyj/BOo9NBlBNhHfpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776302854; c=relaxed/simple;
	bh=n6doL/zrHLZXYb0vKd1KDaTA8pT/Wr0PurmX18YfyIE=;
	h=To:Subject:From:Message-Id:Date; b=kwAJkPp4FUXztCGVKHhiOGJ0dcmiGbBt8VH2aV+bByvjSN2P5s2gh6KHPTk5eI71XXVrA89pP6Yv9smOXcCI5qknNuzZzPdSFTDdlDvWC//JhomDFA9myoK6KQfq6ozAojXVXaOVcYBXD0tHaCyPDQBC7qkHZYCB0PMDyzHdVwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flCWXnxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flCWXnxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ED2C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776302853;
	bh=n6doL/zrHLZXYb0vKd1KDaTA8pT/Wr0PurmX18YfyIE=;
	h=To:Subject:From:Date:From;
	b=flCWXnxIoimduPLqQRp4QI/gw02buHtOT4Z/Jz1SFy5DgT2Vw60Cve60xKhZt6abK
	 FgYngXN3SacIiQ2jXXsXA/xWQY1udXIYgB2Hxw1q/gdbZvA3wEE17iXlguUY46XJbl
	 tZJ4wBXnpko5oG+BUtyKFWVRYDBt6YKtPIseHJiFArIPuVbFf1JYIc49Vo1yj8tFuZ
	 CcKpJU+yOunPu2jSbxUn9f9pzflWd2+q3S5I3Shgrvtf/LicGrz9kuOFBAg2bkgY7w
	 wtMFqSagAhPAZGOfP00DctSnPbAx6sWLFT79zKjsSEAflEmGDmWsDk86BkF3zUkF+M
	 WunHuFF96c5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF3F433D4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630285369.22103.3712987845861674122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f53e348f6c7593a1d840319a83911e9e5947779ad8d50936c2f3d3d747b5f1
Date: Thu, 16 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776302853

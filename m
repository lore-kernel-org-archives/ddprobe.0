Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1BE763F4
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710454697; cv=none; b=O1mnIwyNVN+A2QiUcf2/jzxVlGIbiFNqkJLjEZKiTcecDhQHKo7ZYmMtqUEs0h//e3l98B2GLdpvC16pfEzDUZyhZ3MYtFPWvG5pnoRUDAfLy9+uwVjH6nNqpiFydmgHUVmOlfo3o40MusFS+M8dmNUWIm8kSUYZcvOy/Vmve8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710454697; c=relaxed/simple;
	bh=FccQdsNjoKFNFv0VeIXt5tPv6xxCUoLHmvvHxBJmWjk=;
	h=To:Subject:From:Message-Id:Date; b=Bs7fc7Ed/9CGk7wRZs+3bPsyGijuwOD9vaNHu5XJTBJpqvrCbRED1XReT7jxTrchYwc8QegfuQs3QzcPqKb2TgtenwDtjwpgTPRwW5wYTQUG9ycPfpMQxwBlOKz0Qq/NuC4/jgpKJxxeVDJg1fQF7LaGe8WY9T0/e//pdItse6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2IDb6HA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2IDb6HA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7627DC433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710454696;
	bh=FccQdsNjoKFNFv0VeIXt5tPv6xxCUoLHmvvHxBJmWjk=;
	h=To:Subject:From:Date:From;
	b=M2IDb6HA+6xz+WVssI6d22spViRD9Onz0hwkyih4/l7wYP47SmhnEDkbLS2p6X465
	 7LkZ3CHMKJDC0Q/F5XInNrlGkyy5qo4dqSjsd+TrlnFWWRFx0+aFuOf4Yvfhy2DtQb
	 Cp0XaH6P3zvrX3hmSHJXoJ+L07l9RotznJeZbks64929UjvIts8i1Z2KAgswA077vK
	 dKV6v+AwRi34Pnd8eIW7i2QG1zGYrcWf/vqo0qz1cIp/7Wxn2RKtY7SHS3CD86R/Dv
	 XHv6DJ4U3QC6RkbUUqe3nOEv+GygKVySiKJuZ+mladgiuyQJmGpS9pvR/MZ4mgocoh
	 MelL2t2Jroieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A44C54E60
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171045469641.21684.5087012745187503766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f217cb9d546c2d3d1c044b21a816594c4c470497ac19fd21daeef5039a0254
Date: Thu, 14 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710454696

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D603917C2
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712543896; cv=none; b=sh/P2OdN4QsXKXRnG2Xg2GsuMCfMBxYCDT3yowVJO90+YVcyJUuEB/GgqZfakAzACei25M/BAFmIoegZZQSdkddF5O7W3iIqX6tEVdL7fE4IxjJPSRNQT9jWfeRYXzrrLrK43XT+jgkAtICABXedMkyDWK62UfW0uID4yZlcf6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712543896; c=relaxed/simple;
	bh=cA3PKBOy8D032O8bL3/GSBuexvzd0mlweNXCLJ26gDY=;
	h=To:Subject:From:Message-Id:Date; b=R4Q0I1RrD9KqQAtoMBAbMovMhMfs7dqm7O6U40X6ytjSu3i6gJC1hJEirVdWie/5j55tPvu1UtGG9AFU8hS7PVrxtt64YrRDIo157YBxsEsu4wbwpYJWdnvhYz4v272znN5/5rhNrbmUlKlEWcH8VATbphWI4O1+bt3WUmmj2A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjhGMGD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjhGMGD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743F0C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712543896;
	bh=cA3PKBOy8D032O8bL3/GSBuexvzd0mlweNXCLJ26gDY=;
	h=To:Subject:From:Date:From;
	b=FjhGMGD5CM5l1T4Y9cGfx5Tc8HDTAzy8g0caWH5oOuYuy/kgOvfnW1Bpt4GA2FENk
	 KGE1jnhFgr6gAzVENI9HUcsceGBo6DHyLkujiM3ABzJpCHlzbg1NYTxrvd/al8aUEW
	 0Mfx41G5R+Mh85/iKB/vBPDQNk448NqGsayVx4aXSdQiYqqxuW0zhaonMWh9xH+1nn
	 CEVa7rIaiG1GdqxrUoJ3Jqh+kEL8BEjbs0M43inHIM5aAh1yPDEeqcK+VGssPZr+9B
	 oZo5SodJTZ+gmDfsykepYYYTlpW99/ljhl2CKcaffNY/DjCsmxVZ/qdY0alGW7TMbx
	 Xo6exrVDWFZ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6375ECD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254389637.32520.15753246317719800179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efffde20bc4472a22afcf060a4293d25f1fc4d79c672edb2033d05b2573a182b
Date: Mon, 08 Apr 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712543896

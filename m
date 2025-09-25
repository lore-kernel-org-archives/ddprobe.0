Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC5E218ACC
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758826194; cv=none; b=nHnuf2ikfSEedFXLAVAdtbkvXxi0g6gvEBFCzXD+/SoWo39tA5vqcEDx4IK6fxmnufqE0NvsBaeA01fzX4d0PLHPrq9QEw1g4eiqWMKuXlIeFx99lEM+o1/wx69tXuSyR4y5/rBfmdJUpU0+k2QGFhhDhACV+CZdp+f9FmuLjDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758826194; c=relaxed/simple;
	bh=4pA1MQucnoOXZJb5GBc/4exVbZXcyLKB15wbOsyg1zo=;
	h=To:Subject:From:Message-Id:Date; b=uz0C/hL8lI/+VZdcsC19/g30x8TCTnZcL3g2d7vafGhtY/+pttjnPBDyJC3j2twxWTvZdT1yTZMfmMQ7FhlReIuWOJszMW9YLMsNEw+NYjVHLEZpMYuo90wDxOBt7D31KhIXcEobc3f/4XyZeLs6thBuecR6E4eObbDuSzFJ7DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRhShHXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRhShHXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F50C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758826193;
	bh=4pA1MQucnoOXZJb5GBc/4exVbZXcyLKB15wbOsyg1zo=;
	h=To:Subject:From:Date:From;
	b=NRhShHXUieASoxx3T1QemwugZl+oYG+zixQl7Rpbkfz4WpGt4R8ZmZnFyoSnfu2og
	 XPTUS/WMkJ45VbeH528NjqGTEniVz4bm5RSyeZqoGNY+NdgP0w+G3z7UGeHGf5zcy0
	 H3ewwL9hPx9yVIfXcrmVSZuUF/BCnS3cucK4ySqVrfs7KVICgeHft5B3XpHUXdLy8v
	 naq3pyLXulNnyY+xOcNQ2BJYPuDDJPbytYYWbsvM7g/L+zowUHxeycSI57FToWE4jJ
	 I0nR9Dke2pQEgAaBXzHB+Hi4rimdpYmBTTjjsACEEkmZIMi/N+7rCMOnF16vR52srG
	 jsXk+zqj0ALHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB3CAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882619360.27901.5803851946280822950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7240cc9fcd518e06441fadc9fb17a6ed3d57499d43923e6c32baa2c4f8528b4
Date: Thu, 25 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758826193

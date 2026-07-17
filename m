Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6000B309DDB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784295514; cv=none; b=afKqpIZrg2IJxl3FYPYy5GcC1mhCa0iRSZMoKYNVwG2pFSnagigCEZLe8Z/O9yCVrYEvpDzrZdLhtw11TxZ99Rk2KKb118NmVkINXhWZLTlgKaPDGHR/2GahOtnqZxKKojI9sySqwzh7XBXvd43IFvgp5HKdH3Gz9FL4H2Dtvkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784295514; c=relaxed/simple;
	bh=6K93YudincZba9BV1bf8/7b7b7CmW3R6imFPbX5i1Rs=;
	h=To:Subject:From:Message-Id:Date; b=idEllqG3YdMpJsHEw1dd2v6K5d36aOg9ZDI/MlR0eOBn5VN6QCziZC08I+56ccjCMCiAUdd3kSMuOX1LVTymdifoXPLiHTNXpXa5zSEMkAFv6Wi1ngUoVxvt//uvdpmgqfYETtf/TTG7Hyq/LrIvb52lJrHM5IK+hWNGwnRiCY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL85x9lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL85x9lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE962C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784295513;
	bh=6K93YudincZba9BV1bf8/7b7b7CmW3R6imFPbX5i1Rs=;
	h=To:Subject:From:Date:From;
	b=cL85x9lQfzYTXaPTGija0xg0iMT9P4JngPaNiOpX7Nz1BXD0Qnb9FkJaqZwCZde74
	 dgQmHVaF3b1zkm1RmYwwuZJy+fDuPg99VAtmVMRzf+c9eUqv/4DU8rJhFETRDL8cIG
	 B5XwO3cPcxe3CX3nF2E7CFlKt9TfrWXIFq3NAkOI0nmV+nmCtR6S1tDzY9C/c9v6tr
	 rl1GFJlGR7FGyIjIO5w1w7WhXCA5cEemQun/q6Rvews2Z1bKQTmlZIWMRns/zJ501j
	 1nNGS8v11H85Ak/rT+LztZjg2kjzKZakejrDsC05iVRUApRQzi8uBeqXvHD0kg/BpT
	 8X/B/jknpCOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CDCC4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429551370.14909.4177459383042757505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d0dbc1007e718ed0e81951597539b5023c4814877a42d576460f52d5f4c1c0
Date: Fri, 17 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784295513

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C9879FD
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726673154; cv=none; b=YYY2XdHEL/rkQBMNqnNRhwpYYZjAXDm03nNHd3YO3e9lTq9dwVKE1tfgMNKfo9Pz2QFYx9384fS69bIKFmhxDWVUXOtguK48MqGZDMNrBec0VQu2oFK6MFG65nvsmmkPPP69BtqO9VfpNf7Mo6z6S4UOyLb4W/5HVWTCizcFrUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726673154; c=relaxed/simple;
	bh=kVr3QppQgh/YmZKItgASvOi7yxq7naV5Xi2UvLZ0SmU=;
	h=To:Subject:From:Message-Id:Date; b=p/Z9xGrgXD0rzOTxTFWU42+O1L6jT4hOoBTuim0BvN7emK/ZFHe2inVfr2mpvVSaulBMpalDHr4ORpCBcJmppwLmWjHDF5DkdduLXP5AXsfUiD7Jf54OQ2dOShwf7ByvDcEgq15DkLYA21MEnztWtT2/I7G9W+FMHXDLrIIOMVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diumvEdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diumvEdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31E3C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726673153;
	bh=kVr3QppQgh/YmZKItgASvOi7yxq7naV5Xi2UvLZ0SmU=;
	h=To:Subject:From:Date:From;
	b=diumvEdE7XC7cTBxCxAsDPSGKuiUXRs52EtMt6G3g/tFjVR5XeNEnqruNSabS54W7
	 dUQYK/MqEEBk10svvcn38NHkTa+E6HHIA8H+u3Q5XlNusaDb3JUysQl2JY08WdD+QG
	 ANlrmIeKGtpP980jZULi/OEOi+3AlSwlBBbpN6fVOwaOORT8UaZ8GEU7QprjjB/2xV
	 L3cK52OFXpW4iiy/ier6rvh4+qk5NUo3O0/iNB3qKztl+9aHitCt0qtMuHOFTBAvqq
	 ZwRzrj+W9pwfjnQC6ST0tLEKmLeztMdx6hHU13WYmC/FUeOIY+qEPVyfe5y52OqaxN
	 o3ok3CdyURpzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F88CDD540
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667315360.15121.12733271472239389145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5e055bd7af8fb50282981edbf5f7f90b70968c07521cd3e2f997d28b95fd96
Date: Wed, 18 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726673153

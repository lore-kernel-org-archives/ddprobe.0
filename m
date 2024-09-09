Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF882AD00
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866154; cv=none; b=Zsb1nCrh+9JCdbZB5ivro3yTdIqy1fEztxW5U8iNLGewLW0yaqgg4oIFU7GbbMRZm8ZHtugAdKi3xVpCc9z7tT+Tiv5M5zJ0Rthe/TAKqj7syGbM6H8FOGAzEspZnEV7aRTN/1SA7IHEygx74nhylYwg5ghdUQ68X/52hD+rSn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866154; c=relaxed/simple;
	bh=OCau5N86gZ/JURBL7q7QAoVrLCevofxPd5Z/obydpYg=;
	h=To:Subject:From:Message-Id:Date; b=MReJFTX2CICAYhNyJWLY3V5xUD/hF4MOu90dM2v9kLXuUyu+6AMsDdqmo59ymrBa8cRDoW5cNhUvuDSDdy8PU2DFXTbjt9GaOfEDmNnkkmWI5ilgCCxFU09e2SVTxI1fEWMv0ZIr14gAuFoV/VwQ53q8GLLdFq+YOxw3cAwRcO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uejGeMVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uejGeMVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725866153;
	bh=OCau5N86gZ/JURBL7q7QAoVrLCevofxPd5Z/obydpYg=;
	h=To:Subject:From:Date:From;
	b=uejGeMVRFSvbPDt6llbRrS98FuSSkVcVCBQC9/qxaneN5GVnvODg0E3RPzMRmBcmU
	 LTsanFjoRDTSjLZcNLo9dCWDIS589LEACcpIYpTSoyNoCnMAz9cF/Hb2CFAxiwN4+a
	 0WnwBn5DZ/7TB94pyCuTIlcME/Jq1JfOBYb/CrkjLLSghtQjgjBc6vR34wfVub6G34
	 JLDYDv1QJ3MBbxJgiERUh2EgPcZ6Hmc09YenXdvD3r5wSlmDPmAIBhNeWB52qg+M8I
	 6JOGVrufhWxfLOBbQeK9v7fYHWLZ6oHffhMvn9NVl52do8usBhF4g8v1BLJY59U7Vr
	 n2TdPti53e19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B67ACD4F4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172586615360.27441.6867342937996512709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e44413f55686f3ea1e81441d460abcc0e73af1b070403bd54d1b5308263ed1e
Date: Mon, 09 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725866153

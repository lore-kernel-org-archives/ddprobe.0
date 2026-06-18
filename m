Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B6E3E16A5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781808394; cv=none; b=iS9rgXLObUeFC/UGJ83dKSde4jAzYqg0g0ZOEZDeTmS/8Z+UP+lkt+ztY8p1Z/RutfG07TKDB/K8NG5Uvs1kFql3C5FSuUjTyaljv8WmrDiMs/qfbNIwfY5mfiw4q+GHD4JcHEDtRsVddYw1dFN9JzKadVIc/PYI9SM3smJ+d3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781808394; c=relaxed/simple;
	bh=2Mo2gTGSQN8jaGpXLB2dBOimuwNGtfjAmrGLRard9qg=;
	h=To:Subject:From:Message-Id:Date; b=B+1K1ENfbR3YbAZ58emAlrqNJrBuQjbXe6cLAF7WqR9oYuxYXyfBRo9/RCWywVyo69hsyi3eBWSet7/Co/izcvQv5O0wcX+pKCAzT8vehSeU+fneDvBwjvHj8caG97JbWyL6iLn07IOV4VxoVCxg7lZKiaDClz73NAKt92ti0HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwMEyZwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwMEyZwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ED1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781808393;
	bh=2Mo2gTGSQN8jaGpXLB2dBOimuwNGtfjAmrGLRard9qg=;
	h=To:Subject:From:Date:From;
	b=gwMEyZwmn8DeMBhlDt7GyUbmIeefzNf6E9ptP+rhGISzoERw/0a6ERF5BJdpb9Q+L
	 GihQ5JDAni1InWT2HA1GQK9xlIleX+eN4fojdwldWx+PpXn5OiYdidJQOTzFj1qhKl
	 oBmse0ebpS8muU+26XYYN/0M7W0VHYIeDgQi5lh2YKsFmzkHi+lZOBXdvlcDyuBkhL
	 kKskgVT1P7/tcKXeTcNPFcr+16FB7iC92LUvICrkWoC/9zLxVgClehb9ubPk59cQbw
	 Cyuf3kvAkgzTCsgT9ofBhYF6uYCdvd6DUWfllKoFuDvUYAIfDotMUqYi1uHAWK7X01
	 fHfNIPbk9KEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6DACD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180839370.6092.3051926382529826078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b27afb5840b058b763582db2d9e057f5afeff04975b2413a4c5ed66950a3ac7
Date: Thu, 18 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781808393

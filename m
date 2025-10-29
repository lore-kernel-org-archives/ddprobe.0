Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6E2877CD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745794; cv=none; b=itqV8Vk5ByT6oBtwEVvpzC9u3Yuu23sk42ym/f4vFEoU6REGQ5GPMWxRZR/XrhI88BOt0f2WGOcQYR3VYaWJLJJA2zdEAe4oZ67DvTjaLvjsJmx7fdVwI9wIDSnv+og2vpzx6lU/g3qhiBq7yT1lscBdou7EBxif3O1Tj8oMZvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745794; c=relaxed/simple;
	bh=URpiA6xk4uBbTfEXTHs8etd4pPUZ+cjEPoyJ4cWNNX4=;
	h=To:Subject:From:Message-Id:Date; b=Z52mTYyKQgqFWLANOkDOgy+jSHNXO+cRplN5gph7TI0YGmbIJmxi5PbRyQktFo7dIhvjLF02235aGy8sTxxHveCNX4ZNBDYFKXS3dQJuX1L7dIyKeAJHNJPPYXBi7qO41CMwihEeOxqCYoAgVbxPnKMEQ7lZDtXwQ9F9hSQ11+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3ng8RM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3ng8RM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761745793;
	bh=URpiA6xk4uBbTfEXTHs8etd4pPUZ+cjEPoyJ4cWNNX4=;
	h=To:Subject:From:Date:From;
	b=p3ng8RM96Tqu9Vz1+wz6M0LvboJa4w9znRaEdCNHFtXGa9oD2BXZTxQJ4tK4KYCVi
	 tYna6ormfGzbzq+6n9X2BddOgz0sektkXLnbfBagLHWOuvsnwncxMaxe+37lQzvw4w
	 V4q50DWM9AgiPFLRsw/lr95TiUUzK0Kmt+EbFtU/00xMsv3maxbCN3N1UY1KkS6y/d
	 UM+MpHnKQssKewQ+tcgDpSeWsgfZ+cJw8DqJ5mttHVItxV6SnSyHJbFd0n31j+dymE
	 owqBDwl9iXFOMfLn7VYSZEI8upiHBDNYAMZ18/T2KPGYlf9qMZrZTU/38nyixmoC3p
	 /PZuILkBfqA2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F619CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174579357.29440.3633053230207202452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a658492a33b0b72f5e5e8837c78bebb350738fd52eb9a71c3d44d86c4fce4aa1
Date: Wed, 29 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761745793

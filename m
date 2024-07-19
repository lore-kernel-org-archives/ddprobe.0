Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F228F77
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721385954; cv=none; b=WsRULYpi2F1Ig1+yCq0Otm6+LP11i1gas/v2t1CumttUM/9P5XSsgqwMF3Jv8l3RBXrRdJhDR5srhagDP9ZwmA1pOJi38uyaVL0h5DVNJoC1z9B4m7ZEMI6Ye6/tUlkFM5tUS5fYS+G7aPCcCHFRD+ny68o6/LIaSWLKPnaqfLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721385954; c=relaxed/simple;
	bh=F2o+uyNdEu19FbtRCbcQ2fklX1HBvByywOq/m29nxBY=;
	h=To:Subject:From:Message-Id:Date; b=K5wCzKahGsX0ZlKWY9WTF/A7GVzNCz0PKo0LGzp2tB6uT0TA5Ev1WrPNpAH2Ke/LfG6Dx0/7mY6XucwZxg8leLHVM+fPm0fhBAwf6VmvMza+yJA4zk7bbQpX1MlF5e6mGFR0In1kgaRJfMX5h+S2R5h314jIbMYW7cjKb6k3CSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec35ckQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec35ckQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2318C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721385953;
	bh=F2o+uyNdEu19FbtRCbcQ2fklX1HBvByywOq/m29nxBY=;
	h=To:Subject:From:Date:From;
	b=Ec35ckQMKy+qjb1kxcdK53LzMa2fDc/9BfVhsdDCIN6Sn0qJt+yV2M8SIYlP5+pSF
	 5c8TqC5wInhUBb3g+HEGr4gFMAyjyGpHUINOyDoueS7VgQWf7y8BPcEvMKNRPT5vwi
	 RVVRmZOBxhuMSxkmpWzQ605znS+OYt/6siK4I6yKNKQIDN1f0Wk+a7vfbDm8w/267+
	 ew5INh2/TiVFZxpsaXCuLgV5n7wTvXVSfFrO+wCTl3l+RTa9a5m1T/s6QTJpX57Kkp
	 Qvo6pUn64QgiP8SRbDGQIimA3SwhpzY+CMkjAAc4AY4G4P3lOtWSoIzQW9WxtiNnpa
	 sLUmd8KSbHOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C245C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138595360.9795.10296830966126064172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a894fc2f1c160097077ba8593c09b8b1fc1a6659f755bf7ea895c129a67d1b83
Date: Fri, 19 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721385953

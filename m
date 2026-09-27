Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7D81D432D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790541034; cv=none; b=p4hkfHsjLpqeYcqFOUi1xs1AzWzfhI4G7z7nEKCJ9wmj1MMKyZvbWHJiseVvQSxrEAXhzoQDkrdqOIJu1uyBlU7uoMJGQJBmTF8XEjCKfit+rPc1U1sVIKiCmxLXHy4JojqkKFq6Qv8RFHtQ8FSoasWUQp++DQP3QRD1IB6FKUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790541034; c=relaxed/simple;
	bh=LEhtGY65AbHiRrxjA17tudV42OT00ual4xoPN0QuAdU=;
	h=To:Subject:From:Message-Id:Date; b=GcBjJFOcUbssp5fPfLXkF6exhxQPGcsSkI9CVrTqRguCV4wRz0JxWG/RVKDXvFSxt+H38E7cKmI/Edg8R2o8mUOMVTr9XBXoky/RK20fWEapMQLUn+JWN0emWG1uSMe7x2yuJS4X7c+CLXdBqi5H5gAsmSyZcTAA9Jlf1T8zK2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbRnT9Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbRnT9Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2633C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790541033;
	bh=LEhtGY65AbHiRrxjA17tudV42OT00ual4xoPN0QuAdU=;
	h=To:Subject:From:Date:From;
	b=hbRnT9Dnr/uTF7K0Ehs//5mudGwxbwD/N91mSgEqxfesGB2IikAvLdbnw/sAxh4oL
	 557hqKllceKa5yWyuFnvbrcPW0ZsBZPl6t3h+HZtgm19Ag0gWoP5W77o6lyzgVV1Xy
	 I/jmRNqg328gl8Rk+Q1rVNB8AXk3zEDE9bNgkhH66vh0YKKI5eyIloUJ4HL8n4VjuO
	 AOHwc5ITF9GVTgsXNvvBGE++BHr4++uHW5dCMPHFS3G1wWXvcY2FQjn9weZ2J8/sl2
	 z8H/iX4kaL7jU0Dq7advhSDWwJWxg1IF6+IXgGrlxA4/bZr4y+qHr8IlJxmNAYRZaA
	 PscCKeeMYAPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE812C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054103369.3470.17470211195709341790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35bbdb78acff8cf4be19ae5ed0a8fb4d13091ed7a0ce6ca38a3a9ff39ada1a0
Date: Sun, 27 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790541033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCD91CCEC2
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730277954; cv=none; b=dYjAdPfiRRaq3vEfcqe/GBAHn2f1yqKqRd4MC22Mf/09+nUlXIrPtySdRzp0fuvA79bmlngf2yRQqVvkeymMk8IIFC/Z3MGyb24gDKmXKqVrj0q0lVV6K6Jfv08A6Oi4+N7JBSSdaqQPczatfJkgRyKc6GLrhfPBG2/tLJ/nmSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730277954; c=relaxed/simple;
	bh=UBGTogTj8oxnTUMfbfspZ+jptAJKC5f7U07MUyUaDYg=;
	h=To:Subject:From:Message-Id:Date; b=qDvtmyeFmr8esg4vm62fTIxPvUpAJm5WyydDUWAUc1arLJUp12XuUM4XF4KAy/6sLrcrqUYmYljPW032PsJAQJGuaofBk+Lf9m2R8K2DaWUkwvmLBKIXanLCnm37O68WPQ/PVqNSMW/h0H0228JXQkwRYtJKFL99ic45QwHlGd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=powHXihj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="powHXihj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB32FC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730277953;
	bh=UBGTogTj8oxnTUMfbfspZ+jptAJKC5f7U07MUyUaDYg=;
	h=To:Subject:From:Date:From;
	b=powHXihj5rA0qgthqa477mR4+twg40TpXZukRAdmNLCgkSvldhKON5ApRfaQDzN9p
	 q/nWlsflWFsJkC5HXXYFP2p2GvQ0scMGitIOEXubpo0C0IIBaOWBAkyApYNGOXYpSJ
	 K9YGZqABy0037RpgurfyKXD47MUPEPdkvcLqLF3mN+GGIehVRqbMYw0rBxVlcm+OY3
	 OvNvVxPGWed9nU5Fp/BMshK8V7/ez6ll9Ff9m/JPPhzOizAW6SLk0h7hoWCfQElPq/
	 SKSUeqK5K/OiSKdCNSMdVib7CZQZqGz0TfHT61Z8RbtJsQGKUWPqBResYiIjWG1ztt
	 ESCW3MK+K2Oog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A421D2AB2C
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173027795362.26081.3078083340475942396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff29a9e0a30521bb8b100a9bef3f28fa6d7dce3d1ef367cca20d7dd01f16d38d
Date: Wed, 30 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730277953

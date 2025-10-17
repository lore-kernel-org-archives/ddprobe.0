Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252BA2F690B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710194; cv=none; b=RV8qTSXu+SiSBIkc9yW5Iwo7yeBvpWwVh8VOcNTtJ94qGsm95lDS3CpB2Zp+W4up5CtZ9snwgEBVHx5rnCnZYKj4mVv2vfgn8nSLIVyNp0P2VPIxM9hRvhDnSJ2xRxtIgTcruNxx0hU7j4Lc/dDvB0017crhp+W1ODo9vyb9QPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710194; c=relaxed/simple;
	bh=Go+ytcgYS5AtDLUZ+FVHE4iHDBLy+yhjZCXKlLa8RU8=;
	h=To:Subject:From:Message-Id:Date; b=Qpybzskxe0wUK92vGBsuOSeZoPt7UoBpXyhqxxN3IAbV8Rc+YKKOeMLEV4meGpOuewLZNT4nk+SFYa782Aw+hK7kU+2MqK0iNO7y6eoKTDB1tdjkJp2va59e5dsAyiSkxWx0mNc5+CRj+hzk7l1Ou1VcSinm4xo0BTOpMqDUNuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYAzvzYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYAzvzYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760710193;
	bh=Go+ytcgYS5AtDLUZ+FVHE4iHDBLy+yhjZCXKlLa8RU8=;
	h=To:Subject:From:Date:From;
	b=tYAzvzYLR3OA/bU+qlfPV3uJNVtUbj4ixnKmWqTHpvVHwV+jSVPveXnQ3IW32UXrT
	 Fd/e5UR7NZQBduDIN5hiPEGge2VNoz+9HAIwemAF6x8hZCNoQuHQIo92yu61CoZDm2
	 KGwSnkKLqpLvjuGRNvdAkUuhrKSWE1jRyLATgRUJNOwPpxIR7XKcK7Qe66eLZPFX0b
	 z44C2WwTiugsCZ2LBBCYKqH0DxUfroAMwf2YxqkdoQ1NK0WxJnv/HnvQbQrdOEabO3
	 kHcuINWqQCbjcTW3D3Bt8aoYjthTafeOseHY/aiRqTicUQjxeltXVUpgWtC8uaBXnr
	 /BeCX7kx0ZCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E6CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071019359.31657.13712451640678598522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c912e1afbf5e0e3d045603d84d52d87ee4625585ee52e4e91d134d1e25ec63
Date: Fri, 17 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760710193

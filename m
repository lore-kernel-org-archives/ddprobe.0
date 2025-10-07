Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49E22E11A6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759846793; cv=none; b=Zl22On2kyIE9mav28USRqYPexDCXs0XH5ddJvZJ1iFgi6HAAVWqWDLDIeDu5TtT0HOJxXoaiA7kJ68XrM9RnPfTkSjMxWcFR0cXlxpb26kS7ebCuxuAeWWbCXfbXZOhbmkhZ2KyqMRRUiVgLwRJt/lUdjXLFwGoZSsxzwB19TI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759846793; c=relaxed/simple;
	bh=AW64xVORb9XKMaoau1gMmvEPoxhMyMKIdx/XyPeMTug=;
	h=To:Subject:From:Message-Id:Date; b=mYgs60ZYFBAOvTu2P3kVRVzCLkG+48OQ+EccCjybPDEmFHkeVX1hjd+LjiW3PxTKY+Kbmh/6mMaU6TMgQqkeTnVEkklnVqNcNau01TAqkiDxYnFSGAkGmB42o0ckxLd5SvEFGn1YgQKsh3+CVN/Gi8sfy3RwckOGuvAhePxYQ9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNBCUMrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNBCUMrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E3C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759846793;
	bh=AW64xVORb9XKMaoau1gMmvEPoxhMyMKIdx/XyPeMTug=;
	h=To:Subject:From:Date:From;
	b=JNBCUMrUgT1EmXXVs8ZwZV4ZzI17+UDpJn7kaSqNw+F4F/AC4KloJsj37JmEbQvmq
	 S7VYZnwZUs4JgWgRZ3eLEOzxODRP6UwztKl4EuR40gSQdr1xSGRRi6/VUR1GQHFpEU
	 CDgmB/kZxQ9ZMeDcay2qgCbXMXynsjyik+2XMirCIkRyHMBmrj1JrK888YsMGHgtli
	 K6S4rAybKZDfav30NW8I2jjSJX4ivKR63Gd/hIHO+06vR8SsIZs+YvIO0RlZxeNvVV
	 BE8hEzdULCPQ+GZOgDyUN4kvU//fI0w6+n3UGT5MIE4gaCcNXPmAtzr/SnV3BY6Lam
	 9Ut7+oY1839ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAECCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984679358.5355.15100519436150819212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9abc8a2f933bd3b250ba77920fe38a6c88f53842d8abad1067c8f8bb45b03f7
Date: Tue, 07 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759846793

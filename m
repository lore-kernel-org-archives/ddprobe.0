Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61736EC7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719623063; cv=none; b=KSFMoUmiNHBu+/WQ70CGN535I4EcprBeawuzNQOPOJFqNO/p+W4vnPfl9oZ6Khu4ingHWwd2D2MNVH/jQ8Pnbj2XMMthDZIbHfMbpbiDyy8ldUwl5Ux+PBu/5f9iUVDTGOR/ptJq2KzeVy+FA2FDIza0p3pKApSQz8OE/oJc0es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719623063; c=relaxed/simple;
	bh=zvrETO+SinEH6yFaTbfeVscXzUJHL/DCrwEVMR3AXO8=;
	h=To:Subject:From:Message-Id:Date; b=rQEpu3QAW9xTH86bu1MaGgH/WwofsWgdHnnpGeRicQ9scI5s5yKLqw4T6bOTijrOXIgxxkA00GC3GrhSsnI0MKI6urcBWPAEMNS2SsLbLGuh9abA8CIXsJSwwjqbK42vS+zM7x8rsyAuIdwsS+n//cvlzZ3J3dUWkIJ+W+NoWxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFuDR241; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFuDR241"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C9FC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719623062;
	bh=zvrETO+SinEH6yFaTbfeVscXzUJHL/DCrwEVMR3AXO8=;
	h=To:Subject:From:Date:From;
	b=DFuDR241ugd9klSyzlK8XusgK7w2TonqOZmmUhjScARvZiJaNwhXV6sq2wJv42fVw
	 gdOaGBdTiBoBUkQP5EDaZN7jdToghXAJjjV4bonMZGzhyvXCf/acgq2NrniCjOlUqk
	 VaXFKyE2ttjvGFRBLMVWzXgv7/1VwMEbxRVfQcHEzvoh8iNMRGg1Fn9vOVjuAv2Ui5
	 HrOES5VA7LyEFGunqjUf4VUGuyObdDd+GmDpaqnSyKjWsS3Lu9Zxu8sHQAP2c1ETMQ
	 5ilSInYN9RKgscv6pSefYvX1u2MFqdbXn4dc6BERJMJTKYquaeod4MIDJoRZ1eK8Gr
	 UjVeFhXtExmzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D4BC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962306278.32623.4626320476952937453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048bd880ec46cc897df99cf0dc4fc1fb181dc5f84b5c5e63a74ec969c7dc446e
Date: Sat, 29 Jun 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719623062

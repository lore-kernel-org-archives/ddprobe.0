Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ACB3BE645
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781886994; cv=none; b=BjblACygjxHR8CP58isc5Xc7I2MkX2uwjiHFns/ow85a8x9qZynxawUR9pFTckP/8IA741kfW9ppi8sgJ279pC2oI/XyEIsKnZ7K//QYJrXj6YPNgh/cYsqnpGOL2eMspjRxIAoG9L+zPrgyp/lxIu7IMR5hsaRZPGE495Xgh6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781886994; c=relaxed/simple;
	bh=7xngFvhb/mRh04UDdz3wWvQLokun9vR4C2ncvyc9tBI=;
	h=To:Subject:From:Message-Id:Date; b=U70/w8ZKVm3CFdDLxjfJyTdugESEOeRRiunFhz+PjRQ4heH8zK/i9pa1POB75UhM9eLglZTdjPG5UlQVNKgGINSk2mIBLYjvF/re8n6+j1lM21nI2D/a0aEg43LQCQuiTroUVOO+QPfgU1hhd5dxPBOlvvYrEKJYmeMzu3jIXBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usp9BYUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usp9BYUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F41C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781886993;
	bh=7xngFvhb/mRh04UDdz3wWvQLokun9vR4C2ncvyc9tBI=;
	h=To:Subject:From:Date:From;
	b=usp9BYUZGD/JVQ0wvE855il2NLX+bu9cAmHQT71lfwLjfPlObqHX1xc+urR0I3KmG
	 jnjsWqzbEnr7e0p2o7DPbrOihFkP0Vchy5KUbFAwp91VgWWV2yHtbr9c7cw2xHnPBs
	 qrzsRGqhhZSla8oYjafZRgGjvls6CfnlLhmxcOckfVgc/GGus2GXRx99JBsLgLvedT
	 YAgWU/FP0fE8dYcfo8oMj9UDM5CTzapVon5t1mfM/6+/3pJTjsTyNrmzjtxDZ6R1bl
	 p37+jzHfAyv74wxpli9s6eNaLVdsMlSt9WkWZehzQgUUnZM1cWtPJj+znu6LVYv2Gs
	 ulEKCo1cm8j9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF14CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188699369.15181.13718769134807271221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d578b09efe7ed79ea02f429a5260075514bd46a3033d88b818919fb33623b437
Date: Fri, 19 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781886993

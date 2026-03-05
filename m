Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1506AEEBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772690694; cv=none; b=Zt5ByOEdixCdvyJmk6pfbAyvM/7LI249bephiXhyZXim7IoR2HXG2ZOrXMRABIBPKvm/HZyxTlsn1BVKVZcWzkdxlH9Q96aHcXwA/l/SbqPuAPGwKOMp95/v9VJParG+vDonvXTOvskau3D3E1WR5Sblwku+bdj1bctXzZJbHDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772690694; c=relaxed/simple;
	bh=4LF+qRULsmTuPuEF2XzHhpaj/8bHTteAWwpyuiI8pLo=;
	h=To:Subject:From:Message-Id:Date; b=YGtzg4L6tkuxNNiu0KvvujrXTj7l/lKVr/pneST3STLp7xCxvCDYdGPtvXd5R58tkvQ6/bp3UiaOAekv9JEXZ8qWNh+wOulCzz35eHcVBBThPKYM1TZ1adbWaff+G1R1gqZyWXHSOZ+NBKTld99AT1F3NK40CM3SZ8dWt8TsFWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDNCCMEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDNCCMEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B189CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772690693;
	bh=4LF+qRULsmTuPuEF2XzHhpaj/8bHTteAWwpyuiI8pLo=;
	h=To:Subject:From:Date:From;
	b=EDNCCMEF5V6g7T7E5jj+3TdJwjnv1nI79kIfGRiFJ7vlnQ/VxL9GsZysRz8nYwYws
	 Q1AH4x+KyRFy0MTgLEqfepYvixvHG4qzJnFrRRJLx8Iuq5xZscerKcZ3+eZBx+x2sx
	 SMclNMfRj3xccgrQ8bHoVNAQCuSIxpdSn3RK+cxiM00FlMKd4hgjLbRK7PqS+Wyd9G
	 kh/mgkpA+gsVmZjal726w4wKv0BBN00gDmbqWFx7z83Euc/WFeLWYK76ZQFXVM43O8
	 iaKkB0FCVmFhkV3vU35Iy3AMVNphJk44WRKVibXH1hStaxzkEFhGM6Go4nuLI+Idt8
	 Lb7v9AAVyOlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02BBEEF308
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269069361.32072.5375230050188354402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a342bf70e2b9469d551eab7d1c8f80c3bd9d11fb7cc48c9189aab450f5f168
Date: Thu, 05 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772690693

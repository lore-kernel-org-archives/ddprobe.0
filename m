Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24861156CA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769476434; cv=none; b=LwtnOtGw1/ByvrfYLyTmfaNEYZ1xL7vXddVZH/HWT3mvIjFp8xUH86oJYgiM5kExuxl3KdSLw8kUzq2xiOIl4jX2B9wn+ty4gNL3q31D9ID18rjmyE71TfTjxw/TRz39JIGNDp4jBX7XO7BqiA/EhpKreT1S8S4W2ENzr/58nYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769476434; c=relaxed/simple;
	bh=EsjC0TL1/yV6ftjvFCn5mOveJJ20XYjxae61ji4i1j0=;
	h=To:Subject:From:Message-Id:Date; b=iByu+e7FhCxgD+NzbqhohK1scwoUXylctuP2cY0smcSXl1Sfbo4uZKZB14BDNaNW6FfU4KRSskfPYHjGUSq29YG0cx0dAmX8q7ywWEzW5tCH1PQl8PLkLV5iyF5/00TU/a66SgvtiLBEpLT8yRCRsScnJiCiwY6Aq7v3OxDfVmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAHsQyn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAHsQyn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64FAC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769476433;
	bh=EsjC0TL1/yV6ftjvFCn5mOveJJ20XYjxae61ji4i1j0=;
	h=To:Subject:From:Date:From;
	b=QAHsQyn2lKG4ClqIDxOF/EJkHyqSFzRg7x4L/WVP3UN8DgtyLBIrYWT4Je7zoJ36h
	 zdpFbyY9wmpTEsf8QUqSd3tOGjGDaG/GyzNUes6geztDSAlXCuYT+Lh0NVi2PzH2uT
	 FDoyxfExjKWxVxP2ftEG0Lo/bUhUTFPob5dsF7cQeUknwlSXUBRHJe4ol9nFsomQZ4
	 mTS2z0EYBx2n1WUuoG4eiEAYBZYfPVoRDKNBoyD4F3nL/pDC1TaFa7ARtugmsKcLKV
	 pVxM2Kxa50gIEwf2wE6IjNp3tRahEapQ/gypNSgn7+5vAUbqhcGSi8w7BAzzLHbJSW
	 biaFCahCsPO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300BD19511
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947643359.22156.16964986585634039405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b266b22325e3c7191f90dc95bbb5a82b9bf82ce45b3fb877d80f4dabdd2e86b
Date: Tue, 27 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769476433

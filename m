Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D586A2E2DF3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771690493; cv=none; b=MCKkPukmiTmUz6cpsJADZBqFBiR+fMt2voqEtPHukXkWRn3nbYfdT7iY15M2R6MOspcqkr9bmYyoISrmY4mSfi/hxLU6a8MxUO6CNbfPhJzJiQNVqS/Iyl76wXkXUh/a23iaaTe2k8dccSfq4KMUzEA58sMvMXv6QPZWbc0iHvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771690493; c=relaxed/simple;
	bh=YHC2oUNJmPUBOBq1pjbce9VKoB4VD3KHJ2xnQljqU0I=;
	h=To:Subject:From:Message-Id:Date; b=cMmNxSk5BxS08odVaSyccCi2hy+5PFm9e1hVfIa/OnOquC4ZibL/eOWRTdE2u2UkHbG2EqWTs3NRWi9qz+AkN/lqsTJC/HD8cL6dPfCHbLb/jB9FCxTWWyT7KGOnVtE+90MIblLT7WvNcf82Tg9VTrtRK2bptlqIwsM/J9N5WA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxZsK0zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxZsK0zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13EFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771690493;
	bh=YHC2oUNJmPUBOBq1pjbce9VKoB4VD3KHJ2xnQljqU0I=;
	h=To:Subject:From:Date:From;
	b=qxZsK0zrxPLu/K5VS7sbb7Fc2Nmeo3yjzUsfpPIydOWZeOE5ueFaDpfTdh9y4nRaF
	 3e79lConH+LUjTBfuLEDv8UILhmgSvSOZrvw12J1ftDEd51GMEAhABuzjL8xyCsaLE
	 0gsJNwDC8rgV9EbztflP9VtzL40WdZX1Hg+iga6ajjwik5Hlzx3RQ5UIZ9FlyVuP3C
	 xTB1hsf72ZxXbLCvm2orCsI97zNrle5DtwXEgb0Fj4l8ApzKiT+E5idCfWEbX4ZI9h
	 1APV0QSiU5ZE47P4uvyfew7TCR6/dECn6AXT/hKe8i+5ADx2Vbnn8dY7vX1yWqIvXi
	 lWDocknfTXfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B11BC5CFE6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169049361.12327.1901078584664472275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecc580d43abb58bdaa004408d034a608d9062dc7b7f0a345ced6184c04e7a76
Date: Sat, 21 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771690493

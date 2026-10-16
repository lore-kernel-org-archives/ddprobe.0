Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCD13783C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792193434; cv=none; b=su7lCClB3TPBojl9ilnzihXDLne9etYeZGd5sKDQldHQGjmh9OD6nISKCUdNkScHjvnQzTosJ/rFGQRxpt2GCsoPrxGVSWhfvo9kddpIObCqixxnXoSRHDLRqAkwRAjTLtQYgRxt3wg03cx4disS9kNH63IAzL1CcfR4hjgO1A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792193434; c=relaxed/simple;
	bh=todO3ZQRUtu9RlM0br0xYukCruTVCFjRn10DY2dn7lc=;
	h=To:Subject:From:Message-Id:Date; b=s5w8zY9ADlDU+mkILcGB+CU9OzS0X49EfdQi9QGrLexecwDU1Ct3Xs/EfFCpx5Og8Jrc8kzM9qdmxuFxmwpqFLSuHDP6gwrkRnJhr8uY2FcMbPI7zUT2o7Ud7gUIxGY5BpltQ+Oici+qNaEUi/oS/62PEWzWqQAgZ8tSWHlkjfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6CEkdhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6CEkdhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4126C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792193433;
	bh=todO3ZQRUtu9RlM0br0xYukCruTVCFjRn10DY2dn7lc=;
	h=To:Subject:From:Date:From;
	b=Y6CEkdhFcUmOsZNuscLCUuYj83KKU3e5Ze/ycxPEjdJuq0lT27/y9YCo9BLCR29cY
	 VzRq/A+QKxyJvmuGkR+Cwo5UMSCZgGQB/D8EPg3aGOkh1I0UUNQGG+T+3ThOKdpx7+
	 /wEQugZl7Q+tsdSHc9ZsD7QChn04qVa8FIaO206J0istiN5SzzOMMMeosA2shyVsBC
	 oQORUDdoXZsr34Ykuts/aW4O6mxGEqo24dAB9DoKAsLv57DtdZYHpx1+88iEpP8DZb
	 vG3qbR8r0vU7SuFIYMV07+xlZB06oJ7q85jRHu27OcBVuEUGPIsgns1346Ls3yVkVD
	 2RcK2EHgYmHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE490CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219343369.9315.597161659997909248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33616e905d8f1996171f4b9ff991b1969a97f80032e47ebcc93b1b76d3983e4d
Date: Fri, 16 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792193433

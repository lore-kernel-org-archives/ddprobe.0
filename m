Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510DF1C5D72
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791343234; cv=none; b=QpDupFh6VG9/gz+8y0cbbQ48F0e3nkpbVNxZF7tS/w5bVRX8vROgK7T99vC7CBnbnE+84RHje6gNZAwOl1OhPt8qslBd7fNE8pbXwGt2SH58wCv8gLcTpuYPH5DwtdlCez2EXh1VC+87KGKpzmvr6BsOJ2V2iit2gigaDafRUpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791343234; c=relaxed/simple;
	bh=3QcKFEziVujIwwG3XPKMtJPlZezDWx6tnCzPDSyLahs=;
	h=To:Subject:From:Message-Id:Date; b=db+ln+VncpO+s9FpPXPIKz6Ny3gXi0fbrpPe1J/TEkplDRodsFNtoZZuUcPsXAnkEca9VvpROR0ky1spSdbESbUwvvkZVpHWpZrYJjPmwDbN+lLTR71z9DIPPpO0J0nueWdSicmTkit9j0SN/5Bd5/cgyEOgEKqGvQnV8+sHUSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBpepM2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBpepM2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73C1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791343233;
	bh=3QcKFEziVujIwwG3XPKMtJPlZezDWx6tnCzPDSyLahs=;
	h=To:Subject:From:Date:From;
	b=LBpepM2Q3ZldQ4zGuhuf9norgqDEoUNqMi7FuxcBr9g3BmPxCa8/qNCs7FOfSRIMw
	 VfHKpc43DwG0Tb5+klutdehvnmaD4pVhIhdbPUO+ioJTynFOVVeinv4w/H5mZGKbaH
	 dpgCheR0Sn3WIH4ksx5CbGMe7Jt1Ki67yjqrFYGb4hEAchetGvauRrRbFfEYHKsZ/Q
	 zJ0LsBPEvKl0Cm1B2iCtgzZMtAHmd5/JDcSVReRGGsuoL820zgr371JKZufvGaaF3f
	 GFp+rpVJpaTpT+Xz9LbvePmmwLF6te5/BQSyxRZzb/gUadY9DiyfL7k9441veUQb4X
	 v+mJ9XeQEKmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD110CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134323368.8673.10645405309518603905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c48d8d11e3521b1871bbbb2769c5759ac1488e421f234c465b8d142b4a94c0
Date: Wed, 07 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791343233

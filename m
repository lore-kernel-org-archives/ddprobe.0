Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC663F4DD9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780466674; cv=none; b=M5I77uOIluKVuVMD+ZqDAISvLS8SgzSNA73gZwUNmzqF9e+mgLRbERPoVZnsl07oQoawYp6nKZRDaBXFF35dxWqFT7pkONeHs9CUDP6vpgpP9flJepi2jF1Zat7v0QObQYT/K7OUQsahIe2kAJtQFKCbighjch4dhvBZqJsxr6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780466674; c=relaxed/simple;
	bh=jp6TmxXHpDvSQWh9O2wdqx5P7MDt11TM7XBxYuiD118=;
	h=To:Subject:From:Message-Id:Date; b=VViQbOWw2I+rgVlgXf9tiBnKq3J/QX9MEwYeCqnkMxbrpMvuhEuCkCn/PVMKZwdPHY9rL8C4nSHGasEIanjNx0vSvv1bsYTK6IZOXZYZ+kDuCmhsvmMDSEGPmG8lLI2umKjbCmMDHyU+Z+k+CLT2vB3bd/bMWAb1Db7+Fhf0UIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHK11K5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHK11K5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8437C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780466673;
	bh=jp6TmxXHpDvSQWh9O2wdqx5P7MDt11TM7XBxYuiD118=;
	h=To:Subject:From:Date:From;
	b=VHK11K5/NnT2JHOfQMr/uSVliu9yUK1USFOBtSy6jYjOCbspJTVikYyimDSwcL/Tx
	 gGrjvAYMDT0yk35rg6E5T2y/c7/z31p/aHNfHED10k5egB65p7Ymd3jRiJrJ5VR7bk
	 SireHE2zOV35WhTQ/UuAoaU/bHf10Aa59PVXOsGlR5eseuMZ2SmmI1xoexxYzzkAFT
	 Ql5BVH5+L7xWNJQ+E0R82wK7VC+r3kRS+hrjxTBiJMea7XBOBMOaxwTSeqKfqowM2O
	 1mSr3aQqIpcu+wac10oLbVlQvq2/QSmjWVAIOkTD81k5YNPqxbedaTvizH2k4voEhZ
	 o+JQd6uXOOhIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE32CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046667368.21106.9089387282957021826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79136c5c97fc89aaf0baea92cd35b3ae87970e82ad4471a1db4e1639d2018d2f
Date: Wed, 03 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780466673

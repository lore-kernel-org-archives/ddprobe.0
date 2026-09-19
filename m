Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAAE29B20A
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789777834; cv=none; b=AY/hyDnYY/0TbNNUCgB5rvSpo+ae1LpwnXg84YEQG0EYdMaEhWG6j556EOWGKsuQGQomYxWq0kQsmJh0/REAoJfWjOhD9Mh1nkKg8sLIUSlLZ1he10vvUwjBLyZQqgOSGXmDqtC2+5uyJzmYv4VgdZD48ci79YHcVaQmzurhKPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789777834; c=relaxed/simple;
	bh=fIdxzQV8Qxpfnt6ul7VQBdfSG1pB6iFawBs0s0UPkS8=;
	h=To:Subject:From:Message-Id:Date; b=rC0SI4Sly6FB9gWZlTO3/LbVNhhoRvFuSapdBEsf97NG3pB0i7eV8033W5T23BwJqnZHCIHtzzl81iS3IdDkeJGc+2weXyEZhAWbkGVoZW3Qbma7IPCDXl8tPINA3AvLO7/2CkM0/+IavIDTvcu2Ajk8xshTtSDGvrfHAOFsq4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOz+dr/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOz+dr/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D464DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789777833;
	bh=fIdxzQV8Qxpfnt6ul7VQBdfSG1pB6iFawBs0s0UPkS8=;
	h=To:Subject:From:Date:From;
	b=cOz+dr/YSxS2sBqYPFbk+p0H1qvKIsc/R7ou513pxukrx26PHwwJyZ/Lx/UBdU7r/
	 TISZ8fASkMMp0prOYrAlo7gOWLN5b7ltc+x8Pa+JSDuZOdnt4YKTWnQkVhSMZ+9KbZ
	 w/slBum9M4qXk8F9UV+17/pMchnffkSzPV3j+LbuRkSN47ceFWLi21gLkn1uDzYeeL
	 2PWgG03YiT53ZkGDki8ImVqzXR5ILDgGSz+ZkNS7/CAJB4yEbqwQI7/FHam8pVYvLT
	 /4x8f0ErauUiJLJ1N4w25IvqfaxDDyi71DPkylELFv2cCQ5CUKKm0+QK/7kof+4m/N
	 SOrOd18XwuJNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AFCC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977783369.24347.10110825235490546334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55800ebf9f22867a089059a5fdc750a1ff9edeedcd988857646a8550137fd44
Date: Sat, 19 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789777833

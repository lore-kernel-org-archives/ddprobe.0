Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3987B379EF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772434494; cv=none; b=EGdCkYoLW/LOKEN76FiV7tSzKq4MqpA0Tzhtd9I5PHfwPQP3TDnS/rPb8nrLvJuqbdiZwiQ9nVwpAIomVh39+1k025BB8jXEJ9UCMRHZZigddb9+1e1xB17ZW8XgAkasdYjR2AzVoOGypKy66ZyMSDE2uBzCG/TyYhVZ9Ib1nw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772434494; c=relaxed/simple;
	bh=slotN9FGaudeu3i8KhP1rE02qQe7APXqj3mi01BuwQo=;
	h=To:Subject:From:Message-Id:Date; b=tN/2IwN3QJ9AFblwqWhqW1g8syx0LKPPnRRiN7MJ7p/g3bbzSmK3Rqg1nH2Eb5KVx1DPDvgmVzuzx7ErYDlPsqFwaIPZEGWNsQLXDlQ3oM+okkRln8urIpA8j2NzyQjhxCgH+FJwaXCQ/pBvvgRZrEz5Kr9whVMs0/QVe5NWEZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bgs/kSzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bgs/kSzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D1CC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772434493;
	bh=slotN9FGaudeu3i8KhP1rE02qQe7APXqj3mi01BuwQo=;
	h=To:Subject:From:Date:From;
	b=Bgs/kSzR3ZKC1JCuC2XS7p0P4dU8R0CFNywf1Xal+p6+fJ8wm1WgsZXa/3y5tIPTE
	 8vhOm89MRQb6uWpaDydcbihsq9AEhDNKV9L0tQutphuMnjULugKJxGTstSdU/08kMK
	 QL3CcASXJd0owO8pYRafGQx09wgag1vib6f4aOxLdDaIhTwhVWGai1h5xQk9fPuigu
	 5afni5b3kuaKVfvyLdD6zFkH8hUXtksEE87uwO1NhVt1pbIEwBx8WRjQXhew9ObolX
	 Y75DcLoUejJWP3IZiq8Vj1itV4UcgoBvKjAbA3A5cFwco13MXhgoh/ZE1TmtHH+F6s
	 kJAA3Uzk4d+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBC2D58E6B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243449362.22390.12044184806503002638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60813601b166a54c34dbdcde4adb0d810db6e66f99864c675a8c38738e757f5
Date: Mon, 02 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772434493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32425158D9C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724756754; cv=none; b=YwIW/NrX15qlS7Qrh8ZsXesE6yvdDQkKVPGdclOD++8QUJlOPTeOLhR/5D+CtBMlj5krw5D6QN1VV219d4u8yuEpIknSSz0xbpNdEA6bVoMZAvhGNP2lXLt4du9Qlx/S/bP4AMGIz7Af1tfwg9ROY4Ng9ZRZiQwBBfH8NvqyHU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724756754; c=relaxed/simple;
	bh=qBpRk8KESc2s1XkTORkRNfGRG+Lx+mv2I0WVMT7MlvI=;
	h=To:Subject:From:Message-Id:Date; b=AmT1wvEJoBHn8DORY8bYH1fBLiS/67e1Pw5M5rnWlHxdTvV7v+HWG1j3lV47XoLOMAzt9a1eL2jIS5tMjFfY8zEb0yq5P3F3H/fadUKAA1RdGd7P5eQhOds2msulOPesvcH97mKY6YpVEpx8GkzYUivt9yaHz5mqxilSe4TnFOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMIWizjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMIWizjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA385C8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724756753;
	bh=qBpRk8KESc2s1XkTORkRNfGRG+Lx+mv2I0WVMT7MlvI=;
	h=To:Subject:From:Date:From;
	b=rMIWizjko/aVmRdXBgoqI/dqBkREhZCuEqlyXqXh/xkbi7F8NhIYIBzxQWbAlr3ID
	 +sftsKQz1qV8CY4vrfzeWrDRoUBpjKE1DMOJQAkgLIIuJfTZH7xzquJLKMTHExwk/s
	 Qy5yZW2KNGrKQg0et//cN9i3fIc8N+SThC0Ue5+JEG1a7BKAn2Rhr9GPIfMC8tHKTS
	 PbpRB4TbYRxXb79y45OisRJyrVE2SAk79UXEv1eLIJBuiMywcKYc17r9A4RbZHi11d
	 l5aDAuCGyXiq+NIU3iVv3wUkzhE7VkVvfntYZKtk84I9MWK2ArO13gaPVxoklVwwp/
	 9vVa5pi4YNjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A030C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475675361.1045.4014698908573193271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ee081342694881954222682ed928611fc35f4a8084b0453e1093718c51a018
Date: Tue, 27 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724756753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753927603F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749150594; cv=none; b=dptKlx3P48ykjHa2HeA7EUVrd+Vg2WDaoUrY30RwDjkRMzrCXdrPN5oDrxPWraYk//AcxEbQoNBzx9RcRaR15Khy9GBlvvXqGPTMJjmQ8oAXcrMKZQHOKufuP+agbavp3VpTZ2Wdr1ES2DMIJS52PSkw0WUCU0YjM1EMycTWdo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749150594; c=relaxed/simple;
	bh=f+XAGN5ogNEGEztYECjd1he+H35r/SdtgEZjdQInLGc=;
	h=To:Subject:From:Message-Id:Date; b=U9Kj2iL+uzmT2H5ZkyQ3zUtGGFsSRWz945xAzamYcVLVIJo6vtdGUIfDjSMT1XDUve5X7m9looayG6/ThM851c7xY4UAir0GJmFVt/fUzUAZCA6vS2zv5tpqWdT6pWkgqy2VnG/cqXvzpejVasMXys8PECuhjE6m9qJO55jGjhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTGaRXyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTGaRXyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A99C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749150593;
	bh=f+XAGN5ogNEGEztYECjd1he+H35r/SdtgEZjdQInLGc=;
	h=To:Subject:From:Date:From;
	b=JTGaRXycccuH88XwiXhvraTXKdKcPU0dzNR9wYq7km37dwQCNm6elWT65IKuoI0ja
	 BeWDLOsv+hFkLuO13tINvmvXjjdUkLlDtgTU5oHSWuENlICTEWBDFerOWK7FE+FRMG
	 hvamv/30HxtMdfrigtjoPZvJCsbDChPi5U+3iAuIAfhVfvsB/k3WiTpTJrcu8zow7p
	 7+Y2gHZEzNKIeRjdYnv04ZlNQ/aesVpqBesnGGmAOrlHc1V35ownOv6dzfsNMX4gIV
	 Ef93byH0JDkpCK31B8A7XRKzUWDYoVdtTIg0J2FYU/cUMS/Fksc0/GVrtE2vocNggS
	 bxe415zf1U2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4FBC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915059362.15048.14155685745938654635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b78f80696948de4872fd61af35731b9dafce3fb1a014a3c0ebc76bdd5d7c906
Date: Thu, 05 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749150593

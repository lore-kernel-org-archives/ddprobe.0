Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E125DCFD
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750926594; cv=none; b=TChMfAa53/mFmmKkq8Vv4ErYcRBn1KV/UYEmz8qyrBLu++td0eedrftUkpTuWq/iPQwsDJblQZZvPO+QTYRcqjNccD6b81OO672y8uQnTfSPdjaC3Pv4db+oN/mt4m2Dv7pXOUPx5ygJrk8q0i1CZwdydks5drdL3q+QtXW45uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750926594; c=relaxed/simple;
	bh=yL6qnOPgPR+tvqcw20MRCNJjoYOXGEOXEG0KgpW6UIU=;
	h=To:Subject:From:Message-Id:Date; b=OcQWZqp5QjKcJAwxUug4s+Z7q2wHTKiSAG3t+Nep698W51TjnixkeaIaEKCUUPThLUhm+hQOawPCu/JM6clcuqo9uR+z/UnupyJ9wHGb3ss+HhycSRc5F/Q4RlXeDLmgdmCIr6wXgCRC7q9mz9dKf3X2/Rh1shm6lgn/TY4RKbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCfAphG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCfAphG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1030C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750926593;
	bh=yL6qnOPgPR+tvqcw20MRCNJjoYOXGEOXEG0KgpW6UIU=;
	h=To:Subject:From:Date:From;
	b=OCfAphG4nsOIg8hc0VWHQ0BgW1C5OENC3SkBiqRvK2nggVIgr6EpA16jhxDMez9Xw
	 4Ya2mI3DA8lwaahLP0bt3gbLfYxAkjx+GY7JiBg27ydonm4s01Jd6CRdHGVbjivgeQ
	 tUJBkKeWQyv/ZimF0OxEA8hFzb4xue/wv6wPNYQzr0EqrapgIVPBFnPDschLmWJW/1
	 sq/EyQaVfRbmQkWFuoy93BfIUMp1DogmJeuGW2IxW17/H0vsCRvd45niGwsE9gsxfl
	 z/F74DRzjdLm6QlMH6nsnsOJ87sQLzoMCyf8PH/sYoanmEQzrdxChs9ZejTCa24YzR
	 Df3UvzX3+JAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90102C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092659358.11688.4340895475675385742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3e8100cc288a10a33e3d1eb2249ece7248067ca2c5225f24d9ab6bb4554aba
Date: Thu, 26 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750926593

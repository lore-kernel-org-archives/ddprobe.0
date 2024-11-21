Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D94207A
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732173954; cv=none; b=W7z/WodlmTIsed+zHaMFAsOnBTYUDKUJiT3ChpLyrDHdv5uUDp4PQLf2/oWPurNINOedPP/VV8a6nTLddaDQzWYDWlOEB3NLwx/R2N7wozPev1+DsJATlGYU2xufottg9q9pp7SPbjcotQ9B5Qc9ESST6GOlXktqapanEAM5l6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732173954; c=relaxed/simple;
	bh=oyIcgpygFBQrVPIBxc0Pjv4HfOyZ7mglNiAVca0/Hkw=;
	h=To:Subject:From:Message-Id:Date; b=QIG/8rwF3qKblni7vla426hoZQBZQ4DQqNajJcJj2fG2f112IuImp5hExlAJ2hk9KWoolkuMLqyTRqgylCCaseO7s62rmqF53ZbVRRnjE5wBTKfiDnZ2vlbPOrCPeuH2aWb/33GttXGje+VUd8y1nKIx+qHD0bE1R/Z5XjHYDiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH8j2H0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH8j2H0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87F4C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732173953;
	bh=oyIcgpygFBQrVPIBxc0Pjv4HfOyZ7mglNiAVca0/Hkw=;
	h=To:Subject:From:Date:From;
	b=EH8j2H0oLaVHCZxoAP3McCq2uebroTChHWDl2+NzCA00mNhXU3Nov4/ZcmnX7IbmY
	 WbYEGDWAJSYWyqoozR0rruQy/g0qLKTdloox+/jLJfLh7PExCN5gDqiLne+Gzn2N1O
	 tdTFu06eTDaqtP67HRPUZ3TCCqanXLJG1bknKrg9OKFgprQAXWDNp0retOViWqrXZQ
	 B1jVZcStFJkMi8zTTqgWG7d9dzLI5lLWl8S/FRd34buhULxNOGorI38wrNZ8w4+e/p
	 hafngsWohlavLCW9is8JgDbzFA3/PYvHNPOB6fzVT60sL9nKAVJjBbQztF/K7YgLdg
	 gz4EVUYITJ6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443BD75BCC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217395359.8328.6355889535089709978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203ecd7163f221e9d0ed9167fb2ed0020e779af9b100d90a286fe9b3a6d6daf5
Date: Thu, 21 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732173953

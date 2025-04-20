Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D39AF9E8
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745191194; cv=none; b=CCXvOZv7jrf6i4zPaBJp2UHf4tB0BXrOPEIotEHS6GfGB4DYR6HstBXdtBx+aQYufvw11fSsx5HDVg6JFULYrRzPEqvQvE9PX3BvEOBWvGIGPtcjiTDJ6cGSjnW4/FFaLZbKvNiC3PufrO2GsjjuoV0ukdq5it832lvel+x5MNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745191194; c=relaxed/simple;
	bh=LqBK+i+WK1K2SzGhkmiobvuUwvlNSFXkDywNU3qbBGU=;
	h=To:Subject:From:Message-Id:Date; b=QBuOQ/OWvcIsK+snL2JNwT872QqFaEk7PNRDcMrZ94PoggpLZ5E11DFhcTkLRVDe2KFWt6uTPNd2L6pBcflM+2zNOJo6VK5xfDNw2CrHIaLTR8NY4V1RjBoo/67N/qQydgmJrAVRub01lFYq46ay4n3KLyX36YZj1Sq2W2vKEW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYgcF7g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYgcF7g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C657EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745191193;
	bh=LqBK+i+WK1K2SzGhkmiobvuUwvlNSFXkDywNU3qbBGU=;
	h=To:Subject:From:Date:From;
	b=PYgcF7g6Das2msJlnfyFHnIENfwOTESB4HlDDidMZOb4eIlHYyRJA7PH6O5E8EGqu
	 jfdJYQt/xtkGWEsLAEtQsZaVQeKVASF2TrhfJyb9OKmyWDcUDG/9ppmSTI/DOSueln
	 WQrNfxt9i6Y8TNRwkG0mzA30WcKxlSzcf2mVu+aQDqAgRsttsIImDUYNUVw537iJCQ
	 ULT0+fAmq/qrZ5oHDw+8n9TGsHLAcAovbVMej7Fi91M1U9qQsd1CkC7Adb5N/NXAZT
	 xnEWCVLcGMr/z9A3nNOqcl31Q7tv+32Ajb7qQNh8YuFZLEPe1Da03Kylw38kBg3fDu
	 oP39C1qDV06Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B4C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519119367.3218.2120045884876427906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d2311a75e0f0aad4eecf88c0c6a5ebf4af08953b62c25efb16c34959b5a5ae
Date: Sun, 20 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745191193

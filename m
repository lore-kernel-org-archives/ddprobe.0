Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B02036EC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747967994; cv=none; b=Ayj2m+IhsBPcS/P3rV3T+2dGnZM92vji/QyGHAIQ35gbGpe7NFioXMj+q/KsGnZ+02M5O/KlCR+ROzD0HAN+hYSZxvYmFdg6ibUpbebM67jUREvjhzKDF/8QSAozWubE17HX1A8yHvrbIBliGMrVyWm33vlsE7kADIF0pBxvmBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747967994; c=relaxed/simple;
	bh=fvcy2eZwHBF8B3aaSEHIjhmJvO9KQC7YDHyShX/uHqg=;
	h=To:Subject:From:Message-Id:Date; b=DoHTkXVV/xQh7FvjMrXmANGkmI0j6aZlJ+YMOXberEEpGCDszMkhqRzV3pTEekF9Y69ZIh8fs3sUsK29XD7NnO8hNfEZUfGx9RKfr54C1mnWjV9ie2Cc3aWEW0Ssu/PdZXHPub0IUrypLHBeEIrhUpR3SDHVBOZxMprbF2Fwxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEPWwxb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEPWwxb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5884C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747967993;
	bh=fvcy2eZwHBF8B3aaSEHIjhmJvO9KQC7YDHyShX/uHqg=;
	h=To:Subject:From:Date:From;
	b=bEPWwxb+MHyRxB3CPSrFFqwW/cQafJbrb53OaqVROPD+SUObnJrqe57eJZQqD9ZPx
	 UxRe6ERFJMvAyamo/9+6vlLN3+dYvgYGMQdeWeohfsxBIowchzdZF/+CsT3rKLnmpi
	 LuVwWCqhQqhDRfcvHXKV/ecCOCRupgS3ep3w8GFBbfN6RGVAU3pn1g/w9k8z9C28ml
	 7RnAwC76IKdwX9tg4MUvxf06DvRBrGKMxswD+qLMTMQzLr9uQi3UMF0ln4kkLUtpZg
	 6cHX1F/8HgcsWtYPomaxR3SeW/Fefk1Mrq9k6pDqiNo7EdEwWQCxMvnm5X6hnSoHQr
	 jXys3uid2A3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A2C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796799358.9288.4517456408804773978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99acdf83a9b143343488225f9939c63af2b74438323e2e4e46acf1fb6faa6cb6
Date: Fri, 23 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747967993

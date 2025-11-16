Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD1AD515
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763269254; cv=none; b=Uf9/BckI7JnTZM4TjIJ8gFmPn3ccMRSjmcTl36TPB5DO92tQI3Jpf4Oc1aQHXTTbX3b6Cp4Q2mFVWLceC4R/YO3Np+7TnygHdsLX3SIyWE7TGcP7ylrTtnVjE24iFtAGlKbesy4dJdyY8gC7NV3/327HjCcziHSY0Wz4mx9kSuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763269254; c=relaxed/simple;
	bh=Nkky6UNJ7LOMGGq3X6JNMAxdlmfefVvnikcDlnrE4kU=;
	h=To:Subject:From:Message-Id:Date; b=UfF7or8ydnlJsb1VKk5GNUgmY1EEZv4ASM5OLcISNrD5AePMe8piefzvESsmwVZnAb/XI1kGOh9Fvt+Ecuvzu1tzOjcFQ+i6mryQJBUbW3c9AsFVXUGX5POxBSKdEJZkhNfHRMqqoJtUCTmTEDEZT4Wmfb0nEKXU/Hc/e8n8ZSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMSmNGo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMSmNGo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763269253;
	bh=Nkky6UNJ7LOMGGq3X6JNMAxdlmfefVvnikcDlnrE4kU=;
	h=To:Subject:From:Date:From;
	b=iMSmNGo5qyqBTmCeg2tLYtA05D6btTmWC7a54phZrBEQAOHkodt2eGCCLZ5sfJeRc
	 cWLceb/aTcK9D1uR4LPYN9EwCjzEaIu/IrM+Yd4IUOyQfDDDL0EiSwx26vq4RHgAsp
	 vimfUMCpHYOfx3f2ZmmAqV+P659Rz4lrf1+DqFGSX9Kw30MlUOMrmfzwbDunxA6f1y
	 xhcJCdNy8NTli2uhfzzstuvANf9yN9mqoMKr9sNkXh9KSvsG1UD3rtiIVAlNyYY9eC
	 ra/RZVDihogKtnsquYdais22l5Pi+jaFv2/5aI4q98a1A4pmw2fZj3P1wLm+5rulgO
	 C5wNhqhHxkeJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A08CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326925357.11174.13329508109592616756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d538437e04f0ed04b83199eb5b001314d0596ebf342d37c7191ddb69c6944c6
Date: Sun, 16 Nov 2025 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763269253

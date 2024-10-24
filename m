Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D81D5165
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729772754; cv=none; b=u5phkHLLIqGKJYqxbgDwc0JX9H/xDT9dkQdc6xnVA8nfvsBaH5BvO2UxOOYfaIbF07ljTL7tek4SA+8eDQp0fVPyZHxsgCBJf/s/i3w/zoNiuaM2xXptjV5wB5wpEm8whqZMaICcdhxfpsdozlpM+mnpTACY/lKj4H0HX5H5bj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729772754; c=relaxed/simple;
	bh=ZnI9aLkVBbte1kpNFKhdYjAFuKyYh42wkEZRqo+jo0M=;
	h=To:Subject:From:Message-Id:Date; b=i6XgwmYkPRFtUhbNPe2m9RzMeK1wamW72U9+JNVtIlHjNsXg3j3IbxEoxW3EWDclrbAlmHnOrNxcqQjRvJ7awI6mbVpORE4H1ZXWHCgFiQchJ4ymQRF7uKkfR3FrYecel+d+VgQSsH8Z0n0v9SaB6G5h+agL4nyg//RcUlZaUKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Olrm8IXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Olrm8IXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05DFC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729772753;
	bh=ZnI9aLkVBbte1kpNFKhdYjAFuKyYh42wkEZRqo+jo0M=;
	h=To:Subject:From:Date:From;
	b=Olrm8IXozHLHBKFRoT6pZCAlj5NfK5uyvJmtZsvmzpId7UWV4Qh9iXp5WKqJeaGfn
	 EJcDPreZshO1/7sFHLLj57/sSyazRiU4InqxwNB0sLMXb2W6WBmPMT63bvNG042TBV
	 iureFO7dodKEUIrY7luBdtNq1sGO/JFtk6XCF+a6P4FlEK7lGEdjQ3QfdQWeJd5UwQ
	 +RDXFAKLu94Kj+s9Id3EuLYdn8m5P6ls5Lr0LMoU3lnR9ChB8qIiT22u45v9OLaFYA
	 bYTnPuC8yCqt9qn1z98pbnLlNNv9vJoHqi/Xs1UV3u7Um+0HmnbgnMj/uwoWN+TSel
	 ZyKgE82Ej8OHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6A5CE8E6B
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172977275364.21310.5312104852128208894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78076a983b2a4a6a4c8abc47542194651d0fca13e3e39d94924fd61549f5ffa
Date: Thu, 24 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729772753

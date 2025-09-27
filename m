Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C5322083
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758978595; cv=none; b=BhuV/R+5pgf0/OeWupRAJhlVx0bg4D1xAufsUgpgN37VfMYE0KCTkFd9xHsaZiulT23NtvEAUAqwUJqSPnKVK5JnA8v5UPKUnfs5Bvu5Cy7L4BacL/NheumaIkJaQ+omMGkDUuglufLYm6LH+ACumN8cLrj9b27nJmkVizeMHUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758978595; c=relaxed/simple;
	bh=EtcPmlRs7J1RWgye+ZU8H9jsW8pEC+naBslxCUAjBxk=;
	h=To:Subject:From:Message-Id:Date; b=ZJYdadaRBuvd4R4vdozhhFDn+GCgTR/sNxuQ4Bd9IYb7RwEQu6WBFMITgmAknj11XW88zCFJAHu0DOK9bYxERYzt6Nu1jQM6OLSFeLH/Eof4r9Xe8cHUocPOwYaR+w7yXQQUWFmrJuC32MAZUZiAb4mTV3HIp9Oi6dz0XsIPM3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjXSmW2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjXSmW2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A888FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758978593;
	bh=EtcPmlRs7J1RWgye+ZU8H9jsW8pEC+naBslxCUAjBxk=;
	h=To:Subject:From:Date:From;
	b=XjXSmW2ZkKXYk1Kx9dYBzXREuf58pHTYyMTjSF278DlF4U6OSIaAkRmZ/3CBA/wTo
	 9+9ahffJP+xCRfKYWQOY7tifkm3vC9+iQLWgIZKAbr0OvW0UtTQyLktnIJaL8wWDZk
	 RdQ5Z5VvL1sgfrjAiWepWfs1tV9TOQg3QPYeP0VwqxYCa+htumWiJA/Ek0UqxtZtsN
	 8IGGuWhtdu7+vbaAQJTNTXSA+2oUe2UjMouzit8Iug0+sFxHDmeg8J/72eVNspNSOR
	 yZd+E23gA986bOCNJSmlhVFn2FYHI5akIOqTVwhbevHQgBroiD3vdpcGNLwNlO1Rt6
	 coQ2w/rL1hbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B59CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897859358.14772.4816214405282066352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8242fb052341e554755f44ad21c270f7b8cd4172b777cb5a8ff35a36c9615d2
Date: Sat, 27 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758978593

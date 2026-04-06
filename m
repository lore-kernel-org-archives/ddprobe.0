Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA0F5B21A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775493934; cv=none; b=Kqv/jnn9ogfAy5d2rXtj1A44UwwTDoPU5YO2+tJPMgOdVqk9chjwfjRAJmtC9yiGqFCJk8cJwi6w7CFPNNIKKZY5J/ZJsMVjnZY0mDV1WO/4Vtpj5ZmDFXagrEy/FYAStq22IlPMYjAdXVRYfOm6oNX0pAMK8LzznBOmm3a6eXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775493934; c=relaxed/simple;
	bh=44xw6uUSMCwHyG+XSCdT5jq9eo9x9xUobpaF69Htsio=;
	h=To:Subject:From:Message-Id:Date; b=q4euSjxls2wM8DXxfwSjSLc403UY4UxcY36sWUZFGq+LI0yxi+7stCujV7qIjuX0AWeMZb/Mod3BCziqz7QcGIwe2vaA9cvxwOdMXk3We+Ctq2Fsm+LEaS7VVNfSU7ABffE6PjJWYOjFl+nulDTXl969Q8L9Mg8zO+IAqj0z95k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUcXwgcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUcXwgcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2797C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775493933;
	bh=44xw6uUSMCwHyG+XSCdT5jq9eo9x9xUobpaF69Htsio=;
	h=To:Subject:From:Date:From;
	b=lUcXwgcPWaSIiw4BvCs7TB0nCh7M74H6hC4ywc6ROkJHOTW07gyUPa29v9FEZNDgv
	 kx/riu9JC3spwg6o5C2f01FiSDPgSCORd77YoamgS3M1K2pMDDbiyM4nsIVpH3ChiI
	 THBbd/HRwz1srqcH6YrOvJ4a2JGEt92dIBZ0FZNv8ny/GRjXdTIpgoUEm7LbP0/IOU
	 tFyfZ/h7EDEd7XBRowHxxZ1sYxNTDnopxQjbBHkUE/UCpup8hAWfFFDvjloSxp2DLG
	 65Xw6yezKwMPiIewICoipnly4kusL1CKlSG8aIWvqtrFpKUD6a/ilXAKa6Ph+lIJ8P
	 vlHUqg6UC7s7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF3F46C53
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549393369.23435.9737349169369963654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e70e296ffb3e3be30ba8fa2f624d5309ce1d528d25fe0facc7adebfb438dc6
Date: Mon, 06 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775493933

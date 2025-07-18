Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EA2191
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752799794; cv=none; b=WCqaxupYAM/wKgB+x+Eypt1OH5p0HMBWquzhoq0QrYkRi9kxua0/Rlyo7nVP6FNXjs1yzeB/5ne6PRt8PM8LJ7VNlevjY7EdfIpDNez3SZDZBMwo7faoYrrh1KyK4yTkhAVXDJipRVG22TjRnlUVJVsF9EdXzGl+6pxIbxRZyVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752799794; c=relaxed/simple;
	bh=pcc2tKEEdLmYeHITpfXD9Z2PXLlTOjrdLvNb4jlvn9k=;
	h=To:Subject:From:Message-Id:Date; b=ponvwJ1fNAJGaqq/YxYvndaiXxdR69IYyPdJYpFpZYEjWDhSWmE/vO5xQlb+punW13OXkX8xxX1hW5SQJIq87qtVm0HLoHfOzoucgIM05prhOZxvPKZRpWea6SuFnl18K04LXO2rCM1RKopyJzqExj6v7JKus98PYDeWfWSmAz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSYQMylR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSYQMylR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06A4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752799793;
	bh=pcc2tKEEdLmYeHITpfXD9Z2PXLlTOjrdLvNb4jlvn9k=;
	h=To:Subject:From:Date:From;
	b=qSYQMylRZKZQ4YML19B8EJ4/BnuKOQ78oEawjRJGuFlMKG6e9WC0qeJVf9dWQdS/M
	 buckDOlUZA0Rx53RnOa5Ei8GMvQ5xt3kcLlp0qh8w6P+o+lMEsHKzlWFmA3UOPTHBV
	 kG86ZqTubxkCKftpdoo2KGnTKyc9OO14QHcJ46UgPeTsxvOrvCG3MuLKTEYm0DZZ/H
	 jN6kFDPdgOVI2cSEbNUhMjzpwoJPWRMiW3mmIfrAvan3vIvdu5elxzrB/oGWINWMms
	 fTgPYaigIPX8AL4R+MuL05VP08zlsBYArgWneaxrh0rT30mzGeZXwuPnTknRqKmeTg
	 zW5iMz3vyYqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD39C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279979360.11264.2128792197104191285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca039a5f84c437f44c265b5515b041f1fb524e9258964fb01a6bf87a517af8d
Date: Fri, 18 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752799793

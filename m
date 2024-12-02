Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B11D63E5
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733115354; cv=none; b=aN+ovWcug4UZ3XZDkBm+eJo7DoS7S1Hqj0Yk+6PwcBW+K7rbK2JFKzIaiK+xtsxkBVCV19nvJ+zVBfr8femOQ7B0jgrrqnaVlIo0POjHJLCZ81hba5LhlqoGCxFvveaKanL3i5tugeVS1MtKLDtBjv7ZdKztjpD4WUOb5SI67/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733115354; c=relaxed/simple;
	bh=lF0nI9us01qnSuQYUkS+729ObAFVbaHAmaUj2wBpLfo=;
	h=To:Subject:From:Message-Id:Date; b=OYnd0eVPIExn3th8+IDBRA7CyK1Wfw7E3DIJnPH3xIcCNxF3pMnvthgq6o0FQ2qubprtm10R4DIwNtT0OmIftA+OSde9C2ZqbEeOSVcuqPIKsWkwXQcLlAbur/WIItlVrz9LALm6eqafHTGFNgyZCSV/iqbe5NAJxPjhqiJLuL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfrJrawp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfrJrawp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C4AC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733115353;
	bh=lF0nI9us01qnSuQYUkS+729ObAFVbaHAmaUj2wBpLfo=;
	h=To:Subject:From:Date:From;
	b=kfrJrawp1vfuPVI1xEr8basFG4DW2SnF52NY7gOGve8A1tNkv5oF3QQMpfXzoD2LQ
	 cGcClMtN8HxQ7nPrHllE9qZ3LZga23ly0U7tZojGkBmv9gg3J+rMLuWEQoA7jSBKbh
	 Ri37DpOdCdb6p+c71ubFfbXPACet5ASZtIJTvqt+Quw24SyFtntlLEg9DhYwEVoB2Z
	 Wv0+mO68Wfxkc27b3S2W80fzFH/JeMBhkU2lj104i1aUkv1JAnj+bDe3xBGa28t4W3
	 COcWv2WJshcw2RunprRTrDtHxTzWXY1rDZlNYPF+K6aXiCWdxq9bpUnmKlbSCmwb6A
	 eHNbh/W+YY4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B476D49795
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311535358.18748.680577390818105313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf397f2c2a6730f381344f1180b2910d62174cdff8c1c7dd214b0a79ed547f00
Date: Mon, 02 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733115353

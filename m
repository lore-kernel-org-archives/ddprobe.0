Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35863298CC0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760374194; cv=none; b=Ug+QNroPzxWH7Nll3UJqK0Rbem1JlJxTQl3ZJZpFva1kaT/AptyTBCdBpJ9M5sYSqyYJEsdey715qVnhSDecCN9YnAo0AjRf6rDYm+8N+VEdjyTFTEmEMj5zz+Qk7Lr7O4xskgVlqNaKdpUh7g6Rbo7aLFDgqX+2NZkgnfe3Wa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760374194; c=relaxed/simple;
	bh=nCGj6mMYDf9HpikO7pfK0X8s2wDLCcT1ZIj1beOC3Ic=;
	h=To:Subject:From:Message-Id:Date; b=b+nwB7JVOYIIfMevw20oQqwxR5Oaym0W4SYFakK68GE2iDAIFX/goqeG2llj75mYhO9+djDRh1Q47W7xoWCCUKOW3w3bB31MGkCIoaiX24v5LFSelGi8k8M1PEF9mvt5C+tbWVP70j2/wsB9yP+t33gTpkbUle6MUWeqWzV/lOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDgv14h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDgv14h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760374193;
	bh=nCGj6mMYDf9HpikO7pfK0X8s2wDLCcT1ZIj1beOC3Ic=;
	h=To:Subject:From:Date:From;
	b=jDgv14h/WuKbbHbEuR/G1wTCNHZDcsgLLehZU63YkjxAnR6akbCyiJycfK6wGAk1s
	 rcq3c0YubfYyxUT7SeCKmVwySrYpHONFASyXGkLUwliF5rjJTguNdN5VNkrzVPRBZa
	 PeZQfcLPpJtKrJdZAb94bORTa2C48FBv1cC3WKo3qhK5Mf2Y5kvDQm08iSWVWLrOUv
	 p+JUcpMTbN7gOrxsHXHjgPJVjEy26ViuWf6aFMGbUnxdPPP4RgbKs74PirJDfcA8XY
	 B30lkXcpNXmYRzoiysMqaJMdbysqfsz2Hrb3WP+NPFy0/AHSXfgf7Pm5AX5iJ67F+R
	 Cs2VLipW5WiMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB36CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037419357.11227.5677637810170631344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b5c5bdb8b3404013d743f9b6b3cf28d1c6862120c3c240c0bdb0f749f8943c
Date: Mon, 13 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760374193

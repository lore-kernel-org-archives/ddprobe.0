Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C929ACD7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770068634; cv=none; b=TuneHOADT/juj8i3ZCeXB+cCL3hE5ocwFpIYwZ+suSwXRxiQcwvkThypjgoLk8XjT4Zmloms+I25ily4jkR72YohWIzEq6M3k9JFmEB2tMKDTrbgWn5GX53k/IZSwB2b5RTjgr4kOJwd2V0yMqAY/byIoXJjhi9QT2T66/5kwWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770068634; c=relaxed/simple;
	bh=xGeqMNs3b825+Z8rOIcIqciZAO6mpF6p8sjOcjlyJJc=;
	h=To:Subject:From:Message-Id:Date; b=dmF4M5rguoLyZ1rS4yvk1xUB6y8rZXP2gzsesr0Vj7thQlnkCqtOmNyWjkCUG407+HklU/HlXhb0MAqlqnpnSymT25XFe2HbFjB5xn6laoY912d2Lj2j8FuvMzMNa045ujaZqblDUfW+lv4EXvQvH6PEgcYdo2VSCTfkDYlrA5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxdM9vXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxdM9vXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEA4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770068633;
	bh=xGeqMNs3b825+Z8rOIcIqciZAO6mpF6p8sjOcjlyJJc=;
	h=To:Subject:From:Date:From;
	b=rxdM9vXWnB90iyGEhSYVkXTKrRWT/fBuXQSB3G0MTOHFzwIG+hsoDheFaP/U49NKT
	 o8brNrHvBbLuuftAmSTrrMfucjfcZQNBdt/Pfn0ieN8t6q8sRZwNX1bmIiXzI8DTE8
	 FglhL52ZCh9Ho05zBS+be8pHO9nyJcrAwibgd+lLcIY5hOy6OjwvZUE6aRHBU9KS85
	 jYuLtmGPInj973K7g7NlZHPVgrDRXmeAfVd7OH84EC57mdziprXD32ozroz7sh3VF4
	 7dNcftAWfNBldlOzRIRLsGhf99MXIkCEU3j6+NOwYZGmBupRI6gyY/rqgqC24wnLcb
	 uCfyjMX+fRU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99757E7FDF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006863361.11375.14146955849492275366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2463cc318323542d54a84d39ceed477c862044be01392ac944fbfd1670272cd8
Date: Mon, 02 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770068633

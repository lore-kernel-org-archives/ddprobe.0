Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518542B2D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787530234; cv=none; b=TLp8TcBg224qspVdEfcoOklhd/pvduAyHAvgt9N/P/tQVSE1CsokSIs4yRkdD11OY1ZXayElx7NYDj6ioNHApZUCbnjGFqg4aGW8/4XuXMB1Uax6qXeopD2edv5YZ/kHnZblMRY5txxiqaG5YjwZgrJZxLkAPoPePpmemJHeWdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787530234; c=relaxed/simple;
	bh=SQ6oYYoFAyW37YfzqkZ46OkQ9V7HqU+QjFgjxu3++uE=;
	h=To:Subject:From:Message-Id:Date; b=i7744jBfbDUmULp+o/ozfYFGr8n6L6zaoNnSrbqBNybYNrKJJOoPxqkmwZbhIyHoF0qs8IL0SlKT8KXFf6WFX1I033PVu+4SYxP6rq/2FEJjlHXUul4GTR6anos8/KicX8gfD+8MQyWF1QPY2NqrahAL5D+2pC5dkRpheo5RgJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBDa209C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBDa209C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D515BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787530233;
	bh=SQ6oYYoFAyW37YfzqkZ46OkQ9V7HqU+QjFgjxu3++uE=;
	h=To:Subject:From:Date:From;
	b=oBDa209CLl7IYEzLv1u/FRteUU1MHPEtPZ9JfOTn6PmyrnVCeXfi9BWvIsYl1UPI+
	 4MWPVzHvPW9joXbsLKuMuPDYoa+wicjZteMDw7sPON26Un6K0d8YWdDPr16OUZg87o
	 hWHCunLOWBQ+Awm/e9vHa19H/+JWtTpIrttcaYTqFLT1aZ7QX1hn1ZuaBatso596e9
	 fIVQ3+mJG7ixp7Bcd9RRzAzoWPh4/cuMrk4AyBE3X6+L3GMoqtQNs3VvBv0cciim1O
	 Y2eB51Ccq3VU7r4hSQToPv8mUoTIIlUdLkOzqKGbkwmN1Tyb7UTsHZYGGlUF5bWZc3
	 fw+fjusrpEsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EDDC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753023368.1400.13664616094946173108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be968085634dd658abb028dafa6758c81f9eb39d2e109826b0934f4908e2b9b
Date: Mon, 24 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787530233

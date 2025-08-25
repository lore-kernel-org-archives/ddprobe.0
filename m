Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8A2F360C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142994; cv=none; b=lAOLyFmPM0gnuX2yYLFX5d9Y9fcTIFclJmW1OfqBjEgHYCzM6feAWQBW76E19ZCHoaNvqSv2RehS1JBm+s/l3UwWSiswr87NRwjumASIDVB7enELCoLnvwIgsHw/FYqWPzSRJq+gm+GohBbrUUDv8kwZ0olztvPA2moD4fxc1Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142994; c=relaxed/simple;
	bh=G0c+jgAc5EYZTj9JWB9y4VOrYCHqheFYQ6+GtDVjU4M=;
	h=To:Subject:From:Message-Id:Date; b=FbOCeuHHiiZfm1+Y/UllxSXOhvU3Pj4pV8b0OfgP43RkyvLrQf52HH0ZQKuY28gU+Mjz91U1O05fvpj4QdwoucC79DDilj3Tx5+bYcM1K6+68P1m3WLDc+t2Es6hr4dkZLgc4J7g7hl0qLWgHuznJyI5F5mnVLXY/HcqViH+DFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5wdHOsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5wdHOsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E7FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756142993;
	bh=G0c+jgAc5EYZTj9JWB9y4VOrYCHqheFYQ6+GtDVjU4M=;
	h=To:Subject:From:Date:From;
	b=s5wdHOshdPVabi8Tk2yCQXEGMRJa0OuTWoxsHEVDj5yMzwchnF/7nB+DpKCH7fJoB
	 z+ArO7zWQCfdXN+tH8HFzHylyU0szdZ1JA9u1UBeakwqjGloVRd05A43bSXbXNvKsV
	 7SXcDO2e/aBMi9BtvY+TxijaC05G+enOFWfSRTkuf8gXPpOvRlRAsvuB0yHrmNAQR0
	 Ip4heyjaaAVLxUID9XrO88Ci4j4A3VFojPub/Mo5EytbN++norydVZwkDcWbViQehm
	 ye2fK2MMXW/XGUSiHruHs06n8qFHBtchj57FzcCKRoSJKcSzNjL/rFustlN4EJrHAK
	 SjtS3nabXioAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5BCA0FE8
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614299358.17975.1461813016228965975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3bc060965a3325a647c640dc20b59a946a34b910857735f71c92e5a71b8942
Date: Mon, 25 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756142993

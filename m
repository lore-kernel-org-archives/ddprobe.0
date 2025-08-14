Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C9C264F85
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755155394; cv=none; b=TQ9OxSozaydGK08qE2VODlK4wZkTc+0gv/X9PGp2+FmySItnUodYKYiezsdEbNmVfOA8l6EpxvqQRR7zQTDiLPZaciooMzbHKbuEtfmxLPuQ/TgCh8ktxDOeJN+nJCTQI9oE0KM51Y8Dj5D5u0azmVPxzSrFfYduOE3nH/t8sFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755155394; c=relaxed/simple;
	bh=esiRUmY0Zmo4J3RkxE1hrDOqCWtFmfi9hde3FlZdaqg=;
	h=To:Subject:From:Message-Id:Date; b=rWw2XnQGoAFET4JD3vM4Al/czS+WpZJLC6oYLQbTcT1/JlbJyYvGRw2bqqUP8WxHuH/JrOzPSbEN4ee1AOT2JqsRlvUAKuqgxsT98n5A07I6BPXL3gXMZaqc6dXNRGn7qpQW1NQNaTH3tkM7gFZlhThxlDEWiFee23+1hZPHS70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHaaRWnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHaaRWnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BFEC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755155393;
	bh=esiRUmY0Zmo4J3RkxE1hrDOqCWtFmfi9hde3FlZdaqg=;
	h=To:Subject:From:Date:From;
	b=KHaaRWnVSRCPMzqbdPcHIuRxfPeTy0XzvcnfJcUiwc02FG6KtqipfQhfe2KIiM6vA
	 A7jjyDUMX6oMZxpuIjci5DJoXi2ch20l2e3lhYUmxtrfRCtgG+X8qD+JUQvMsnChl+
	 rAuuvrcjJiAgYCl4M473m2K4fTpzUicP59vn3HkXSJVBYMnxhy7D4LKUHCwr2KcV7s
	 mcQCGTnJvs6+m/GeH12oBRE8gI/rgRAsduJZ2sK3uK1KsLpxki4iD1vfH49JeaHPYf
	 UYfPp18XJfCQGuWh/6/k6KW7PFtAb9dM8aR0GBtVriDrfjgwDKTpMZ5iavP/eYxxRd
	 t/+pVpXFobWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F798CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515539357.16721.16029242419797048606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066eb3a420fe68ca19821a7bc1827920c872cbe1772b24dd16e3ee7f0566f948
Date: Thu, 14 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755155393

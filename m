Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3427030FF23
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763361714; cv=none; b=F/ZbQbI/HyVzUw2iwyyiTVmPju5ML+8UWMw7FFQ7/iLkd2tPjbeyIn9BU7cnCbkUjXisP8jDafZZNo2si+Y9Y/73VErUkrZwRghFkLXvZX7+vhbbFTUPP4sBvUCKg1be/LEQ0krhnYmpbU6wRpO3RzAkQh19SiKHupVYJFDRFLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763361714; c=relaxed/simple;
	bh=OdSIFW3O40XyZkyrj0MBnotWTPqULyxSOj1NVyRa0pk=;
	h=To:Subject:From:Message-Id:Date; b=IEyu3cSbpEl8iXD0DwfhYqgGm7SDuzyazhQF2pcV7XPcKkoh4M1QqhOcKKu07Rqugcg+ER5tEF2P/hK+xDckXP66qqflxt6u2EaEJJRyXhKRQ4uKZXEkX0xAymrUNysp/9T4+igjyFZDOsSg982TEjl7gwR3TDWTVV7lAWI7H4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiNX8+j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiNX8+j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC031C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763361713;
	bh=OdSIFW3O40XyZkyrj0MBnotWTPqULyxSOj1NVyRa0pk=;
	h=To:Subject:From:Date:From;
	b=MiNX8+j8Lw3JDgkCAhdevQOdrZFcas3nIrbdi5qeApTxLZn+puWfB5MI/KiRe/kpn
	 b0DWSeNCWiuHPrEmFo0GCgvg5odvANqq61fzWG4RX/nnHd491RnNA1FVvhxJGQ94dw
	 WxwJrrV8abngEYytEkf3hYKifM9+pLnl3s/MdMvufwjW+y+NfTrjrAhP03oKgZoLmX
	 RAJFlwmBToVT+v2dQgV720dl9jSV0F8sLX8raq4XsesTy/1xD1TpOVWG9c6UVjwWv0
	 fhQ4SN32uV99HVthyd36zTq6cNI+nlnncv8VypBOzczHgPYbWwGuORHMH9yzeeX6UB
	 kU/O+PwDkwIfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F6CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336171363.21562.16475721462755010607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1f9d18e0fa381b8e47fb40db61c9c2600d4f70f2201b863189b3e1f21a3922
Date: Mon, 17 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763361713

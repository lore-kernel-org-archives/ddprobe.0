Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420772BE65B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786339234; cv=none; b=A4Z0fbmnepn56XUxzfibac/8tuVkxxosHsVsU4nDX+Y0rKe2cPkBAUInqlmCdayaQ3beTBI12/aKpg8KpAtRf//UksX7sSvPnR1LTpIfVwHkX8K9/vWOAg3RMjVnpHRXvCqBzCqjAbExbFIWf6WAMh46saH07JqtcjYxWgijMvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786339234; c=relaxed/simple;
	bh=kL2YUdZ/eM1nUn2TiFXnaD+SFtnQegSKoz82HLF1TLA=;
	h=To:Subject:From:Message-Id:Date; b=nW1LGqfZ+5WNZl4sIFI1aYSNoQn4XixcpXktaTiMBUjpQg7eH47AvG54iCd7aB6c6sFco0V4r5WQe9HzXTDj6Bhf9u+eyQR3LeZntBxD7BOSnjGBR0nM1MvpPFPsM+GElSe0QSPMVp0V6Tc7ZmQOtL7VlzvOgbs5+36gUqHnXSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIn0nI4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIn0nI4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AAEC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786339233;
	bh=kL2YUdZ/eM1nUn2TiFXnaD+SFtnQegSKoz82HLF1TLA=;
	h=To:Subject:From:Date:From;
	b=PIn0nI4p0hhIYeoijpns8EER5Cquylp2i4iNC4wi8j6PPotZo0gIe9tZDzCwTWiGv
	 ful1JPXhHM+L0zbwwIlUCOOkJGCDAcAzYttH4vnKXZr3RnZsm1aYt6WG81ZYr/18TX
	 Ir/sSgGbkmHHLWpnUZLUNm5TraWrYmpoW0/RbReL5hyeBzY1FgI253PPq3z32QuJPm
	 iN7wT8LBWMFVYfAcqod0yG2Fwl8vA2wXKPfTweb2Jm5Zbx7d+J5Vqy7/Z+ihKGFqGD
	 PPXjCqg/2rfOsBq5DOsjqYakgPfy++BWqwhlBYW/ZjVEAU59zCuuIjqvRPhMf3B2Ww
	 Q56svsuZkQF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B9C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633923368.12326.12596186717965716632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71034fc4a05ed2c0e4ebe25f69e6b9963befbcf3d1a794b43a2af9d20660be69
Date: Mon, 10 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786339233

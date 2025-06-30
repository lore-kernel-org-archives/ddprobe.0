Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20E1FBCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751269194; cv=none; b=G2VrRy3qVnzQhEtSOzObdcIahsEoao0jrqNDil++h9e3zSUsyJpY9HDtcDXvq1Xr1ZtioEX8r8bS5MG2lUtUQeKT1kSZJYyveYlbFz5c0U/CnTOlse9sCd9/I68BVurIJZos9yicZkRmsBzwr0OgSVJzZlOkqkys5dMcz0sj8Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751269194; c=relaxed/simple;
	bh=gBslxKBu0DtUhYp0iOzKrApGB7f75bHmj63mFWRGim0=;
	h=To:Subject:From:Message-Id:Date; b=Eg0EROLAcLUFCYyH4ZcDYuE1uakDc+6ayGRDpx5dhortEN4WapCRLX2jScLriUF7673zOJozANHgLGB5t7kVzYbs1TIj6Yf4vyL3y0BU2vr9HPq6r31O/oeq4unXFVSaJA9kOfMa2xSDpRKRYIN7W1I+qIpvzkICxThDg1Sngns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdNDkopp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdNDkopp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA33C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751269193;
	bh=gBslxKBu0DtUhYp0iOzKrApGB7f75bHmj63mFWRGim0=;
	h=To:Subject:From:Date:From;
	b=PdNDkoppKkgjRTxjOUXzWeTzaw+dQS6AudJvAIJTn3dQiWnMxNZXqlISlZGiKN6hM
	 JcsXJ9DX5H3Orok0pXkg+yt3U8n/2KDSXJzzEJxhSOGxtZwRh7ayRn5tzbdmGD1TMi
	 RDUm9DOiMZ3wGnv3hIleySavRqAV3p9WBMiiUB4S2rCVuG2d/X9cGqU/qR18B+ay8R
	 Co1i5snEKVqsC/7ksrZvr56heXcbD5LMvy0UZYoWZgERsugoiEvkcT0uIz4AlOUvcV
	 AsLHi56ANkWWJowDNJV3+fSTDrbvLZs6puVEdvgFyIBhgrit4rVvvH3qOqjjP4+U8g
	 aNHfTLdboQnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA1C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126919357.12293.12881172514149553349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f9d47f4f21b162f29cd0c49e92e646eacedd234e18dec6eaf97095ba9dee39
Date: Mon, 30 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751269193

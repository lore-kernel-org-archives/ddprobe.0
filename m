Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ED72116F5
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747684194; cv=none; b=bN8IPLj40UbMknzJueMGNVJu26Ru7OgpuuVX0zXJgThdwFBd9SQcRkAmk0sSN76k7G/3IgAwz8wAgVyY2uqcSh9NWSsJxW7VPZszBtPsJwXIGd2aINKgCoVwHhxu8EC9Je66A8YMji0H8ArSG2t7RhBmX2qBpKYW6wQ6GDoHL6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747684194; c=relaxed/simple;
	bh=DyQPWqZqkSseQ95eYxHVnEbcMSBEdYhUCJfLMdQG4V4=;
	h=To:Subject:From:Message-Id:Date; b=jjThmQClX8Nyl8ZFq4nkqboonVT9WMJYRa5VApBFQZrbjErwoEw8Nu7vx/5gx4IbFMkOImoJmAVTtTb6AVJGSVDr5BQziPmnfXv0ElPaV3nR6mfV+KFfJu2VsK/gEQK3wQaRgUODDWqR3al8Pdyu3VDAx/rxmxW+EWWQXdCbduA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdRAYz8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdRAYz8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747684193;
	bh=DyQPWqZqkSseQ95eYxHVnEbcMSBEdYhUCJfLMdQG4V4=;
	h=To:Subject:From:Date:From;
	b=OdRAYz8Jo/LVbAXnFv8vgU4S/qMpW5umz5mR9sLCBKspGqvwwOZNxiFLz+TaNRNaC
	 6MC7bIzrsWary0WGVD9n25jArt01+BFZ7sYSkpeDuaoU6ylZB1Q7SM7Wn/1OhCOT1d
	 8i3VLOVBI9y55GOTfdShAIvBkXCj25c7H1aOxpUtfhPg62Fs6gfbKXY7ufX324TKpf
	 rp8h2Ww1FpzNx0LuBX/PYU2ZIevRIYva6rpsBrctPkcDmhcNY0bnlIODjFyBq+WZQI
	 ERpD6jU9AQnPwssrDEhp9Rs3gDb3ChKmrRajUMo2sd4/z2FEyzQPY6d3z4LsUYZRTx
	 B5At0Slg+UtuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDBC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768419357.11136.5602140187070371849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5f9f2262a5b0f4708692990d4c7bf2bf7743606b8bb6d8adeb373cac57d789
Date: Mon, 19 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747684193

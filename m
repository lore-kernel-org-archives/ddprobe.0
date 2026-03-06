Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305197081E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772828694; cv=none; b=P2i5YHGlbemX/QttbWGxlfFCshPuFQDfhZmzqsNQoV4+DrKp/ForTmd0xFoykJuYWQsP4Orvf2i/x0MXRhKbmPjRUHFyZI9NFT81klxwSuBR27tZGVVLODG8eQ+ck/4U0cCGfuCXEvpuv1AT8IGZls43u96RYi04ivtoD/xgJTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772828694; c=relaxed/simple;
	bh=e94R09IM6IBBhf3j6kzFQ6tcHnBAqacg60OoDQNbNWU=;
	h=To:Subject:From:Message-Id:Date; b=Nt5euFOagtmpILn/5quf+ICmm6L4QgUNjqGDXuKSjCFB450qStzUOx7w/BBc0Roc8phtH8vSdFgBxcpntdsrYMYlpl196gSUlFaf+CuhB17sbSbnGZAe/cmD18BbsIyVNBLhi1U5BS39093huzijZ1yw/FZ+lbzVAmVR2eQq9Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMAT6IXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMAT6IXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43FFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772828693;
	bh=e94R09IM6IBBhf3j6kzFQ6tcHnBAqacg60OoDQNbNWU=;
	h=To:Subject:From:Date:From;
	b=cMAT6IXl/tYs6/NECUymT1l/0SV8G/LxeufJ424PkS4zJCP0qz5g5qwd9mYT6ONzK
	 UZLnOcWxa7RWsZeDPDR6I4I0PLyPtEXpMGPCiNc0GpV1gOs8CXH3IdaDpq+IHvMuho
	 qcRrsibWKwyO+ScuNp/R5yl1FTqxjp3VLV5o2o0VkpkjQqTa9Ya0pskgRzU5qaeQZJ
	 jpsCjiWsjgvDRHFDK4DWlLFiRdl6ux42iZrYuzTDIrP3OvWBjpDvIbxQin3+uXPRyV
	 fy3pVjVWRMOeZK+K62obKeYfudXPajq4ndOprZyZO8ZidUm63U1TY8/YuCrh8+2OWz
	 ln0q+GCTXl2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D298FCC074
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282869360.24890.14197394000887300891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d64341d23e34404a9e1bf0a5fc8f919a1d8c7da7683ed2fd149438d4c9a223
Date: Fri, 06 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772828693

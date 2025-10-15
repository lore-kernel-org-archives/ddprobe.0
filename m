Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66772475CB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760563193; cv=none; b=YDM/POfBQo32I7KEaphgKwt1n+LgfHv1AqaNuVhArOLFo4yrHP6xoflXIx9enjvx7hskvJv0YLPWdhrcIeRz6SXh3X8hCeagIGRunFwcTM43qTnvlgvhWPBLMHC/r7IySTmjHRvZ2Tl4ukAfeFZvv/lvM6pOHzhINYqlJQB6oSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760563193; c=relaxed/simple;
	bh=5Wch41FvTLtL1ZmHP1xZkaV55ZM85nTdpxvLuWHus88=;
	h=To:Subject:From:Message-Id:Date; b=QnZA6XEgzLwS8h6caDL4H1IXWDoXRBEbsA4CKx2yJx9Fur1rnw3KNQS2dhw/A58cfadD0FIXroQiYXQV8YefklTKL0dHvLLv1+FSBe6F8Z2gMi9VfrVi0CcpfVNsaN/TyLO4FzDLJLwSpIU12wGoIgurR4ZqkbikDeCyBDUb0fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poK1K9rY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poK1K9rY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA9C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760563193;
	bh=5Wch41FvTLtL1ZmHP1xZkaV55ZM85nTdpxvLuWHus88=;
	h=To:Subject:From:Date:From;
	b=poK1K9rYEW8q0v27PqxgXdi6vy293Zk+8fTkPqGSL7sBfiir6kiN0AI9BrH5alRB/
	 q9P9dt8xfnDgXQ8jzyEsvRI03CrYaW/RrQ4jRxL9CjR/KC5ufUVnPbuL4qQNmIkT6V
	 ibEWqAtUD3ixwjc7Ue7lWX5FCZwjJLgan9UJZWVBFRq/6dCLOITxA6C7ppc995289q
	 x3zNBcgKmc62PuPv4NbLswXexVLBRVsV1XySA8zofdkSSjQx7WxGdVLk7r/FduJfmx
	 MYX0eK/HDIbxsHg7/vgH565fgWn1m+C43xRN2uAIssx3qSKxSsL8eNBw2oIGED49PH
	 QV0M4ukB/sV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D74CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056319358.27057.2949538796664390556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ccc29f4ba5a054be7d4816a15432fdefc95c14bef1cec54ab0a1719b5a194f
Date: Wed, 15 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760563193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F99633BBD1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765964034; cv=none; b=XJYw/6zhriIZv5YVy2JfAaCB/6ueUE4aLEdi5Ntjgv+GblHB9qXXOWoAO3XynNfWAeJJ6nqMQz/Marg4/xtf48qaLC1YTQ6rLlNzBTfWTxWdJB06VsObAbRBsZuX1+GIc7lgip8RIVpbnkHDngSJoGAk+NUiedn1wyOCyOpkAmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765964034; c=relaxed/simple;
	bh=M7SPKGxt0oBaaAUg2Rj5RIABv5tnXwMxCK5WrF6As78=;
	h=To:Subject:From:Message-Id:Date; b=gOHsjM9yRVhTd0VhIH8WR35zWtqyUPt1SqAvK3mdKLjZqNHDU3OlZz1rPewSwaCBAqcxj/gnhOFVpvmTQDyZzELs6mUW7XPtdWT4NR9ClPbwAM3+U9meUWicSfL5V55vh8VklbOjEdKXv5/RejqSfqp/qRSPKG2oPHgQzcwtDTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9lvWKle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9lvWKle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FADC19421
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765964033;
	bh=M7SPKGxt0oBaaAUg2Rj5RIABv5tnXwMxCK5WrF6As78=;
	h=To:Subject:From:Date:From;
	b=s9lvWKlewiR3RceeqbjRNWwbrW1sxVs4OtZki0lDd2OQlLNBLIz3eTmSK/sRbYatD
	 URhDyrIjK0AsavHJN39BSRz1Nz3E9qKixx7ucUS3Ub7jlsYEs91y3YiClHToIH+yvr
	 kroYdywwclrnl77mGgC4v5RNUYtCX/8j/BuaIwcDNR9+EZgyFsVhlSNLONpuQ9JTHY
	 l03iIHNDRoC13J9TvYSjB6zRI2vgcnKkrh3nKUnL3p+3l69Ara06qE5wIEMYw0UCOL
	 xSmQbe1tE+3S9frckjFA5cM4BIcd5tYIL/aOytdKi6dp4hG/Cht9gfnxxzMBkvXp66
	 hDpXOr5gZLiRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A4D64099
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596403360.11444.9984289232517678291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df461c3c82608a30518fe0b9c284b7b3eb07913e03dbdce1c02f63599fd9ce4
Date: Wed, 17 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765964033

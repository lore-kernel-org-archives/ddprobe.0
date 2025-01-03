Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3BE33DF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735866354; cv=none; b=DXzK7cMpFY+0c2ddggrnlRFr8PB3l7Y3fftMmrhxCc5kGujEvB+Uq/8gQP41EaPQ84QYcFavky1ZCCEm59wo1fnwLSswT+n6rqTw83N58qaVMVrbcnfHxHJXCG4UiY1dEy+od+Nl10JP7bjJHEQ8VfA2mKLiMKN8vEq9/46QzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735866354; c=relaxed/simple;
	bh=QxyefHRHeje8RmbnPMAN7B019C/oilCiERQNh9XOEYw=;
	h=To:Subject:From:Message-Id:Date; b=nhGV9vBNEQfqL2bVNJLqGZxWLYxC4P9rFhSPmWTQQkWLeCvQmL4tPKEVEi9on8vQcNh9vnFccddyHaxOO1gLUmYum+RWi0EWSYllkahr0UUAblI1nX+X1/hi1dxcbL4ROPZCqf/u7lfFDNrMvq4bENssuNvTKbsDub6Z3p14iUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIKx7IgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIKx7IgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA181C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735866353;
	bh=QxyefHRHeje8RmbnPMAN7B019C/oilCiERQNh9XOEYw=;
	h=To:Subject:From:Date:From;
	b=dIKx7IgM8sDxpTGCWU2L501g+k09INQqOtWrpP7+QQGOtrBG8l5fsl+ovIj51cg63
	 Eu50KlKnSBGxe0fP06SUi1CrbXLP1mKl4bCEheG7Tukkj/KVuZqkm5WMvcyqfdSgeB
	 egnbbLWlOFJ8bm59/o8dmECw3zGlBuNqVTN5PoMye3/H/t74ZPSGnwAXf+orXkXtbH
	 uoYwFsC3Bc9eMVyq9suibPsTDZTQvY1cjqQhWGU+wdvrXLFdHOZa/ghAdzV1VVOEoh
	 kwt0nsIPridvnTVDFO6YNe+KwnQPPkclT1LBlkuIiqun8LqtExKf3LVNyXQKCpeVqP
	 0K1xpalIbYVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F39AE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586635361.11854.3175926263270725505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619009e45f4f6b5002247808b984a4509e13133841398563000c969634177a44
Date: Fri, 03 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735866353

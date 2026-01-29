Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018CB1A3164
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694234; cv=none; b=USQkJv1H7D3G6VVBssIJ3syM9GDPOuja7wChyp++L/jfWr4cxOeafL8vHIK1mojWrJuIzFROqeZGwaug8jnzVprHCnzrcq7fqcbHk7aefasHWRXIQfqAOgNAr5FlohOccwustEL0/NpQSpiVvX22/nwzk6CXLbcl24jAZWxUbzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694234; c=relaxed/simple;
	bh=pi4uTks5GKiNAOP+ZIgd1EboPXGRGN7LHAY1JuxgvdQ=;
	h=To:Subject:From:Message-Id:Date; b=YpLBhqv4gDj/p2ft9Kt3qpAmlf0JevnkIXn8AEtVhE9hoqDpgIxsDhnewBcOYLykEKnZTS+3JpNa9LM3BRrC0mrGyy/AnWut5Qwoz1qMcx5FgpxfVKqjs6CRWxRlJ3AX7us7HrglTxzF63LK7nvegT+VR9VbgHmkzdqgTNUhP+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPWZaJiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPWZaJiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B73C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769694233;
	bh=pi4uTks5GKiNAOP+ZIgd1EboPXGRGN7LHAY1JuxgvdQ=;
	h=To:Subject:From:Date:From;
	b=VPWZaJiWGUUe32XGZjjUw5e6irlu3dMWVZv/7EyYcIV5ktnKxzfvsQUfpOoLf8+7f
	 2IAQ2kHuQNKzUJXo1uliv13RD8SExPF391XxThaOJ2zYmrgO/GevcnnmAopfGAOf2A
	 m7a8PSFMzSg+WEtSOsPCg5W7rfHkCmNYTP0rr435Svhva/DmsGopzvfK66xJ2FAbQT
	 /29I1+dGqDzjR0FtnM2ivA1pIbHqqGBNEmzXE8H8tCcs/9byb4jTwodnpoM3qqNeF8
	 n144zJGxkRDHufeIEq/3Gww4mYfoz1UQGk5ZzhMIM74b0GWAQzziBeoyRWQBJGh9bn
	 /v5H5daj9MvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBAD61017
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969423358.25023.4798413753016964982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbbd887faecdd4718a05774b8e5de38d7e5747992df8020328f111eb408a213
Date: Thu, 29 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769694233

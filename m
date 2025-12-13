Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320211E5205
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765637574; cv=none; b=cDlkcDpa5uEqtctsrbegINzvZ2AqKdctROcqEwDo7IQLhLd5zlr+sq5RlPSpEfxqoUIqSPmUY82tsTq+T9+lO0mnG7WXP4uExSXE69CJD7VPl5XU52LgU0ZXFIno3sSE6WjcG914jNgLCEHH4BgwXkYICwjS74umg/4mxoQG2/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765637574; c=relaxed/simple;
	bh=p/cCaqjWScKpkvIxamqnjyUA51BDjavJfv6g2a/4QAg=;
	h=To:Subject:From:Message-Id:Date; b=eyu6tj/3K6X7pd3cZo9erxrrfyJf6OS8qixSebT1qb0MWSHPaNzhtkD/w1YLW5RFvsAaZRxnropuIxLORhbaoEoOFFWWDiwkMnQyjE4pcnzUyZqxI+6dq4OrcRlY44o+pBnEmUbcBz5OYh5Qpo8pf2oRrpaqS9aqsF2zLQ04cik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQssNBeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQssNBeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FDEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765637573;
	bh=p/cCaqjWScKpkvIxamqnjyUA51BDjavJfv6g2a/4QAg=;
	h=To:Subject:From:Date:From;
	b=IQssNBeXgRYq+B/lvN1XkneH1awpe9VioU9i6p5EjTDZk+9KgpfljaEdK+GoNr6K6
	 sWcdzbV7JXHnNfCk4Nbu5CHr+l+fFn8s+EAqvfosGmaHYi1DYboTXnD9kzW1yjhVgw
	 8itPGaHhvLTRORRXxV9ptzWHRh2at6fc3fJVOAaWzS3mLAGXVl3dGHlEkPVIfgiYzc
	 Hs7sTeUw3mZ6NP/uE57Giqx2xHBdvsLFyvaHQwylcz7e8J8gIsABkNo5E1Jtl5z0O4
	 H3EUp++pHJGZxSCWOKtikKJUwFVq2g1z/alLZJWSivs6RpLdlMZjvDkxdsjn6UR5kY
	 gWgEoNuhlrN4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97391D5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563757358.15150.13801742184895941666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b2164fe088c783888c64633b2303679be3820baaef1cb9bcd3119e0571cb42
Date: Sat, 13 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765637573

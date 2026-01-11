Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBF67082F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768151034; cv=none; b=XWet/f46taVjpMMW3bWR55rs0Upjd6jjzlWBfbEePLCAnxYtnrAIpV0s5ysUv1Q1oOCjwv7hJeON7KfpryyRgUFSCmN5psvDz5hT0f6T47PNf6p/T1bKveuY/KJz4DcgiVfcFe4cPzAkfUw3XOSGSNYQpRV/rZIwkDQefHnGa1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768151034; c=relaxed/simple;
	bh=aV/qGrxy2lzFe5WBXxrelwASpgspXjYgX7qV1uF67xw=;
	h=To:Subject:From:Message-Id:Date; b=Vd15Y2oHCweYm8VvuHGw3wJY2ChhMMrFmb4v36y09A5l9LH7186HLGsU2AmvO5ia67cO74gtlS2I6Kcqf6M5SAsDJl4FKUuuRvlpTFs8oo5XmMaf2q5GFdxKFwATzx0Ngnlxqy4hi/+JEg+xktHCWf980mq+MezjHpv95k/WBx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxpfgMAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxpfgMAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC89C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768151033;
	bh=aV/qGrxy2lzFe5WBXxrelwASpgspXjYgX7qV1uF67xw=;
	h=To:Subject:From:Date:From;
	b=nxpfgMAtSgRvNPBQ97tEnr/un2RqO3iIVCxCojrJZMpmMFoZ6n3bj6EDwpQLHzG/U
	 CvXnmv6itRXahNSoUQdw4gMslcvt8jZmHwTPeWQUF0ZqmpJsiPYi91lPBstGv0+8EG
	 Kym8ix4n+omQG6usW3g4NaQobrHmvMhtBfIra4RjZ7zX8IFzO+4xQuw7tVUOpcWDEf
	 DHFjyXjJFwZtMshhmcEtjV4diX/ocwUy2u+kmghqaXhhG/CckPvaOZ0XDhsI/t+go5
	 n8R1COSxuINsIYZw53aLdm2QlZsnU2397tYD4tci5omVPvvsdz60Vlmq4Qmlh7+UzG
	 gF6d9qoQyGh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93AD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815103358.24150.17882378011136874746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0faaf10e5ffddeeecca0dcb5e6ed3148f730fc8709a8600ee3d19414efbdfca
Date: Sun, 11 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768151033

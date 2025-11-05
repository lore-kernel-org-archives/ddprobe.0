Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2262C155CB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762336794; cv=none; b=VecpXDQRrEOOav8X3kFaVJwI21juT9BUBDuEqjEdP0oOMj6WpKI0LhIjr6Jgp/mFGZbGiNsBeOIpvXQUX65kqO8zZidv45HcxsITZvNedbSrVbewmBd7A6QutPQFy4re+ocJeQttfOXMY7qafPjKyzd4ETYrtiTxn3pIhNTLHV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762336794; c=relaxed/simple;
	bh=9si0ppFKJWaMOanC2aVe8cx3t9EanuS0V49PK3qzUMg=;
	h=To:Subject:From:Message-Id:Date; b=Wm9jtREu9Q+eCdXLYNfK2nxvLJNQTaQR6kdm9RpMXhk595Jvv0QNUR4oT00x+FVnAdk6A9BttaWOHo5v6TsvCJn0OFYyeHSXw+Oif4OqkCcMJDG1o0Z/TNgMD123NUIRD8wtqBvBXAaeaFJhd+GcqWNa2TehUJci1xLVoZnEjJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLBOHype; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLBOHype"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC4C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762336793;
	bh=9si0ppFKJWaMOanC2aVe8cx3t9EanuS0V49PK3qzUMg=;
	h=To:Subject:From:Date:From;
	b=dLBOHypeXrFAlcjucN2fbbfKbUuOuuzfy2cWeSBhmE+UDYsLfzShqlkAn/7RjsS9I
	 XCju3sulsKlGSonEw6aC5cRzFuIV9Ij2Twt0yu0Z/rBuy04GYIEaDngx9FjsiGlcdq
	 cbK+dD893AY4BPUEMu55ERcaolVB2lDMW7+rBCderOVP8n34e2IWCAWXjTflEpY0u9
	 i55G4cC5Iham2cEIj79jqoQZUwZNLrJrkelGCM2K88sdw4i3oKftltiyZrgCaTRhi7
	 oCZOzHzJG+p2y963RQobBDQrBnJGZpanfHjoy6dt4RBI9fZ5B3dIMVRPXihJHZ6CtL
	 wg+x7CpOkJvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9321ECCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233679359.7869.16203233362286256208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7078caabe8f310330064ccf5b818a83a3645ef07af757b1a2651683304a0074
Date: Wed, 05 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762336793

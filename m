Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F10265CA6
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765549974; cv=none; b=aY6mQEuNBdRreXGkKGxXWhDja65v4dC+ZGz92ySPiWRAddSRyL5AjEWs/jaGbfXuF5DG5GBbVvKApM4ZhClswUt9BXlbOHJTmD2WbY+tZr2ydgA1amr8Lu3JjsU5qVl67i+yqiVnJTlvY2FWKAjUubr5JF8K1tL4nC6NNuavPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765549974; c=relaxed/simple;
	bh=2J/w3ah8xu/wiOjj73RIyonYP+X2sGxzHmlqrT702RY=;
	h=To:Subject:From:Message-Id:Date; b=hNmSnCdwX8AzjJnIIN3ZwgnfeffCfVmWma9BTXpkdvJnClcbODTf9xls69JDLivIXG0K3TW+0ZMMW6HD9FzmSSa0xAWSgbQrULxuCKqRc4BjwFTWuXj0LwKDfawiU6XBuMM7hg9PdTHhNT1X5XF53AmLw1JuTszANILnKQlS0Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/E7om4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/E7om4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CEBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765549973;
	bh=2J/w3ah8xu/wiOjj73RIyonYP+X2sGxzHmlqrT702RY=;
	h=To:Subject:From:Date:From;
	b=t/E7om4SG1V+Fwf+wTVpwVRwdlOAZjBSERQahak05fRqHilCSrUb8gM6RNllTDZjc
	 cJrtJ7DdWNsPtwS6b/R3y6W+BfDHWEbdFshrMNUHli03sSuUcbnyYA3yBAau0vb0bj
	 YvmrXacEIqx0f99rqiH2VVUnMOlcTxL7VcXjQpl5qTIQR/LXvAgpBiBfJIvV+/FUus
	 R+6s1lGysMHLrxrA3y4+7NIZ/ACJcEV+jWbQWDmDxT5mwqDhLP13oAVls3SfTv0M1Q
	 EJ8yzgWoxR80IfGw0xjBx+J0nG6NmdGEPYN9CHHyvfh1MGQoWICMybUltxL+kGFRqh
	 f1GF+fjW52A3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94713D4922D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554997358.25894.8343641598480078153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1b482b8c1f7ce107b5a2096ae6a195e0702449b2d998e72a12e37fe9f0334d
Date: Fri, 12 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765549973

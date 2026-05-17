Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EE03C6A29
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779039634; cv=none; b=ZyN+/VJdKtXmDYG9O52GYG3nkMUwF4EdYaYF4SYYrhfWP/v8+TsLFydDR96dcimIJ99YbrsraQVOou01rKmN95DOzsoMVrA7enOsb+KY9G8SqQeUY0Q9Zc6ORFbrOxEG/iu+HDnkgzaXe90exPx854pRxToVenWs3H+2OwDN3ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779039634; c=relaxed/simple;
	bh=maIWdbjcc2mnWeBqjuRgY33shbfFzqx30gHAiTLE2oU=;
	h=To:Subject:From:Message-Id:Date; b=cLDwhba6/2mSFNVNF2LcTyjuOByDBTLslLtoKyzHnUoJ6ry3x7zBEXJrdtH5M/wKwxG+VMuQW89ZRmJI0TfF1s3PXEhtUy4NH19xdOCgsaGPIDuW510YM0ikMy5DJQ7rN9x3/AtxqTQRujwvAziSOV9t2UwqRqfjLt429dckfYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSGQV7g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSGQV7g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37E9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779039633;
	bh=maIWdbjcc2mnWeBqjuRgY33shbfFzqx30gHAiTLE2oU=;
	h=To:Subject:From:Date:From;
	b=pSGQV7g4/c/yySeddO1zXKq6REXkf0ANmiuQwwE7/0TQuUMx/coDfTU+tdrGI+6sN
	 F2gq7oUJLazeH1i1zx3WmXxGz7IBaQo4RWD/TiRpGXMZc/vXZyTweiAAXzplGeyn/6
	 U0LnzrWDbj0l/b+sEzYZIOBwHxjx19tHkx4rUrN6r8TJ9Utg1f6rX4kT4k1NMLNlcn
	 Rl2Hz5t5Oea1kC6LgfE0k3lIEP6yyPUa9xjjrEoZGVjsiu2/DGLa4AD+pnliXxFbJX
	 ePc2Ic6nmtyUGnXucK4Ppexn5QQvXZKtW6G5vhSlljwse9L+unIRUmZdfCUNaFY14a
	 o2LzQj5UqiDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B064BCD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903963368.5289.5464367561785346085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81084e5a83c999559016f7451f3158b0169cfe8e19833cd2331fc012758dd622
Date: Sun, 17 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779039633

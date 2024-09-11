Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811629CF6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726083954; cv=none; b=YKfPe2+BTG0gKGy0AjUXD0x8W/FgXvq7+lpnfjqfhaqEsYLbPf20MaFSvNKCudlba62hIWfTuK0SKXNItagqfWyOkSnK93Sq/dJNLhu5savI9PhRjRqYV3fBLuXxp24PKq1eY8mewtBJMJvKih+ySkT3nVvP1hMNyGg1WBrXJYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726083954; c=relaxed/simple;
	bh=V5KB/jqy+mX8xkga3px4k3wT9Fpm8Ztjl9GEFVhQmA4=;
	h=To:Subject:From:Message-Id:Date; b=ILprneuWOTXSS2S8L+p1xIl/23AJCppkWlvEYmettopc0zF1Xf+2VdhWRwCrKFACeBv96uq/bP9US94gjKDYUnWMH3w2bsR6AuhBBucSKAi8GB/1V/2K3EGIuWO+RmckXILDMYnaSRtSn9lFO1Y+ekg3EUHRdrRSDu+5Xw0sYxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dt3s+69I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dt3s+69I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8539C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726083953;
	bh=V5KB/jqy+mX8xkga3px4k3wT9Fpm8Ztjl9GEFVhQmA4=;
	h=To:Subject:From:Date:From;
	b=Dt3s+69IIEeiRkazxfwzQ9ZhQ2oVLqPTbNFA7ODOSZZ4G6vH3pXvxkxbgOGchvmEO
	 yVXA3U7kvf4lh07TRwpQNXrAIPSIiIGl3DsNLqvt/OGa/1HaTO4ON6VdpYTcli9hov
	 EKzhyJcEAH/BXNra8g0mdOBNI4HwA4ThK+T7FjfXKUjyQW5JPDUnMrA6n6V0U654+w
	 i8d/0HtGeOpOpLM88F8e1JT6S5pQOtqOFpPGMm52Fi7zIdII92qohj8y7QlL3XfPSP
	 hRxCUKO4yNXZrKjmRtVCHbMIY39FQbkpBJyzir9ES03nWlM3kPdB9AT59JkmE7sgV/
	 Ie00n0w1Lk0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BB0EE57CF
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608395360.10120.6921802770489103661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ff41f68a9303c2b62a9c47c71eaa32796ecb8921bd75810605ba0bd8e23a20
Date: Wed, 11 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726083953

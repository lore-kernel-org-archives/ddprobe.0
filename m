Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1252E1A2389
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758050394; cv=none; b=kPMXyNR6mXHCH+lTtRDWH8GwkFEjsLL03k/kunHmgnRcHFMrVQJZV0xqf5WVW042FhFsii+a3b1ZjCMTxAy4zFtHo6lQLVFqL1ny3KmoFH04LqWoUhIq/LBivri813MuGOekv2L6xNEiPNc2VoSCO114SRKglyvEgsE2ffpmZDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758050394; c=relaxed/simple;
	bh=RzjXg+gJ9XrBSYnDra3269GFDBIdxld2dI6bRYONgik=;
	h=To:Subject:From:Message-Id:Date; b=k80ELUWf3DFoiCRHny1QQ43Kr0QpPio1JhzF/yZBvJLdULE5jxVpQYYRH8cr9WWuvDAtRI5BwSegvj+z+q8E/akVMr1m5WH86Cc2wJ54PMKIb61kKZGfuuh661+CgPUh7Z0+Nv2+LwscYlyLDi0y2yBx0XctvfQkjrEFfk7KkLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtpIYLUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtpIYLUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758050393;
	bh=RzjXg+gJ9XrBSYnDra3269GFDBIdxld2dI6bRYONgik=;
	h=To:Subject:From:Date:From;
	b=KtpIYLUsi32s4uWT9vtf4JnSKnmZkSq+oS7vChtsbYhQmaEYZMSdpusaKe2YH3Ub8
	 umPB3oI2tPZHqTgEUzbeSu5g57vhPaB2NfRYqI1AekWO6Bar8DmIJmrE/fT37zLJgQ
	 yGQWr/Ba7I6dPSNq4kZlkjxLNiAwOWsOY+1xspgOgorMUVrCMfpdL1FoYruWev9Vyp
	 Y9677+7WxOIU7ix1D04hj3Dyq/1lMV/oC3xBOTAPnxRZ9VdJSsr19ftbgkzZmooQ4h
	 UMtcqB07rKhUxG6Z9lYaTxlZufeIdsoLbNFjVK69j3SFan9SoSlQBftm5dsLQmzsHk
	 m5b7QgQ73cQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCCCAC59D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805039358.6517.17032795479700313279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30054c9e4820f1b3f42a743d52077d9ccd9e757873c7a584b218332c6da971f
Date: Tue, 16 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758050393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74D8292B54
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781198194; cv=none; b=qr1qFg9TQHTCEi23gTjej6FbaRHc7SMQmEbBfpE+Su/3SsW01heJmzsJR6w+d5xvOkDa+NqxPuxfh1duChkcz20IGqIlb93fHxaerm8imbfih1XDfScuoZD675Yx7NjC3EnuLMXgcAvx9PrcbseQFSGbicpu3G04vw1T0YE6U28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781198194; c=relaxed/simple;
	bh=iXWfgsTInU71QTwcuEOoWk6r8yLkBGE96EWIBKuRnyw=;
	h=To:Subject:From:Message-Id:Date; b=iDD4KM8VRYlHjUvSKi361zCSG3dbDcUTRJqqUF/OXafvpWL/gfMLfQ/pl8fHXnlrq/ju6kH6STWa2kXBTqur1msro4MA9pLY31l6oxNFepRFvnu1oXVex6RFwh9gKhRY3cwJ/c0f7/7NbPGJ/0yU/IgExdJO2uzSv3bKtQryyx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEDkfPNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEDkfPNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D70C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781198193;
	bh=iXWfgsTInU71QTwcuEOoWk6r8yLkBGE96EWIBKuRnyw=;
	h=To:Subject:From:Date:From;
	b=hEDkfPNZHC5INWhagZU90HWekh5bvMddki1vprpLXp4nmJeXNiK+/tNHAryIsF+e6
	 esKJA/1AqwaLc/DUnmAx7GRv4qZrwbbQwmY4sk/k9Bg630XTP75xEx6RLdRGSQmS0I
	 jUcpzOLdacCdLs8NJAgNqxh0S9kLAVvd6F15wDKN3+KG39BgT9clepU0akG9JJzvBR
	 Y4RLOi1gHois4GYB/uXce2pCmBbQpoo9A0RIsPNcA8k4QCT2Fcaf8HYu7sdLAn6aL2
	 EHCfJ8pQLH2p1rqBlWuElZn/xkQfc0cBI77tUA5txfF6GroDGE+Xq70HspZ93MQvvl
	 IdQQkrmKIHqhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35BACD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119819371.21571.16254631233859401222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af150449aa222079098a10a66a11999513166e5470f9a2d0f823309f9ca6c9c5
Date: Thu, 11 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781198193

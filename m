Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B2366059
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773608094; cv=none; b=G0fEHW2+OwoIudDcRNdJV4sM2vtgc0omYo4c6GkZ/D+j4rDeAQmMbQnaaj/ozEU5fbMDaBy46Jk2VCT3BGVhKYBPQniwKReJDk9nD5gn64+bUCArMMwnIAxsn3HA9edYA0GXt+UwxTPGldNg9aRp9hnRbND6/GkPlSFBogb5jLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773608094; c=relaxed/simple;
	bh=jfL6XDT/IcKY4r/6uuG3ihwxqBYTiOy89h35HDjMiP8=;
	h=To:Subject:From:Message-Id:Date; b=E5rG/tvCDHajyhZJaeVR3vaBDSfPveQsZCBy1HSNvcntjOzk/wg0DQpHbvP9YhgZ2bfovNSJ8pDWQeUJASbY6ROsrJn9+jyxdVrtc0kNsCtSS6aiLma2ehuwsbh4YZ8RGBkSPrIV44BA1uw6T7vxR/bavENBiK/H0QvDRagTo+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPLm2Kou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPLm2Kou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773608093;
	bh=jfL6XDT/IcKY4r/6uuG3ihwxqBYTiOy89h35HDjMiP8=;
	h=To:Subject:From:Date:From;
	b=FPLm2KouaOwEzmX7YJXOP7D6WRr/GIUDNXN4qxX3lSpDnuw9n6I6PVwnF9u9kJb7R
	 ANgkp/jBJVhwyef6gradsOKxtwPPoFr77RjRa/FdXY5EwxFRVOlmwEfMQrBtiu6DhW
	 4n8ZxW9PZHMpfkUtNjdPwNVLdoT/Jl3EmLyMUsfgAknHap+Nn1ZobUJpD3FbS+6M5s
	 JiU0Z9DyhzHhhEgCfybaPchGDST1bnsxEqSVE6iqT72D87Qd8S8KF0O3MNb1QvevYx
	 0Esp58JXJSsUUOtA+G2EWfmC+LiWwY2oRLD1XjitqyqjwapDNoi8q3iNyLrpnyCLQs
	 D/osLU9Rss2Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C283F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360809362.18432.4336048270607647055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ba6020c735a6077089fa6b30edbce1900347b6f0b9bbfe8ef4b1c480f3f0eb
Date: Sun, 15 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773608093

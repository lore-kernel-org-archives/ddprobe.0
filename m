Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7F0CA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780725874; cv=none; b=RwGq4IH3yYgWvSL/E8LBYR1Z3qpiS6KontrNx9Uz5PM5RccvNJFDjfbHLd57wFcHwbVD9O6q25heLk3JkSNJ9F7DmHhS0DEGZD6Gqt2dlhCGNj5K2izy+xhzcnwtzqUcD6qDSKibkF+o8JmAkz10/RW+kHfUJp5DkfA6NxiE478=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780725874; c=relaxed/simple;
	bh=NuDryk9nozbCESLOqun0KbIMlbRDyT3ju4F02Pdz69w=;
	h=To:Subject:From:Message-Id:Date; b=AIXz/ZpbJa8sdb7CqBdh8vMLXoQ1qXyDisseyvFp6Y5fEDz1wLKE7qFTrXJZqBcEEwhC9fqpuUPmFncxrcZE3cRzPbxYHToQUh0RJ2FMMCoA9uuv5WMuALHFP8eVqv2mNtQz6qEWvfVi0d4mc/PoIzl6866CX9gYizetmh51Mac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIIulie8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIIulie8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE06AC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780725873;
	bh=NuDryk9nozbCESLOqun0KbIMlbRDyT3ju4F02Pdz69w=;
	h=To:Subject:From:Date:From;
	b=iIIulie8vwFVrzSdxrhlJpRGwzVDdZYtK9V7Gk4nrZXOMwzinmz7TfIbNlA7P2/nC
	 iVZCLYTTb+5dRLeMZ2ue1iouOxJWdehtzdgdOlYgYt015uMtfN6ksZKsiymRpc6BV/
	 eKj3b9E/jxOczMevtsxEv6WNesvQI90OI0lYUNj439MVm66T/dB28ZlwFa6c9FBO4a
	 L67+/px1lYT6ZcW9lWiHhvfkxn4vJPbVAh8BaKGmbzR8XqqKgZH2/tpLjb3Jc2TiXs
	 JnODXZevSkVHH/1LIhIPY+OZaflDh+3CrtHhIjB8FS5xuEDOVf0wjS2+3hiQJvzlJd
	 BtBARVz2tBz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC093CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072587374.3911.11797624659683860091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1ae8022627fa3e0621b137c2f0d6b01fb6f8598f6d45e357e3d9cc12bf3a9c
Date: Sat, 06 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780725873

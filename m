Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8E21C84A0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761805794; cv=none; b=uhiZ8Mky7hf9Wsd4oEutCqsuTeUhIzfqVwPVTKKxc/Zi9QtLr+us0R/IYPOautTOuEOxAgS7aY3fVj3D3ETC9Ismkflws2Vx3+NU11/sdgeduQSeRc5mLG2iTN/HcYlhmCtCTQKsb7YY+y+Iz4wkK4gY2ONoajvhfg33CSVxlNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761805794; c=relaxed/simple;
	bh=tR2v7IfgTTQbbN8iGiZZB+uCZA/gSrT4AE7hRbEaWJ4=;
	h=To:Subject:From:Message-Id:Date; b=U6/rHSPckXtxXg5UlWcWmGtuCNNlPxSkH2/WCaXVH5eTWQ0SXyWBAvDk9nCKvbRMdzW5a4uAGc+Ib8YHpVlV36XO/wRopJlrD9YP7pX1Cy0Od1xA8oNHWkE7W3aunKFcB/RAtSK+xpkN9E68rcL9PeU9llphRsDPqd5JY6XkPCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD+ziCEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD+ziCEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B433AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761805793;
	bh=tR2v7IfgTTQbbN8iGiZZB+uCZA/gSrT4AE7hRbEaWJ4=;
	h=To:Subject:From:Date:From;
	b=rD+ziCEpT8ilhEMx9iD+MmKl9lZZXBnA17vrBlQTvhrDGC1EvcmBkxK9PRmcSOFhc
	 DJbj4c8CK9ZeNVv3rlPSkA+xmRb9J6RxfbNfEnbU08Kk62DiRA7TYK7Fi/zb1XMDW6
	 7YJoNVAUKdhJFWvsH84z8gh6DGUB+EOgnS7dm00S8i/ohXxpQ62c+8QACxs2jSi5FJ
	 LXBjtgb0nKPNw0BBxUeXXGeEuJGIYGiOUvqDhV/ibTmfjwB6ei80krOUJpyFZ2hYvs
	 FhWi1CbqBD0u+OpG4rlS+sJt3WMoTF8atFbVZxy9qRbGroAbIeayghztGz9Zvg+YoB
	 dWZm80JzkdKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F65CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180579359.30140.14955619697249452178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e358807260871c6c459b05b1e0cd3f08a3796f576a89346d7190bf452c979ee4
Date: Thu, 30 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761805793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D23B8D51
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765059774; cv=none; b=J5bWvzOEBFWUUQsDg1UYoimNE3s4c2BCVA8F0h4ehSNz/GdPWCSQxjPkp4r+GQ2F2ndHZBF+g10HFVDcPzcRNZCon/qsz8coblTHf8u7WxCO6xwPKAgqiXAa9zOy66BxMyw/SSF2YSEbJGyiSrtYoxfJwwhbyAbk1a2kfSj6rTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765059774; c=relaxed/simple;
	bh=yMytzHvGiD7u568UBEiUe4+RKY1ZtUuqIqKtlLaYIS8=;
	h=To:Subject:From:Message-Id:Date; b=MxNlaeXn6hYSIpj1fy1hx6C5a1Es7haHdxvRMdiBOBkgN9thJSStMKxwthg0x4TOpAk5eA4RPzBlROTd/MX1kSc+eW3MD66b/Fg/B3JlvapcaCFXFB33EZVKUHKwvO/3vvEtHhSij1gz5v42TRWAKB00P+RX65TFR6smxkL/pbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8+RDYe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8+RDYe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B294AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765059773;
	bh=yMytzHvGiD7u568UBEiUe4+RKY1ZtUuqIqKtlLaYIS8=;
	h=To:Subject:From:Date:From;
	b=i8+RDYe6NnuRZG4tbO/HjaFVSI85ER+QWiNvdp8nFHnuSD2jsUbi0vhI3fnzxaH3e
	 m63n6yDXd+l13JOYvRN6FYd76qaIicEP7+Mp3XmjUxFzX5MzQ3gzvSrJhCTqCftndV
	 0acLjcdImnHbDI1ID/QHtMO6cBCGqYasVZ1P5/Grs4Ub/FAkexKTwouWJdOe8URB06
	 gMqXjK3kY+kGa2KpX+0d/YLUsCmdvxaAKZptgN/xx+2XksN18Q/0bZU5u5s9VmJGCR
	 qPpaMKcn2IOowYe/iSoBCxAYWC5UrTClnAFUQ0HSkG8DQqw5JOL7enHjrHy0yNgAgw
	 +Xa4tGvXrvufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F902D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505977358.28615.17882859936542719539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d248834586246a33b6e7659fea13a27bc99f5b277da5a110de6dca16fc6afb3
Date: Sat, 06 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765059773

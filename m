Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541CD171670
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720796363; cv=none; b=NETt97YzFqR06SMM1RgWIzJGA6RHsEB0jRu/n11ZaGgc5DgTZ/vxCve5WO+dLkR/vfHFtDTQFhjsWeLEOU+EyHyAS43C9quGtsvC2zQjpo1f7xJSuQNkalmLzK/ArHBsxuDnuvYRecphenbW/vXv+E3XiZuuwOzdWZ1wGNIRcAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720796363; c=relaxed/simple;
	bh=zSLDub4K+fjxLZcW4jF8IcjPAxcTiMDHX1GVjjx+9G8=;
	h=To:Subject:From:Message-Id:Date; b=QY31fwDHHVmXQWcIwzGF49Wci3TcE0VzSdRRq7gOJevnfCg68qCAQXgnMyFbRzPkpf6Ivpb7xPcqsiphMfDMtx6NpZj71U1jfErWxTn2ihJHFCkObc+bnf2tSn20Y5NlF/YOZiBFVkq069dhSNnN7jv+DT7wtHfAbhJSob40IN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjQDgBm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjQDgBm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6157C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720796362;
	bh=zSLDub4K+fjxLZcW4jF8IcjPAxcTiMDHX1GVjjx+9G8=;
	h=To:Subject:From:Date:From;
	b=mjQDgBm/fZnr4gOL8YSN24Tqn+DK6i07afA/kwMWnd5psPUPr/azG7kUzpJh1e1wR
	 kR+nRT+CrCD3QFwGDGBtSRA//N0jK/GsNHLn52kasC/a4DgU5V0BoC36XY9/Sj7GRC
	 zDEK4X31ydoONozGQCsiyJw/gXzXhvAMd+mx6IwIJMoATg6GLSClWcwOVPQ25xB5X6
	 pTvGMXgHBCAc3RZ5/5J7aUJ7dgo6CvxvbD5a5a2pPeuAUnDlqA8FdcWPK9eHVeC+Ow
	 MPtaIAk9WS61BVJqzp1RuQoLl1wJo+N3XBNwj0HmtaMyQ0NYq7honJvEt10rBz8EXE
	 KR32vWGzJsKyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C8BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079636278.32438.483091133040024895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811a8d39ea6e6d2cd8e6b5fb646b164858e03ab225e411c2f8aa9329f9feb9f5
Date: Fri, 12 Jul 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720796362

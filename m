Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73B3C584E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782204994; cv=none; b=uRauZ2x3K3PfK43xQrgzqr9y4SO4S8kJ7P8dk6AEzMSkuWfRUGR9dhMyyf2lxkLvp6STWKtHFD2zMp0NbZXUTlFhUlwzKiuG4Tv9OivJaMH6mpH9/yNvNlXkqVYpDPjWyBfWteQndaJpXbwONGz6Eq9At9gbhzeiC8YXPUJMc6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782204994; c=relaxed/simple;
	bh=lPxkxoWFRDEIqpxylaYFLSTPiAYBVVne2lztmCzXADU=;
	h=To:Subject:From:Message-Id:Date; b=bQvZ+/nnpLi4/hCSwrDXrwyILY20SXYCE9A5ZpkeDAf0L7l44y9dYhjGrlW+yC1U31pWPddIxgz3Ijo2kzZZh0+B5RAjlCTVOkJM/TpyCfkPI2a/H3rqQ7zCCa5DfdMfKbfuLIKREFlpLXi3u9YgyFOSJi5qEU38InbP9fpaCRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R97Howhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R97Howhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1957C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782204993;
	bh=lPxkxoWFRDEIqpxylaYFLSTPiAYBVVne2lztmCzXADU=;
	h=To:Subject:From:Date:From;
	b=R97HowhiaasTINz/NnzN475qIox6kU1NnAFIXQgzFrWGFRctRu27I2zGb9mkdsYVe
	 B2aoxtVJZpbteXiaqL+xWwLL/ZY//4gvGX559uZwaCiL4kRfSt9TtmozaRRlB6c0uH
	 fGKB1roek8Y64HMUkP0Lj3TJI8mlX40qoDDKgMa4bMI2Le7PCC2t67zzYaZf7PnDT6
	 MiltRB+VrcPA74Q26ATGYxEFUIZDFTb6MkT2GDvIp5/UZTKojF28H069mkiZbWYmWU
	 KhX3xLHmE3KlswXNJHIOFp26dixJjr0tsKBJFBKDimMqX5yjCSPKbilkJ0JcXvG2J3
	 YS9l16OJ/m8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D02CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220499370.2005.12378355518213885886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602bb3f9a6ce898fc8e9ff7c2d0a982f91c878d1391e9315d7bb5aecb31cf5e6
Date: Tue, 23 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782204993

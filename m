Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9993D81
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745232594; cv=none; b=aQd6YgfttjZauXqD9Og1Mr9av/pNDHL5M/aizpXaV/vrZJvP5kgQQh68pI4HoLUWwmS49AeaxYUBU+zr+pyqguOqYjAo7R7psPPha++1Ai2EuMr/29rshUIs3evLqpvfNo/i2Z/jpwaqlXIHA+NpiSkw83PaP9FsgG9HV7QTW9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745232594; c=relaxed/simple;
	bh=cbD4Y3lDBqFPyQvoEm8nkvlUoNoKvVPhcUvlo8Jq7GI=;
	h=To:Subject:From:Message-Id:Date; b=PWWManKTntVorRLG4jPdy5ooFsT1odNp5TH2SfzSLoT8ghRDsiqyfv+oLMZgZnkI8RzckYXDF92L55KnjoK7J/VwRD9Ejee/pyduc78S7W8kFSOaNXSFiqvtwc8dfUuDT4cCJz7RmoVNBXPZnaz2JvB49xyCqzTGesYl/TD0GoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl9kvVax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl9kvVax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A904FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745232593;
	bh=cbD4Y3lDBqFPyQvoEm8nkvlUoNoKvVPhcUvlo8Jq7GI=;
	h=To:Subject:From:Date:From;
	b=Cl9kvVaxbXxE13mZkYaAqC2JvcIEQqJ/1d4GVNBmtMF7+gNSPlnM22ZYrsIta/E34
	 kKm9gzfre94WY12/ZLZGtyV/7QC/EV/3dg6E3EsswQa2N40OVxSsFZCPq4PQAxqe3q
	 GrIeCaLQDXI3siBuTnD7oE6/ADbndL5wyLTelNt0wzgvJoy9nW3C7nZsC36hkjx63e
	 PIe155nvKrx0PnDuhApczppLBGHhJBIff34SNZ0wTbP5XS//nzj2DV7QY0jKHwsX/L
	 cTjy68iNR30dwoLxbN2jQYDC3JtrFcYxJ7VKTI7LltSwkZrHOLdVX5GkeVNhuK7E/x
	 Ii7yN12qMkFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9571CC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523259359.7910.14772177914601513833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16fbb8fa41bc83946e7465028551e6a84069bcbe61a6fa2ce0216446570c588
Date: Mon, 21 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745232593

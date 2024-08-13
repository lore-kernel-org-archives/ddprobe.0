Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4007D368
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723524954; cv=none; b=qZsspf2IHtecC1kYcK6N3dIUp65Y7QxyE60z7MV6sk4aWle0mI5ImSREPJrr96vBUuAzaj7AEPNYMXLSQJIugqNXpH7uV8RZEF0QYawvbYy26BYK+cIKe4RQJ0WMa0VWBTqzBF0yPiVCYdA6I2rvCdhpdsj/u1IG5LXhYFG5uLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723524954; c=relaxed/simple;
	bh=6COubnWDNNyrKVAjuim3VSlnWv6tqT7/5eJRL9jLEuI=;
	h=To:Subject:From:Message-Id:Date; b=Ke7APJg8KiEUfsXqy2PVdEnID5x6T+cnnB41Zs1ELuI03HrBUKIyZh5a8rUtQKzn33DONzBkz59K+GkSrXevDBJiXoWBDCZVhMVEDXBeM3IqD3CFDm3/MlssFIzyHy58nUjBie2XEvV62LDMKqzKsF4NJE5c+i8o4tCgWpcEpTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ift7rmXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ift7rmXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C3C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723524953;
	bh=6COubnWDNNyrKVAjuim3VSlnWv6tqT7/5eJRL9jLEuI=;
	h=To:Subject:From:Date:From;
	b=ift7rmXZeyvHz4I+2gepvoG3IXV1kd9+JKX8iRL9MS0zh+Ehnmg9x2SGcfa0NEeVk
	 M1TfkX7PquaSNu701i9im/ayBigY3EVYgbpjGUPuFqcLWh5l3a88EqxMuySOyqaHSB
	 cUXipd9zQdF4h5pCZ1yRxh1CbZzgj8JTw9eh1fClxHf41rPivK/Nx3MsXSKOcD0F8q
	 RNOrxrgv2ZS6ofpltX/9iTNlejMPkqVA6D2UotsXgjvXlXld3iWQ0GDP+U7A3XJ74F
	 +4kWf+7BzErqmVw3G39SrieC++PAgsz4jre35XTYx3gPOQ6foG4cYXCrNJ7FQLWfPw
	 wmDC8Vrw7w85g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A4C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172352495359.507.5943834675294192560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d86500f0b169a2ab2ae4498a5b712fdb7dd0197bf0b41998c7d1ef0eeffeb4
Date: Tue, 13 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723524953

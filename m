Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B50018D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748736594; cv=none; b=Viv9dst0NiMmZoayl5PPyFBcDc/Trx6lyxet406cO+0fKbak73FzWfx1c61WBBMfdA+WwyIuwa7tmnfbg9IZ4TIGesOsQiTcZ8GjvueaFeNHIacMn1kIAFPMVEJk+DADKJHffdXQI1uybx81L6q52QXEdqGeiXY077Be0QHG668=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748736594; c=relaxed/simple;
	bh=FrvTYF9j6E864GQ3nedBOm+REIdQDRc8fgOePyuuCAc=;
	h=To:Subject:From:Message-Id:Date; b=VcD/kS9YeB1QUFJJ9JlNhT5XNR6xxLkEq4Zt/wTHoY24t1qBQQTtkYIC48PsbmwWp7GpM2QxK/5o0itjaYYY3zvLCMMYBUrWHMc6gjMt9f7bpywR6rBA0o0p+L/3vShMrYaMoH0zEiSwkA0OkX44hAAyWNvPcxzyut+9AYob5rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7wGVuAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7wGVuAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4819C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748736593;
	bh=FrvTYF9j6E864GQ3nedBOm+REIdQDRc8fgOePyuuCAc=;
	h=To:Subject:From:Date:From;
	b=p7wGVuAl7ayWkoLffUOzkjpElXpnp9zNzNFMc4ZNQ0ooH0LRzRYV0QktwLxsBLA/U
	 ShMPbOEZBOB5TYrEkR6yUDfoY2br3SWoy44ma/QZILdS/ltYOG5lmYiFlhiNrjHS4J
	 uQv56jvY43PNfvxj0Fbu92+D5CDSZgL9+CO1c0+9aMrAbnf88jaUvZkjuUF2GbPzOE
	 hcGTewL8NE3yN5VMjVVN55CZnUuCTOBgEwXS05qERrPGDhnEJMJCWEyO3RNrW/714Z
	 aa5DSRdH79EZyKUO2jI77/hYRTHxIFUPJTVPIGx0NlO4iabx8pYzqDl9fUMPo1WMWY
	 bO2af4YgyJ/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF02C5B552
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873659358.8734.107425821133826635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4548db9e1eb71444e29566902d19424af9572393e6ff4081196710ad782346c1
Date: Sun, 01 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748736593

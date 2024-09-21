Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9983C38
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726880154; cv=none; b=m+am0keAI/mhOm+Cw27KBs4ynxGqH2ZsTHAcVaVvajrCU7RhVDPe7b02lyG9b5gnHmyE+w3Rh+r33jQhxK5TBoQe449PIJMLi3viW396tpyEHb69Q6Y0KqXU//ic8wpsI9nsCRLz51qPXavtqgEKPyoQlGkIp3UaEAS+j04Va+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726880154; c=relaxed/simple;
	bh=o517LV4Z98wGl/7lFTxsM55AzAGj0CSQ3+WAF1xc16M=;
	h=To:Subject:From:Message-Id:Date; b=dP/YHMp0x8tgYjdZCa4a7PGFrv9X3jjTjSsiC51R/0QXbNeTSq/GFMkFZLH8Tq9jt9LDOp8JDCnVXdBHGBWLMlGN0ovivH6+Di8yiNHlWhGJm175NkU/6YPDKBoWolM9obpxG7SyWR8NSz4zAldS5g36UFiqjoTPpQG/7qNlUXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1fePVer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1fePVer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE88C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726880153;
	bh=o517LV4Z98wGl/7lFTxsM55AzAGj0CSQ3+WAF1xc16M=;
	h=To:Subject:From:Date:From;
	b=W1fePVereuyWaZ3M5Gd7+PU9G9M2TYe2DB4tg3lZhXZnoiBSiUCR8XN67pG0WsX7s
	 jHEAGlazrEGNg6vs7brOWiWi0GB7klyjy8peS8h3G8naHfF2mHKnvSTIrn61SzXW4+
	 CFjU+F3aDsVjYnfd7CZ5trk2af8cvfHjc1DQZ+8KUFZd6/+3v5KNC1vOpp7NlbcVA+
	 4f6dGOZAtbcR2kdM4UP1vqh/DZt4RGZGMF05GHjogRjNSFUqBpwzUEwO2bDQRn04AO
	 KMWyxfBgLXMaD5QslAaEt3q00ynJ1ttDr0AQ/Rd5Dt+GsxvXeNPiWqD8vIxxp14NFe
	 KP4GnaeOEQkDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A94ECF9C5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688015359.10756.14095772982630757002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41db486836de30194a715699df44ed6e7099a3f834be33975fe1487584fe49b9
Date: Sat, 21 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726880153

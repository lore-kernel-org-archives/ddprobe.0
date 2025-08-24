Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2478B2264C4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063794; cv=none; b=UuMpUXsDpAA7CeKG918/5h93fwI+/gUeZdSu62svJweAStLxjg4bpBXJgYZe8IJFaetujH8vZy5TkvxvyX55STf2s6yAPfmXgCH5fkkfCZXLLz4iKVKj9U85xcxawq9a9f7kbpmR63edvUPAiFAEOJ0yLwx/a1VOSrJVSLLejxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063794; c=relaxed/simple;
	bh=mms4EgZtyrqPylYlESuMI7x9+KkkW2G3/s3WNFBKrvg=;
	h=To:Subject:From:Message-Id:Date; b=sYaE1JuA2HfLL8azph8wvBXWjtJOUwVA6WlAtXmFcOxKBf7mLDKwVGPFUeeLZwFh3cnjkWhWXx6AtuYeuf/SGz6jY6nTxy6WMaBM2Jtm/yzFzE9l7LeM/vQxChpgOPE12JOY9j+3JSfrQ8mMX9703aaaZWfZ6KGjKHZ8g/LOIbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5UOT5+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5UOT5+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D56C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063793;
	bh=mms4EgZtyrqPylYlESuMI7x9+KkkW2G3/s3WNFBKrvg=;
	h=To:Subject:From:Date:From;
	b=X5UOT5+ll4QjC83txXP8gHhhofUNVmbKJnrwtSPWYnYO4cBIctbGxPQG4cUCgZqPz
	 AZ91TLUcku6yj7pF4AAr+C9j/fvC58EZbULK8qxXmt+FqA+vSfv8nSLS9PaaHpO6z3
	 JQApb8DAVCSo2roQPcm0kku76YfNv84/dXSImhhbemf/aTl5NzeAomcTl7pz6Exhc7
	 AU8HHeuv0mj09spxDaEEMOA4HmLEFOZgbgc75Xp2FU+PsMNb+A5KAF3pcHF10VZQvd
	 BsHaWYNomoMRm8Vxnmc75aByO82+HQWCEK4CIhHL/VHRw3gKnrsSRhvkqvJnjzLZDA
	 SgIuwui8lLntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDACA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606379358.20515.1476941028226765034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870d8842b30c415a2c9652c05cc0d32a4a09e36a4c3429bf436697c36d5c8f44
Date: Sun, 24 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756063793

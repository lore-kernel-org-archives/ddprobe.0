Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150712550AD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757666994; cv=none; b=O/s4Nu+Bbxjt4OvVZ7ztKzH++NehzcAG75owBcvVghdthJorNGUc6XEo9G8bp7yXRXcugngl7CdyMOeffle39QmrMUEdka1q1ZG+zXQv/gOIs5I/k8abeBkiLHAhyqDO4QpYi3O5fMZ1h0bfqFAlfGoRiHajaPj1LG+3BaRK4JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757666994; c=relaxed/simple;
	bh=DeqtYtKTAlCHqHZjPfgqoGsneaM7uWGIpDbdYVZBt2U=;
	h=To:Subject:From:Message-Id:Date; b=fdRQD6SR6TdkvEaFJdraM8UAARiuDE2/HmDr6oe6cXl22LbjGmCnQYbSyGX4HVuAMnGW+WeM78RR/jN5/a2pCGkkfSGl+Nrd9SgZz6OziMY82pHFwXnRZvZ8Gi1DE/aNZGmnCt7VM9xuwJED9Kd/G4i55YAp49ni7vJjfxhkT2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVqmiAsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVqmiAsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC13DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757666993;
	bh=DeqtYtKTAlCHqHZjPfgqoGsneaM7uWGIpDbdYVZBt2U=;
	h=To:Subject:From:Date:From;
	b=hVqmiAsi1HaQwBEN0wshhdvqVfNhaOSxvg4pbuTYr4njgc/giGNr6eCEsIa3igQXv
	 0ga9/jLcWJQIGfjPaZQ3gM2iAl7l/jjLa3mX2gVj5GmgfSM+brKqpQ4IZh4lTGIczu
	 qohWiC83YO1Lv1UgN7eArBYcYDF+oqsmTF/ojH0ImajSxdY3Rn7cVaGQDauSXgsAjo
	 FrB8cMWsWm/38CTQ09M0+i5hgA4IsY26xuSAIHVgIblo1Hp9hVsyIzvrZXbTnOYCy+
	 8eRypmQLw802VmWONifCE4wbj9hr5vkwuAj8SnbS3VGl3gvHtbonlMyTh7bTNHXhHL
	 lH0hXeZsWkfjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE8CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766699360.32499.3593225162435678501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7d25a33ddd4ae9e069760f026a99d8c4a50b662c66f77db2b0e3bc86abc961
Date: Fri, 12 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757666993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E381E481
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714602743; cv=none; b=YYx/eBHvfAv1y5Ezc/sDaOuGgqJdMSUCEMmo8JnzPSokqFU0LmAzLa65SiZSbcL4BA0wVSZHSLCjrVwAnozfNwKSohogt7O+2amK/wXbP51pZibaXjfoc96xlWtsvxFAS+FU5You7DzY5DCUE1hCrIju5JVhnSB0PkqUz9m5src=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714602743; c=relaxed/simple;
	bh=sWa69008dzSYgRy8ImxgCePFPe0dbzz6h0he/FIBIuU=;
	h=To:Subject:From:Message-Id:Date; b=X9f07orvyBEHhpwd6BS0l8S07TNo/jEkOS1GhDd4+/GcmarJDbGMm+Sq8hmE7YnxeDO1RK71qvoITVrg4fhFUjXw0vqsM8a0KPWidS9k6UUPBcGEhbzH+ROkc9y4MnCaY9U6zMlQvFZFMfH6daZR0beU5KFaxuXLtv8qNHsz1vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2EU6EZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2EU6EZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6997C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714602742;
	bh=sWa69008dzSYgRy8ImxgCePFPe0dbzz6h0he/FIBIuU=;
	h=To:Subject:From:Date:From;
	b=f2EU6EZXCizscIaMQJTa+euXYvAum3ogh/RI0XSNfZZPl/mRRC/UdZxr4+GS6tpDf
	 W3ZCFhtte+VokfE6ii/bi+gKwVC9NVM4yTBmHqiHDRsCVm++3GDHR+ffsHLCfd223+
	 UQLAzIHs3Q5/nZiZXQOL1LlqE/zpMCjA4B6lGwRVPj4YH3EAjOYzBIOWHnmOCDfHMI
	 Qi3LftxGRCaBtWMAAhcq0IxlXum5nkVaCJXFRP3ONnqG2smVjMYPwKecczok04r8uo
	 59ovwFIKescMi1kZlhdxfhzgXD4nCcVE71cdzOv7nNJRWGf/y1ilANp50cjQK+MQT7
	 k1L7HVJefXOGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A7AC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460274277.27615.2326078570556895496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4093d6e9087e045cfaf3a6f41d1fb38ef2b586817ff7e9828ab46e52ae7fa4d7
Date: Wed, 01 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714602742

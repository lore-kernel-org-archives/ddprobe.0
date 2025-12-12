Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370677261D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765524774; cv=none; b=SlWejclIAK1WB1Ps2ABkJUD3QdUqpEIWE6RyZZFqa+GMpGqxpP+oh1YvC6EXyDei9U07yviknrjbPLZbmAXX4h/1Lufac3+zbtt7zcSjleWS150Qs8WmlcMktSpzciaZ7yj/K8Phx77ZqR/tLW66wEyBfxe9tWcZcIIrgBhi0cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765524774; c=relaxed/simple;
	bh=+K09r6plgZHDYIKWYzmWotVOZehJ51g9koafgVakk0Y=;
	h=To:Subject:From:Message-Id:Date; b=MVlTTvrQk9Wwx80RPXXYTeFQwWs0THV6m90E/XEbv2HqUB9qkxY4b1QqaJvxuJV3W0pX3QWmia1qnzwLN/Vy5QFplGPFZ4PjwDG2nxw3UmbAcQOI4HL42PbLmPM08H9rb7xXYXKM4UerYaVQ8XXj8UyAUHhwUn2vWappep74hbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnnaOunv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnnaOunv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765524773;
	bh=+K09r6plgZHDYIKWYzmWotVOZehJ51g9koafgVakk0Y=;
	h=To:Subject:From:Date:From;
	b=MnnaOunv91WCm/o3eIO7FRWZDVTUL86VXW0Owx0jBGy6OVcUjbJAqUp6OR/xv+PFH
	 RoiD3HUcqy27qjufU1ESIIEDDaAa7NqyCc25JfVfPNnQdCYMtLQ0IBhLWiTz9+yYyJ
	 nIgTFMPd6g0TAO+iY9rOP299i0vkn/1JH18Z/QQuH0EE/Mintq8T2cI+7tIXIAcoTb
	 etcPfU8wNGFFF1KGiWDM28G9yMISEjMZdBKVC27h+8x0j/Ff2rljsr0RU+quw6JumY
	 8M8g9Y4KHK5SW3UT1EU7QeI78/3qL6q/P2ldXjFmgy2rayL6YRKdhzpgvIlt1UYCDl
	 PMSTIKN+8+26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98282D43363
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552477358.18730.14340152487677605027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ecb11dfb30b43f5755582cfe973c6705b6b7fca007855ec2d19044346a1f50
Date: Fri, 12 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765524773

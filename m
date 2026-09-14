Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D1531ED81
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789407034; cv=none; b=hg03rE6fGOOt06hJtRpoEZYOslLdNF7rxrx+kKdRraNApjJsc8yPmc+veUgNpbnYw6eFc380YY3NyU8gt0YmPnt+qzzzbwXLl92H98LmZStIIO0L0sw5FPdYLCm6r5SOAqsrLhHYPMfYJ4W78evXBq0AVPOEDHOKXyshovrEBwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789407034; c=relaxed/simple;
	bh=NSXjeezfF9BJv1bhVbAF1etRqnO5BBKL7x+FYpl8laU=;
	h=To:Subject:From:Message-Id:Date; b=iJAzA8cKiMDhIsoHYXYD9GYWU3h4jIjNT8XfRhC3usUtVdTWLXOc72lFeRui2ruPgrsUZTFZadnNODqApbzpBH9K4MoaBgO2PvDQdzWJTbfX3WK/H6BHMBk3c5h7hsGMENEwEPyrZfCpUccto0ZATKiiCqPTR/kgTW17t3Q0lig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE8iIqRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE8iIqRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5797C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789407033;
	bh=NSXjeezfF9BJv1bhVbAF1etRqnO5BBKL7x+FYpl8laU=;
	h=To:Subject:From:Date:From;
	b=dE8iIqROUnf8n0YHSnq6zxkUZ2ozNUf8orecoxEF1ARwyySAGgdkYt2egPe1wUOW/
	 8Im+XIxc7Y7u5fAGdJuPs88AHTMZ67vuxV1JK1ziRrXCs2uHIfbH5FEFJcnGzScvwV
	 qtgljy+yHG/Weke5vfxgvU8+izoZSLfkouN6k2S/txdaw8Ar7Xk4LcO9LCnkBggO71
	 +qwK2ri4f0cupsetXvh2ktML5hn6OosWBGptETPwrCSf/jbH1KpdT4Pqmdz0OqJX1D
	 +lB7D6tC9kkQISRLevSVzF7rm8weSiviuCsMTCTF2ReyHD0QhoJkv5ZDan0TVaEwoI
	 BoVtX90pQX+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EE2C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940703374.7293.4399858554182656070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e53ce7aa518f04587b2cd631222c1a51e18e9ba6eb298646628abbfb9a8a0b9
Date: Mon, 14 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789407033

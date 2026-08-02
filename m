Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521D22FFF8D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785703234; cv=none; b=QTOaDRRb0K1f33jxidn44BbiAgb0p1jwOY7tpGUZmKFleuF9l/VI2m3n6FO/mJI4G4hkWfKSTiV/MwUzCURxrv/MQjq+xAZiOJegY7e+15vN9mt3YkqM4mapToOqTMx0JepF3FNh8/QMSTXACtaQgxe2s5MMCUOGeDN5btbohOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785703234; c=relaxed/simple;
	bh=rwDuIzNRkLm9AiAFG/XkutdZGGUksdv1A9Q4Pw0E32c=;
	h=To:Subject:From:Message-Id:Date; b=fQB24GzAFHc76jJW5+e0/ZFA77gOEh0VMUQjloyMnrNDG7VHPALb2eUigyrqtFjGJg3VNL+n3YxjplId72YKZCZXHZIj/rUh2SVifg0XmJiEOWtso+Wq7F1UL2o/pE63eA2uQDTG76+ejYCPXFVb/Dmc0pVc6ZfiPcu6wQ3JgGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/GlBgMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/GlBgMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0AFC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785703233;
	bh=rwDuIzNRkLm9AiAFG/XkutdZGGUksdv1A9Q4Pw0E32c=;
	h=To:Subject:From:Date:From;
	b=H/GlBgMlQkO8g4QGAd639c2eXGoJ6bq9HHZoaAJ8pdmhmEQfWSJa1cIdopcDH/Hue
	 bKPAL5gjT+NwqwtKMqiCUCoznA2hCecfrgpbnVxsUMnahqc8dtAu4LJoPJrF0R+Co5
	 Qvirn+lVIgtFj1B1WM0QAxnL9Ry4Kc+SdjNw3cWKQJ/HIbRh1z5iz73dYF5huzlqJi
	 YkqKTWTxh/VpDTwIa7+pabyuq5hSdumy36TFYn3SIjom6B0gSNPE5CYoF4YPN+Px9T
	 enjs3/urfqoLYuMlH0RIrkSW7FKfRevSyZdWv+for1llHy1nU+2W8INREe8i+/4KwG
	 zC6S/rvLmANKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A894EC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570323368.31960.5969065633825184003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641b9ec6288d204022bd30a19e6bcb6f1ba138e723d18dea708025a66eae9f30
Date: Sun, 02 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785703233

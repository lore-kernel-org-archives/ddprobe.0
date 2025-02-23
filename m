Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B75E136E3F
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740329334; cv=none; b=FfFfU5O/xAJYmRmEAeZMYD6naJVyO8oNCVECEPYbr0OCwIlRSPeEQoJqWC867jRwoSTCTcMlZmNZzdwXt2oO14GLtptKgoTwmU9tVHI9CcEuZNayPWpdco9S8ftV/9sVFue+UviBLFAV91ICePberxy2KUQ0Yctjlscg9FmtDV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740329334; c=relaxed/simple;
	bh=eJacTQ+uiN0JmvB97QogOjSmAPowga1JPpSFQZfD3cY=;
	h=To:Subject:From:Message-Id:Date; b=SOHlo6qvGCWjsYtfo1gzSr8gj6zN9ZsGrzdz9NjNeojpYzr/Ouc/6Ty9ZihobTnLWa1TBidm+aiCtKLb49uLlWsEkR5T8CCISmNsiQfVMgXPJMt/Pd5hjT8hIG2mKIpgDNEte3JQal1MmWuwfUnNwWUKueUadu24Nw2kheqo6Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjij/EQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjij/EQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6518C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740329333;
	bh=eJacTQ+uiN0JmvB97QogOjSmAPowga1JPpSFQZfD3cY=;
	h=To:Subject:From:Date:From;
	b=Pjij/EQQTeBy29BwCEVkFZX2xaiA27KQiG8XBxjBPVVpoabd85vARopRA6MqsJHYI
	 OYjpVuLBHLK8p3A/oHmEbrk6CteL5b9v7F/xQrbEp8dPYw709DiLgOcwJcSxQlMAvK
	 WlkPeSXMoFqd/GlZ72696NkozyWbw38z8pEBtz8iuaBHwNJN5+UULRcHMDmaP27gLm
	 iLuirPBXiaMNf2c68CHf9VZLZYPk2JKUTK3ofPVOHwoGnqE7g/xNRSZHJb5SsW3MVI
	 iqLQtcDBcgnJdm5zdSUmbsdsrvL1GorGbiN0Bx97liA6fw3QXX1b5ztkU5fCdnmyh/
	 OwEVEiJjt4kvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0119C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032933368.29609.7593849841493327968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4c781da99cca6c90ea9347037fe788993473624673fe13dc6e6acde0c7cb85
Date: Sun, 23 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740329333

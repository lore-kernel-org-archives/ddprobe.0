Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032B94C97
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752972594; cv=none; b=B8gWod4w/TfYG6q/9vJOaIy6YHvdmlmb6p+5ASnDMEU3ZsdnX+kEMkN+iCvMeZGEPH2BnJrCX3YMD1wTYt+ujv9DcCTfQ+AU7sp/P73R4LiRe33zAUYpLp/ylf4CP8ou3UjjIwsUPVw4yXpK5PHQ/f7cFfjHgXjbkkHn+4NsSm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752972594; c=relaxed/simple;
	bh=QqmOYaSwVT8n5SpRRl27x8uAjoXhhLcFFOHC9xGaSYc=;
	h=To:Subject:From:Message-Id:Date; b=BfCdVtfSOkvkrTJkPs4+mAR5p79z4ujGaIeVpyTAUICaCWA/1ZYG6F26iJ5cx2Jyv9tIrJO3ffjSUHsKSu8DUS+girmfEm2DCwWIXyLZGwb/YeGyjAbaVXC7f5CkqxuHXHELMICZ/OFxwUAUmHtsjcdXe4LVAnPFeWEufqiJ1us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiHUgXkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiHUgXkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD068C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752972593;
	bh=QqmOYaSwVT8n5SpRRl27x8uAjoXhhLcFFOHC9xGaSYc=;
	h=To:Subject:From:Date:From;
	b=RiHUgXkvGfGHbYihhduPN998AA2JQL0TAl8s57gGq3l8WhQVqiuONhRh2RYFXA7H3
	 3Fvb89p8W3U7VHGjR++L8NnbMvzP9CRAGUERGJonxRjdf00dSvkooDtKXoVuQ2efn7
	 HRU8rxma5bSFCvU4Lw2joodkLJA5dPZZqz6zPq+vrxLlKcSyCw7A6/5mP8D7ArngUc
	 Waka4Ttl/5muF0NBzpravYJU3jKM6HsSy2uvUGHlvjNgatVvzM3K2frb+j4clDr/4n
	 ijcpMWDbawYu8uz8Mq65ihXZhYotrY0tOlWxuc74gSApCf8fzfTIBsTDa7Jecw3Kn3
	 hYrpgMIlEns6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300DC83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297259358.4753.15686963276612387719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cefdfe4e6202901050bc59d5a9203a81a0a6da80f950608f855d5c39c9de223
Date: Sun, 20 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752972593

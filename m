Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469E23264DA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780667674; cv=none; b=DQmKVZlY95r/Lk2l0Wn8JxtaYMTn3O15R7m2UjKB52HRxgI5Ko78Su6HO5WCR48zmC4olUrLBF+rqu+rLUTOLzuYhl9kmjI5Wo0+2xPJKKFt4/Ci1nJqrllJsg0aom6N2kurmK5wNcTm5Be8aBuCE+4iZRipH6DNB/HbYA60Q1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780667674; c=relaxed/simple;
	bh=uSSBirQ/ipCSxvro1RCTLBWXTxWgm3fBLf4yKeTp7uI=;
	h=To:Subject:From:Message-Id:Date; b=gDjNsFNX8gmrGVKCSfSj/NWy7rHzjH5hzYF6UyWUFD1P1tKicRo5NvWMMbjMzDyabNdCJvae+/IMiT6jEsSa2xPobGNMGBXD214DYOFzwYZMVDTrG6lgv1uDhgwZctinSaRmuwulTkCGpY3wXKirMd1qNbIpU1bewS2iWO0GJPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A23FrhXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A23FrhXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1105C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780667673;
	bh=uSSBirQ/ipCSxvro1RCTLBWXTxWgm3fBLf4yKeTp7uI=;
	h=To:Subject:From:Date:From;
	b=A23FrhXIQCj/+/iFGBGn69S39Nzxa/Xf74YmrX3Uwb5K9fFjcYdCilpt5naspuQkr
	 rg7e/lx7vdIUMXLNiTPHpTVqHaGuPOv02S7CJ28YvAEDx6ksDb0ExUd8JSFNX8lCws
	 zR5QhYFZy5qaCne/IGwBpF8HmEmA34juruWI0JAfwJ8J+HTJ0rdBLtPhS8C5HPNxZs
	 BuJ/Q7Uony7Itan3s5ppPVvMQtdkl3uWdbOEuTjIaWKKU6ZtbXgERoPIuupr33Mi54
	 BRSU/qapuPhR+b6/Qq9/mdZ86TB1JpgaTrDZqUnwUQLoNImhLtdtKXezNaoQ2U36c/
	 ZUjzZFigUKuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48B8CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066767374.32674.5659157986878547012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db98242df0c27b94647f869df99613cad918e2b70722303787b34c71d028c704
Date: Fri, 05 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780667673

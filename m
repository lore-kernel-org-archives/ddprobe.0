Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549392CA5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727583354; cv=none; b=g1u2jHKrVOej8JkkPqzitzka2IICwy1WvkMMJqBuCvZCobIRGVdOlshKEh3mZmol4YokuCmsR7kHn9KgxLHMvcP9ff/PSLYyySr9lUPwn4xn5i0PRuJ7TQYMvPkPBiK9agPD0teE+ECBrW/pVeY4kQ+LzXlozdIkLfqO+na9tNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727583354; c=relaxed/simple;
	bh=F1n3AqlneRNzFQLD342OJp0p+kRTblGmrHvs2iRVuLY=;
	h=To:Subject:From:Message-Id:Date; b=RbjEVpm9oTcwnHGTWs27Foh4Huja7aMgT3ipgkZXGjB9S1fcyCCc+VVfDtsCl0C4G3qMuLqG3GGm8L25QrXRcNIokeItAskFFW8oClzYebmMekicBphxoOrC9SlvyrJ6OWYspf86RtPg6aI385IiEFNMrQ+K5g/w2fs78N/OOWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGn5T/Ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGn5T/Ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1175C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727583353;
	bh=F1n3AqlneRNzFQLD342OJp0p+kRTblGmrHvs2iRVuLY=;
	h=To:Subject:From:Date:From;
	b=JGn5T/Oxu+9vs7KZzjWPKY1p9bltxt6/msBQpMe+FKj5nzYjFGV46DY390SGOxrwA
	 OyynP3fw6eKRJquF2xxi9PWx3ZmiGpjPKuJjFmtHDz0b24HpKBV0T6fEeDeXh3KCwP
	 +iZxilL9sMwci025k/bSrfoWRiwePRzAbWxadJN5/xGljRuLtVlu7I8J6Gm1rG7Ik8
	 MeZ4ACkxKaHnMGvab0EIdXx9LkGxPcTlYohMUoWYkYaS3wQulxMAsUgbtIBoWkfaDG
	 eVkmGWb+cU6GgBLAj7s5AHW/3sfDD9G7qU8rHKoxWEG0EUrkDTxXq/B8ezt7xo3/7f
	 wFMzklhZbqBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E48CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758335359.29316.16879639889573089183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1041d3f9e02467207a8b93a24370cdb441485c343e95effc2462e9c43d377943
Date: Sun, 29 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727583353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25939220F38
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761373794; cv=none; b=A4O+dcFBDc954z7gwb0P3cvOPvvwgPd1JgDdxQqDPfJX/1BikeEWJ8zecEbwUZZAPZixKE2EQY4u3WmJERDBMTNQw4xOmEC7lzWYXkbXVFhcuTcKgTBZNbpv88UyPY5MvPmfCvnukotKsrtQSufUxlbCCTiofyfAX4ESXQhgRH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761373794; c=relaxed/simple;
	bh=qAft3HVBtaTffV84OUgtYXm2NPrPBD36JF4hgj6xXJU=;
	h=To:Subject:From:Message-Id:Date; b=Gja8kMDXJH6++fjQoWrHqXIJydUAQXo0hoKhdLwDRvBdh+qmvZj1bMIFRQ2VzIsORhEtsMWXHynKkZG9WWKSnsGN4H2bSk+9bsP/68IK5AfM++NhHrkeDR/xchIWc74dT/36DU2KBu5QRf+9fDBOwckTx8+7Qm1vN9IDEgUuZIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nb0bEZXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nb0bEZXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9743C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761373793;
	bh=qAft3HVBtaTffV84OUgtYXm2NPrPBD36JF4hgj6xXJU=;
	h=To:Subject:From:Date:From;
	b=nb0bEZXfnHrdnwIPfry2Tp5bhldw4ynUnYUU3j10YBi8edsRdRMSXFp+lvewvITGm
	 7DONipXvFbhEhv1TP3YG8VkpErheOx8bzK8m16iOrFLUe/NCDidWy1P4H+CKe47J5T
	 vhH19oqXC7b607MRrdmMGO4w8TthCzD2H9gykGc0+1hjjJ7mv1eGjuHaonSoaovEoB
	 Lvbcr0ThT5KySX10MhqLVPXDWEDaYxFXsiSQZ3xKsa0UHp33zAbLJXfu29RebjSTSj
	 j6sIhZJG/74aELBlZY/HtniH9XbsbFGy+QpglThsgU69Iv/9OiaJL5elo1aFt425ae
	 XsNgrLAMLQttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96639CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137379358.12056.3354785884905052208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b211e0091f3753e75a0a412a1f8d810ffef279b5b5a0479f9db72526e144500f
Date: Sat, 25 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761373793

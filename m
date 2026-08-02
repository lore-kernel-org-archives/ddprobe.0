Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001D272617
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785686435; cv=none; b=SOTgUp5DqfvALBp7DbCzXOriVUaG3G1Mlh9VS/CkEDct0gaWz16UZGG+gt7Xie/cCICAOVPSqZ87JO4mn7DdkPWDsPKx3bDFMTTT1nS/CHStuwRlPsgL0RgEYTMKKdLqqtJwVnS4OzZJH9ZP+MNcnRgchaaZukLck1dSSvD6Akg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785686435; c=relaxed/simple;
	bh=NMMtdTdcbI3kx+2VOqTzzPAoFDGGZjpoVrxHnJZzZM0=;
	h=To:Subject:From:Message-Id:Date; b=c5K0tAksjJNd/tsgAfmqSXMUu/FMkcb/nz7vKOCEhnelSTLIy9JRzbUulPv89WkMc08DdFfxuYwUNepjNP66ZeamcVl+XqIVPAA6Uyf7ekpz/blNfm56b/9ZwtTQyw7hHi+bbnv+PLvXbZ/Dsi0EnolxMMSBMKDj7IgFedwB0wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOeNCXBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOeNCXBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF7BC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785686433;
	bh=NMMtdTdcbI3kx+2VOqTzzPAoFDGGZjpoVrxHnJZzZM0=;
	h=To:Subject:From:Date:From;
	b=nOeNCXBBz6lUhIOwpSLSjXfVTQ1V1P56+dBOVfLQ1Ahf2l91wjmbtcL8uJOIErX+M
	 FU9zmyQICA57rvAaG2qpOZIO2gyXdE4JXP7KUsuUWejmoVAw1Rhdnxw/5nL5nTSNY9
	 uctzIDqC3WfV6qmTfb+gX720hHxtIUS8P7rWwbLJVwd9NXotF9aC1OcqL8ECg5zK2v
	 G79/pO//yK/4WoUFlufBw4G4GNs2vWBNFU67AXXLqL1FGUsWxNPahgU3gOY2RQoAm3
	 IVzV2nsUmzBm2iJCOfZ/rSkqWzE5wQO3jPWubFNHUmnQ22Mkrng03aDuf7V1jhKOxp
	 Ug3Fi2y3WuoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDB6C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568643368.786.17266102969452382225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cffb13630fc2ca6a9e5bff7cdccbe4dedf322e489590939a269e1b351e6b03
Date: Sun, 02 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785686433

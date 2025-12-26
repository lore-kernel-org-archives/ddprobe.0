Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0160B17E4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766708034; cv=none; b=UBFgXqWicjfa4aCEL0bzKxtb4foyIIW4+WgrOFTbItaVGXUGRNzsKTZvAhicyFon+reVx4FoLMkEfxKCUeGDe6hw0HVGAyV06CLiq+6ubL5a1egGky4RM7oRqJ+L/Jjv78N/sbfWwVSIpAuLgiz2mkNZinuTYl3AYRVNuToFNpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766708034; c=relaxed/simple;
	bh=KGNkgZwxTtvKYyK1ulRLi5bZlldvmJHRNOtCdsihJIU=;
	h=To:Subject:From:Message-Id:Date; b=MfAttDopSFYPilA7qiAnJr2hdNk2oxxLdR7/Cs7OpfCqxIbUqlXdrJuJhtAxso8Z7NICEw/EuLZvMv8pPnOZht2PG7G3axUdgUmo/A/d1fADW2ZV0gJVgx9MgSNIgQx9PQybJmOhmhhiu6Drox6jX1RccXT5WdElL7s3VdjG/MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp2tWhFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp2tWhFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F12AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766708033;
	bh=KGNkgZwxTtvKYyK1ulRLi5bZlldvmJHRNOtCdsihJIU=;
	h=To:Subject:From:Date:From;
	b=Pp2tWhFQ0InabvKBbQ+mBJkjPichMNNIPzHp3UFzJ34hvZQs2ReNNOc3doZVkUIBJ
	 KWtyC3aTUn8hzqJ74a0T26ihITodPvqCCWicsBcPVm61Omx6PVeMQqbayZPda+nf7r
	 sAtkuCwfOc5c7fIGzS6PJkZ7fdPbXLEudC1SIOwyNc9wzcXCFB0K6TmdTjQxTfoYMh
	 Q+tkhYi1eROG6Re9L73vceW9i3tme4ho+FX/Tycv0M/aXVlkdU8NlPXTNiJyCSIHi6
	 7LfhQMe1e0hmMzvas6C0pFpYmTiCM9IEnFjFbhdK/PX9phg2MyMQNAvqH8UCLpgQ7n
	 H59prERkirVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90699E7AD4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670803358.15422.5106532507514958262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edd4d5ed71073c2a5ea44abb5e74189ce63e8709427dcc3b0c9d0aa49be9a22
Date: Fri, 26 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766708033

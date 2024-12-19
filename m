Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D2B380
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734566754; cv=none; b=Td6CqPusKvi6V5bc6oe6m6LZhUxg1ztdCJmeMZuHvltBjBaAy+JH3eEdGpcGSt/ddGIx8ZXSMj90BH10XrvGU2li13iIsTS9yAOoolKTr0zF0vFLE6ldqatj41UJLlNK7f8JhrwPf4iJqxkNhI76YdWsefMOlJtc8tQCt1fK0FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734566754; c=relaxed/simple;
	bh=UKau4uaeTyzYCp0gzIrmGVQ7tmNYNW+mbSAXAoBV7TA=;
	h=To:Subject:From:Message-Id:Date; b=VVbF2YSzEVIMMFZXFX2UoAf2GK22zysiXeJ+lbouvlcKE6cKHTJQdjXuV2CsiDzm45Qns5qaKyRJcbTRx7RebA5xWtJLb92S6g2VwaB24FIJ0pjUglEN+Mc7VPoEdGThGAoUsKmtD5EnxVVZu/nkR4LLhx6i5dFMoEZOq4m/D3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poEG0Owe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poEG0Owe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC20C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734566753;
	bh=UKau4uaeTyzYCp0gzIrmGVQ7tmNYNW+mbSAXAoBV7TA=;
	h=To:Subject:From:Date:From;
	b=poEG0Oweam8t1LnEJv8X+MrE/quDKp4eS70c/DsKDFhsvyzPhkpHBOtKF68NxyxnR
	 f7Zce6BWqykTjLWROTjiYBuQJ8gqwBW3eAcmU8EGTUSumQEvpPRbjij+oZLndcfhe6
	 RIGZm0AmvGIXIuzx+pHVWcENuV2Na9NyqA+PbH4kfpIIJSSdvsCk73+j7sGaVjsxSu
	 2CyaBt6lsIi6wzH62qCAO6NCg6CoC3UhULTmuwFKLkWvbUBTvMm46lcA4wxnMQyyew
	 efRGObHoMlVL7nrwXwSSgeMCI8PfqFzLdsH1M0WrWsmHtWrb2drEz3Vb4ywqRO34Oo
	 EGuWquV5XUm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BE9E7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456675365.32350.10303580103337682211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd9e4b766e3b22df6ab3c6d3de8dceccabd9867947845f9b79886344d1b5a81
Date: Thu, 19 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734566753

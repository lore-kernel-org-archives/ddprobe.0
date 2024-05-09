Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B656770FC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715289743; cv=none; b=Toz2BncTQYnYZkuE7HMUnNuvEUC8gcxvsMtEFRLNRNI4RWaEM5MO0xprg+Ap6De8lXYNN7vXB0MFCutEWPaH5zws/i17xGt6yzO7G7wSmLVlHoEuF/QMsHafMAtLNE9JA+B65abM2IjKigkMX/TlYBd0IwQZRGhiESeNBWLlpqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715289743; c=relaxed/simple;
	bh=OfwcRHs1mtgfhkUlEsYSTDE7II8aPTEFi2I1Raszw70=;
	h=To:Subject:From:Message-Id:Date; b=HwZc2isr0wHyGY95HN22gRxKRW6okzd8ud0rWomSfX0wpKQsS8uXgvj0KpAvvVxynewAXcsgIVZofyaotXQivvr/1V3XZvneV1aU1AoV+jwGvJ70fEIM7TH4z6ES+ASXRUK3QkUJGN+QlUWrqIjE2GtbcBQBF985UMUOQOHA7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq+5VTVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq+5VTVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7866C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715289742;
	bh=OfwcRHs1mtgfhkUlEsYSTDE7II8aPTEFi2I1Raszw70=;
	h=To:Subject:From:Date:From;
	b=Dq+5VTVPKKmcjip5Fn9aQYYzIcupOzTsIB13B8ROhuVZhM2VwrYt0xXfGTGNSPqjq
	 El+JhC0jmpmuygdHwpn12gRvwHq6RUZ61Tnae12LA0zWUfi2QFoyiMXht0GhB2L4xD
	 uay0K2E6CRZMoj8aGyIZ56ctijaxrakSWcZ2IX2RGRLkwtgPkYeRmTFnK1StTQaaQV
	 OYzJGjmnDee/PIVg5aF25Mmc4dyQY+6TcGzkY21h1VZI17n79pvwH1dn2pHIEW1x4S
	 zGvUic64XD6o67L5XxkSLy/kX0g+Qi/kb54RY7gwMVRSwtGlsPcWFLxRqAb1nKP7vN
	 GTrwNxly6Zrkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51B2C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528974279.19727.16058043701600175510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cad4b0a82f128849c9b9a1203dfddf4ecfd47acb3a8d630cbc5e9f032f26846
Date: Thu, 09 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715289742

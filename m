Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B9F53BE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750703394; cv=none; b=QO51sDsKPYh13ZGHIRe+xIeVwTxA84/2JC8rj6zhiWNy4Ji2OPnNOpguh4Rqt8BQ/ty73ueUkWyWJGWY00/IQDTr/7oA9aL+wSLXAeSMiTgsNoAY6VRM+L24prUBMgsjarXAbXGrOi3xEdzpI88qZ/W/0DHhpfxw4FpC7oS6fJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750703394; c=relaxed/simple;
	bh=33guG5w9ngCfNyCUTqXXusI9KXLE96MBi/q+qCa1pV8=;
	h=To:Subject:From:Message-Id:Date; b=feiCixevyXDDYyGcxP3uXWB7iRn8XVZATWi5LEdGRQGs97W5YrTqo86FMWfohB5YqBNLBt+8mtjTT6/0jtb2vn5euhsTlaMuVnRhjmK1KiKJ2WZXBK7YipeXtF3cxQvO+vfTvHSGWZWntS5/pMIdw9Px5H/qYpFkQ8LBkrAO6kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErCkukL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErCkukL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750703393;
	bh=33guG5w9ngCfNyCUTqXXusI9KXLE96MBi/q+qCa1pV8=;
	h=To:Subject:From:Date:From;
	b=ErCkukL212999dNT3Vk0HH1viat++hdr4OlvQEp+u3y1LrCmaOGafZJqVQ5giWxBl
	 LoiLexvmhTv1F4TGsir+Txe8er2Yt43xIY9rz+Qgyjr2r1eJkAlZroYoIJ2maFq7Ki
	 rMjRKVsf/EU4Biyt7dff2mwUWP7AzLG2RZqYamd/EViyMU6soDH0IeBZp68OUMPUaC
	 2aK5i1SNcTQOE+4bFfJGp3pnY7Jq3gKZJJgEfZVeLuw1jvseHhjPMa4sXHAA1sCF2I
	 2OegCMTfUN+fSN1bybnL9g5ohJdMmm1jag3gFP3rCWAMlJ5WE+gMAJ47TNFXVts5n7
	 XD0noH6oAu3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B8C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070339358.7333.17571405155338027238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5fe5198e986a9e112f4d36ff353726a7ce053bea642e5f64553e96a1f7a372
Date: Mon, 23 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750703393

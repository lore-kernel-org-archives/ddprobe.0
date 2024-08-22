Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC413A8D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724368554; cv=none; b=UTJJ4gWjbruT64nMfkUe4Ef7Sg51LQ8IpV7XeukT3f9nDgq39vrf7sdmntUrG/pt1Yn/mGvBowocgLv8fYuaCYreDqxzEozP4ZUoZIAL6a0K8tC6n+aaBO/4AGH1HW4HrDxUjd5ECzZljsXtb7CAxKrfbQ2wU96NQ3dw/kyJbDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724368554; c=relaxed/simple;
	bh=aNdW6hnun6DbzRxsAjLr4a8+EeIfwHD1CW/7HXr0+q0=;
	h=To:Subject:From:Message-Id:Date; b=gnr5knwTt0EV464S9S/j2TffkVurJCvdL0uPz3jZHPeU/5HDadCzdCPWxI0F5CNQp2IPCFGoAf80+JLwyFav6zYfuAOIgpxFHso/HEXnnLrA71hyMKUsfoaugsRDvvXRjTACBccmMuLQZHPgYAE5DQ05c2DIPAu2johBzaOT4YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKtfJQcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKtfJQcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2C3C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724368553;
	bh=aNdW6hnun6DbzRxsAjLr4a8+EeIfwHD1CW/7HXr0+q0=;
	h=To:Subject:From:Date:From;
	b=MKtfJQcmlKzQau0akehu5BC4/QXPzHJyLp/alMUPdvqH3c0bASb7u0vB2NQw36n6o
	 LhfpUxwc1y4QwVT2lyk4L7Q0/Reo50tXIZWzciRtghBpQj+Hzm63xv72Xb0ejpjqHI
	 XgZvJ27DKedIpAsiK77PiXSLS78PPbNkOYLhPBK9j7ldxI2BRW2Od7fX08qR0FIJ31
	 gn+9f50K5Zr3wSKDCVEORfJC5kEmqpWxfLwO+rs7QUpLC56rSNgFLls1wBrtaOL0TM
	 x2q9qFTjqYFePnPjjIFWpONfSEimwd4VgVXiO8ip21P3ReuhSooWHrGD3u0JfXLt6J
	 OmU6ASKuJqd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB0C5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436855360.25306.1348642069990043117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88c5513b74c12cda3667653d5801eb184ca5a2e56f26e01e22dc2c989103c82
Date: Thu, 22 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724368553

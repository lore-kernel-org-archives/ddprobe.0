Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300F02BE643
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751576394; cv=none; b=TPa9xlGKP+233Lte33FpOj/S9qy01aNfkhZpaiPeD/hy0WXcOs0YPizZBO361cN2CyJBFnK6fBBKyDTwa9GMpPvqN4ajA1VCtWo6YSv1MR9QNv4Z3ntTnUFfLYISv8mNXxVkzLfc+U4VSyOrvuevKC+hTFeCwlG08/7Av6wAZ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751576394; c=relaxed/simple;
	bh=tIJFkqIhV1z4I399EJAETdebrKO5j1wwx12VKzm29t4=;
	h=To:Subject:From:Message-Id:Date; b=Mzv1J1U+j11OXUMpgVwElJdnw7SYBmfwenv505uxifH4UcyLA9DrM6jVxkmQlfVDAvEICMS8VgQlMGU5tBtvUPYi7v+ZH9YAR9JysTGg0ym0kGR3Cg7+eRuvVRUNxZV2+c8LX3d9+iu4nqTsGtbpO/NEd+SNZy2tPXfswOkSVWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN0oqaeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN0oqaeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01FAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751576393;
	bh=tIJFkqIhV1z4I399EJAETdebrKO5j1wwx12VKzm29t4=;
	h=To:Subject:From:Date:From;
	b=eN0oqaeYahQEEHz+sqPXNdq7TQzYlBRghcckSeW/SQy3uIx+YEyUt6iXoDyI21WPS
	 HGrZcUJQBTgNfpW1WEfhrHLI91Sf7KG1hpwX82NLjCvpzYH45iVUpXXEL/7UWp6qB+
	 c1tKoItJWKOUPXtjxz/Zi6T6ufWi00hhEbuSPdFYnMAZwQsT14r4UT6YzIntWeiljb
	 9/k2vxzF2WJYtZ5K6iomSYtnDwmQW0v9+EVGFGVZk7v1j+1Fcib+q13kQsQR4FTxsn
	 RqKe4uJQTlhbJkyPBMqLUVRB3B72PWwRn/4tTQIqU2wmgQ0m9ay3vTmrGPiZt7J1Wh
	 Ukmb2yZ2yDgJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF5C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157639357.27637.17927986816296937182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98a4d27a15eec65b87cd87913a95f4b0eb81a2a3a9d22673a7d27f75e98e110
Date: Thu, 03 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751576393

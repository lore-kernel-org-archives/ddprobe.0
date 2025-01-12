Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218961465A5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736678754; cv=none; b=FYT40uCgdGSz8lpMo2dJwU8q15Ikvq1pAuKhkpMinCGawDbnB/aumy7fjIdndqTQs2c3o49QUmW7s2xeNIEaugrObJJFvZ8i2Vcxm/VQIZ3ptIU7OL6yLNsi4s/OVIhnHxvpbJERWj9ke8of0LuryJilWXZsJi5waVkv40tjEBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736678754; c=relaxed/simple;
	bh=2Gy3gEoaqZX7ImNHrRBqFmuZwqQAuefyy7LPpnndazU=;
	h=To:Subject:From:Message-Id:Date; b=T/bMmdKo8rNFgsjJThHFqnB7U/GV//KiPk6C+CSLm5O+M9S9Vmv1BW3KaFveHro7Xh7/pT9lh3DPPmi4OmWv5RZBoXbiBGvoK1N+5zatcjjsVFuVVXe4RG+5J0Kd8Ehr/4CyzX5q07BzOmybwqco7Xicecb6YCkF2or+elgEOOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tiq1+Rq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tiq1+Rq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736678753;
	bh=2Gy3gEoaqZX7ImNHrRBqFmuZwqQAuefyy7LPpnndazU=;
	h=To:Subject:From:Date:From;
	b=Tiq1+Rq4y+v8tXS6bBzpMfz763XYK1EZgvRJMogn8I5pjMs+jSPQIPaYDqWD5xDh9
	 Z3uVImnl/o79QyWtJnHf0Rqg/6Qx3RXwXql/8ZF/6LdKlkFL0DKWjQkL376F2oXrjT
	 qmv/efTIO0fpA+D38KhrbgNk7JR0dDw8MUDpkc+in4WzVljd4OfZRcpOTSx0yYLMQF
	 I+F8eZ3kQbJxej94kBC2gr2y5Ld1QFP7duyqRnWTT0xZBrr/zAqJttbgsRsS7Q1gms
	 F9qzW9dtkIZ2tYZAyPKtF4ocTZblv+e+NkuIrFxoi3kqfEfjjvM9xEQWIH4AgNpAvn
	 D1eB+g07+D1Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F703E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667875357.15952.17805475555912866538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e13d4f0e3f06aceb4959d17caf27d74a7ba060b3fb13248287782a4ecc3044
Date: Sun, 12 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736678753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D095372695
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772571894; cv=none; b=YWPEn+rNHVIKlqcGG2K27yzToMTuH+OpLIKQ3unngvN1aIHHiToFZl/IKvgTV0bVCpKayK5mnn+gsTj5YsGLgI/BUqVq3uxWYVQELNDDofCIrzYQImoG7Yr3I4HjbjC3crULIu9Z5eKvdc057wmoA40uII5GR6wpdU7Nm9UvfEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772571894; c=relaxed/simple;
	bh=bxXbvfQ6w7KUZzXlRElklxcmLjAKvN9jb9FbhYyQDf8=;
	h=To:Subject:From:Message-Id:Date; b=KioQ02XEXjeWX4w6oQa1n3BJ3bb+IszZkDrfEAieUqZ2cVjfxKQCkslDxnENp4DqpwCsGh7C4VrtrFqdeC+Uuc5MuPDZZxsn8fPT8udinQURNKtJeItF3KBPjy+Isc2N7ULboayCUcRruEAIUfHVVmE3DiixMVqBPHrxfzUxUSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFBhUMmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFBhUMmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5448C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772571893;
	bh=bxXbvfQ6w7KUZzXlRElklxcmLjAKvN9jb9FbhYyQDf8=;
	h=To:Subject:From:Date:From;
	b=pFBhUMmhCxSSRwg8EMV2Hk58R0aWmuq1hK13cMfVxihJ4/PwsaVdhPOX+xYvGw/Wv
	 Fdv5xMeAfKjHLnG0eTQ33k9pzr5r7dxGruuoYbnADWBQ5GrcD7bQa54D+v7OObKQ+w
	 zSZu8qfvtnVr5/sOKfsZwOqtCwhHoTtQs0Jr11EtPgkA68oLNvaMX+zxVMtfidtHxK
	 tLFayXoS6MYGRjPNiEc+vvlwzYEMYauw78rK7bW1kfSnp7kUszpQTrOFunW/7WoAIz
	 CMNuQQ5mf4BYhkud/cPrSznjZkDsNqXdWcU1KNF7xaLZwJUxymx8KHWO0xDVTuU1s1
	 xVYYKya6/ZaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A029BEDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257189363.32741.12658497088353561283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ccd07cb85d81bf51d738e4ff3334c140e212539e937f03457a1537dbf20896
Date: Tue, 03 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772571893

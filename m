Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220474A3866
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790873435; cv=none; b=Pb8dtaNaqk9Ff8C/AElffL5lMPPpGsSz55aXhK6V0PadugfB6mYxTNzHNG1WE8B/HR2mjD2Kk379tPiOzBzrM/oicFDrHU1nwQj1WCaUayi/fu7lmRgqyx1nhzaWOxam7q6cVhVHduFimL2IUmvwnvuo28kX/wGtuCBlh2Id2ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790873435; c=relaxed/simple;
	bh=rfhpIG6RjCDR1QMjvB6vqAtIP9+4T0ZbCf8uSprOsnU=;
	h=To:Subject:From:Message-Id:Date; b=tkbKWQ+MMhVKAVwDLIJI8LCED33kkwOMiP//cpROf3lpcsNdzz2RFhl8IANoMTn+OGzGgzg3hhywIycsNimL9MbkNhpCdcZfjuzYzt5ARX9xcjaCdRqIa/3KaDzf/p8olSDs/+bLozVN5X9H2xBT2MutEZnJo6QL5hsd6xgUaxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BysIWiDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BysIWiDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1BFC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790873433;
	bh=rfhpIG6RjCDR1QMjvB6vqAtIP9+4T0ZbCf8uSprOsnU=;
	h=To:Subject:From:Date:From;
	b=BysIWiDh3bihTMWaFKQx9vESVdIQHD4dGp+KxH9eTqSnwLs4UYmgl5n8mOqzUs0e/
	 uCzzgp9Qu1Rz2JU4xc1+9uFbu7Vpk7YJzaiOXnZhGbC80y3fcRfJI9iniKNw4gzrcm
	 cNWhnaR691zrrunBottxxwrRn/meCunqwJwORqF5hyRRRyuZgTqXdfCKUKztsw0S3Y
	 U/g75vj0stG2aTleft1ErL0cfhQx14Grocx2z6TjxXMid4M5ghZWlSerA7AU8zCiQR
	 FFy9K1uboabcTWxq18IJvAnHiK6VevyZ2TlHTbtk12wu0ohvF+3Gbl6kAdMnA2tkiD
	 H6WZ+HVxTlUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA183CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087343368.24169.8252326553900113159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7914b00cfc65e8877f950a51c4497991d097ad869cd4c246a282f734a1fb36
Date: Thu, 01 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790873433

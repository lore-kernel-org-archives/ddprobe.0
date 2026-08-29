Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7C5362153
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788003034; cv=none; b=cTDqixG1ArBT3A/s4twD86ISXcMGw7j/iVyB88oqpDtuTpM08E0RCbfLmqsBN4Ure9vlL1cs1l4cBWSPONz9zK/mdgMqNeoWgcvplxLvSw4nDdKUUl9mbrt7iBto2tOnn4gUWlm5YNGXRU0oOibMLUas+PnmcZDdLWe75X2z0lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788003034; c=relaxed/simple;
	bh=kAzqRRSwen1DXiAQ6FJCxi6uFsMlPbKOrh3VQb1aPDY=;
	h=To:Subject:From:Message-Id:Date; b=GQPcA9y0CLXSCk2wW/JHK/P1aH19jKxyjV+gI9TTWc0KlzKQ3f9p3L5P8/wUKQEee78n4mfEgFo0A4ojhOQQItxcgw4qRvhUfg29j2E+Nh/dX8YzJAUwrAf5zUQ0BKYo/KtDjyzZ4hAgeKnM+y1ey+4Io06Gw1QNRP4XeKCeEuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACq5jeOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACq5jeOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF83EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788003033;
	bh=kAzqRRSwen1DXiAQ6FJCxi6uFsMlPbKOrh3VQb1aPDY=;
	h=To:Subject:From:Date:From;
	b=ACq5jeOcQhzKIPXTF1d48G+QDjcTMibcHeCOtAbnEc9pOkqVWDBb/zj7kPgz/suQE
	 VoIT50B1b9R4GmLYeXkfuZ7UVzpylX7TGR16WH3WJJ2rXBUEN3bXxkF1GKnEALtFcS
	 mKbADiyfdDBto9tZu41B9YPCHbIXOoMLN5h07pOdlKpMVT0RH2UsEHFnFW2rYl3fI+
	 d9etZphoQwAwzl34NFPrUWzRFfDt4Ll4z0U/hzvVTBNfLdg6nChqeNE83slZhBJ2rp
	 SjPxiAb/divkJNdBh7yP0baPLepTO1rDAVtQa64DFDUHi0V/Qa8rjf36sGOKFe5mrz
	 SP4zYiW3lHwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FF3C61DC4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800303369.27739.16704068192200424383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee56c33d6e11849e9d12e6d94e51591e79a757896dd27fcef58fdd631f88a56e
Date: Sat, 29 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788003033

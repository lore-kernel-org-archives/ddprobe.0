Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5193037E317
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789093234; cv=none; b=Ng+Cnw0Bu+7YPom/DxULgbb9MCwWwBv2BBUv5UTYt2LtI+Op0Gpmxhh0M8kUoIBz2HACp2Bb3xirjPiVpjSiqNZsf1Ce0s9J5VRKewNr2eMK8KXpziJQ3WS1l33B67mRXOpqWItvwfCO9kz7WISKeBCxpWXsaNdZzkkoW17ZcKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789093234; c=relaxed/simple;
	bh=8fSKSaEutjdtMlU/voCyvbvipaCzrhS6i8ZG9/E9oco=;
	h=To:Subject:From:Message-Id:Date; b=uYLjmtahFCFTJjZMl11newLTvCTiPaVUL8uJdQVtW7SILNfn8HPtDexz+KS8ljRfKW/ChnX0RGuBNMn+B4cd2qQ38UXKtxAbPBHMec0H2pEKlnMbGA0X9RRitMgwYiS68iHPtwGxTGzVnXx4x2e8exICQPsnwrPwm5TKsKdLEy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYbiRnEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYbiRnEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB5BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789093233;
	bh=8fSKSaEutjdtMlU/voCyvbvipaCzrhS6i8ZG9/E9oco=;
	h=To:Subject:From:Date:From;
	b=IYbiRnEqjDmDYphV/QwbgpoefmVZreGqK85UrZtFcXjC4AYDg0RKbSwK/lYcYVj/T
	 4uqNllMpymgZlJM552+KBd+NvG2MkRFS5eejwAw/flEnd+Qlhw6iOc7i11bGKhIuzL
	 IREslIgQwVh0t2tSPXHR92mOMFsNocNEbFeEWswxy3rR0KcreQaU3FPumZwLg55+1u
	 gOwKFndUui2b2t4STw4XI0oWpVPC+c5o/GgDNjvzjZYn+/9uC6/8lV8zgD4GytjJ+R
	 L5NXzD4m0ykOGxAOIlsiDSfqKdL41KJA5hyyfXTU0csT7VJDTYB/iYIbfccXL4VIgb
	 VzmaJWlEvjnwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2BC88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909323368.1858.5405986811172947413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab137fbd8e4e12aa46d15a2afbae9b554a8c7bb4d6251b140c10c36eff7b9e42
Date: Fri, 11 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789093233

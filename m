Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383522CAB
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737435354; cv=none; b=F0AnR/zgiXTvhz5YB6aWKcMaUeC9BHlH/Vy8884uyTpFY6gvz4iUQ4ZRX2EdXYoPr6bY9TJIi4ZhhB8WHT5JreBBqPnQjU7rr4m3rfvpg9rJdnhkLsLDssm0moeVmA43Kywi4U8qqh7qU4Inm6BJdACqe4aueQEEqdVuCEmUKQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737435354; c=relaxed/simple;
	bh=2PQh10Nk6V8tIGleBUCKAwKtFeQ+XFHWAmbA/uhfFfI=;
	h=To:Subject:From:Message-Id:Date; b=CJ/kqgMe4/lYmNqFTHgGAILqfH8Cm3ZAxWVbdNL7c05+v73avMlEPbYHJt3JhZSgxdJ2pL3zPk5kpFHE+tFouuX7WXU1vAAi/RJQA0jjrvzSMafO7Ft4CPyvZFcp256JlrIOyumpyb2Ws3zhK60+c0n8GjDpdPzzi5gpJyXQR9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv6ufSDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv6ufSDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A586DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737435353;
	bh=2PQh10Nk6V8tIGleBUCKAwKtFeQ+XFHWAmbA/uhfFfI=;
	h=To:Subject:From:Date:From;
	b=Dv6ufSDyjINlD2tANg7p8wXwhXQvdDWROkKb+9oC+WfVA5jcxz3nQ8jeAVpn1TtVq
	 e+TAigiJohMTiokaKX4gTyGtVFcet1xEz7hV1uSROE5D/A4fnKTb92CZGfigu92DFk
	 6vt65A2rcgs9c4PBHDspwxyK14+dlG1S/9P72CnZ/z+phMhd5LYTS+A/QVr/Izhzee
	 hlTviFsDlStx7QkEQ3Nk6Xx9K1UryRm2JkBL4NW9kYmd9e0xhWplQXggWVqls9JDKN
	 YrB2sjGl34Bv5Y61bdXV1BmTYuitfnNAwC2CfSL3rG+gjTGlec+ixxpoMLKb2RVPtO
	 NhbvTqt4tsPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93669C02185
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743535359.20777.8335619621814299708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae362b1d9ba4f4c67d7dcae70a876bd7c379a6cae8c20bb0c07fd77a24cc78c
Date: Tue, 21 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737435353

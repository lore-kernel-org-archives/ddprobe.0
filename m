Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3776183CA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723278354; cv=none; b=beuekxclbGhDj0MC4zYUHLHJdDuAkGThBWoIQoX240eqVWRjOqe7XcEgsaUS6MLBrovjNfuqHmMYKD9lcYPhQ/iuKDS9TH/5Ac4gQS0+0avnzFos0c2eKN08wEp0A0XJCyDJ9mQhrgK7i1yjDQiREvbs3VZ67Y74ZCX75GCcyeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723278354; c=relaxed/simple;
	bh=Bx12aXm/A+0jTn1t0L4z6VsYldv5SY2gjthEtcY0umg=;
	h=To:Subject:From:Message-Id:Date; b=fGlMeebpTu0lmHJomM+QaMYJfTEZUsKqutdr6RX7GTj3liZN/U/AI0iCfJBRQnjChMJ4xfts5vhPYoTzf493y5DHo7M7a/hQajor/p0FhzZgMxdjfDItBHQTcZ4h0wibj9zAa8pbPqU1WEP7l/H2U2ve6FMYx0joczEgcaiN/do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVlAvXiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVlAvXiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C37C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723278353;
	bh=Bx12aXm/A+0jTn1t0L4z6VsYldv5SY2gjthEtcY0umg=;
	h=To:Subject:From:Date:From;
	b=gVlAvXiw35izvib1AK2jhcxLGNYduxWw1U0kCIQYik1cCl/nWGD/PbS5KlX+gfD4M
	 KTN0nfvQrKmwdu3kGOtum6urgfRuamZFt01dxdwJWh02g+BLO1eJ6jBL2IsgU5ewhH
	 JrUUFSn4hJyxE2BJl94upzqzaBIb888+/gL6eQUDBFa6xy1R61bxg+AH4UFIpcFcP/
	 T0cbtT/JKz0CI3WX9bpXzagOxdoLgvrJNoEZ7p9UtromLa1Sz1LUx/KPqjpmuKJshX
	 8Q4/fAstiFMB7Kvt79No8eCHty+zzCEagBfPKmBrsJBumVJTHF09EtPokKM5RbPQXu
	 oAqcruE2nszuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A575C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327835360.1805.14031496888918575597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03aca78346e3208129a0fce01f5b10ac1e0bf7c16f352f093f9be6ac1279135
Date: Sat, 10 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723278353

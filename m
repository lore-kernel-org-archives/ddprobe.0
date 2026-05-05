Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A4426E6F2
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777946254; cv=none; b=DSEgXU8agcXl3bVL4CfukKj0p25egwZPihDE1EDwm1h8BuDanhp43WH1Dvf9lf5MT9qeJ17EACewIyN4H/RaKbdGxReL0x8/7CAWKyK6/iHNT2Pl8WB/+ChH+ooczyZHsgoAGmY34I1dPrrqU34y9Q0BTvk3XGSz1sLw6YAun74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777946254; c=relaxed/simple;
	bh=sVMsSHFgURa7pn12Y745VaiDGvVfM5ItGKfk+SbO2CM=;
	h=To:Subject:From:Message-Id:Date; b=S48bVL1K9/KPNkYteHlhgXRjrMKH/HpF7bNR12cgPNa8zxdABFTRTaGBMH8gcp78pKhIQkBExaMlvNBVGTAKuJsDTU8tvRMT3Gvlu6a1opep5YvtIQj9CVZhZ9I5N39fbPHYsJhXxR2Cqpqw/dZ/N+kqPW5cfy+E881BHTGNZ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhYIsPzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhYIsPzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C264AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777946253;
	bh=sVMsSHFgURa7pn12Y745VaiDGvVfM5ItGKfk+SbO2CM=;
	h=To:Subject:From:Date:From;
	b=LhYIsPzBZ+KE9oUfFA0yBkpDE3tohLeUiufxCXzGQhzzzxVThHv8njaIf88LQkmRH
	 B+DPGWSZ2wq8PnMyf/69x/Ho3addPw+XbN6v2Bp1kix7tFxsTgD3WdXsoOS1qBLB+0
	 0gIM4z1eaSkaNGmRtq6p3nMDd4sCzmU7OWxDqyjGIgkHgyiwWNTT4LhoXSgGQrYGef
	 +IOb7n4LZE6VAY6I5f+PT8YhukJlmUtup4QcGFYNRvlpzesP/tVGzhWWn6+EfXkzVN
	 F0rjl/CAO3moJ7vSbLhKN6WqByN7mmc+f9OKC81xFOOlVC1MDz5PFsyyQ8AFTKvbkz
	 +NzfdFtq0kZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB585CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794625369.7933.2490190171387107439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467ec67133c7b58c946bcda299b559044b8591c016c4fa1e3a6785f33d5b3ef5
Date: Tue, 05 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777946253

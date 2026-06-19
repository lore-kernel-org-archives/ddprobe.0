Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE2C3B840F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781883994; cv=none; b=RxGCk/S4SmXG85atJbjYmvSpPagLFwHqyBCHqKisxElHwOp2iT2IsyWdaQ0UAP/eGxBOWeoE0OnEeyPIQIkO3Kd+FkpO2hT5y49nhYLDsTq5Z0sz7hdyLQvNm8vxqBhZ81ogbk8SxnQl+EaABcQSGuxi+YJxiEfoEYENqBv5nR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781883994; c=relaxed/simple;
	bh=okKzTM/4OTL/bFJadh9Ck5dLjzDcbHsHMTDehB8U6bo=;
	h=To:Subject:From:Message-Id:Date; b=EuLIdw4pEiNuMeW/WUkhVEoUcCNFpzVvg962ONnq4QHzpFPQ9EXPxzZrJNIHopprANgvg1m9+0CVDVnKozSMcVjUGgOmt50XiE9a2KH66NPgqEp2tcnYrboDOKCVthA28yCvGnKQtu6jBkeXo7gltwL3+tQ3X9rXE95tdKifSks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyKURD7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyKURD7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781883993;
	bh=okKzTM/4OTL/bFJadh9Ck5dLjzDcbHsHMTDehB8U6bo=;
	h=To:Subject:From:Date:From;
	b=IyKURD7Vuiugp0orv+oO0Q/yrfcJXy305vbIn5L3AbrQ6/ImeYJRM8TuJVpweVYAh
	 UTFoYBf+87/l7m4CIDynhAPrxFy41h+X18EN1ALQ7DCJ50I2ptkdXOVOTfGkLj2Elk
	 1BXY7uQZ0wHKPbudkcDToZ1wMiyg6MZ9CrE2UKaaAU+HmkrKOVAdMSorfbMUi9+qUE
	 bx16cQVT4twNzDzgu7n/Hv3TE6PiJr2rV1enB5ZsifDu6AgNitY+LcE6T5keH9k/eu
	 5gK4VO3U1gf7Q5hi4x3bmFBMz1zV6btUm+v3A2vj3i/lj+OywixVwrtfx/tV/VTtk0
	 ov/zU8rPLRwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3744CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188399371.14875.15232035970334658881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9cb25d21c0e76cccae0a8924a5740dabae394066c9666e70521433c78ef707
Date: Fri, 19 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781883993

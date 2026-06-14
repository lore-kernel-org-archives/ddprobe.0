Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F525695
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781425594; cv=none; b=anXRp9PXnEgBO4EerWtnanojIaahnMyYfKp1t0jvkXDqtGcbV8Qu3V5uW7rPiOO7LzIgv7BBCMv0N4CyoHNGeX6M4RlymDwEkbRVVTNe3iDvD2kjTrBFvhSpzFcBUQY2EPaIuhmzqHW+QB+D/zDTGJ4z/wxbfYoY8bVpBCpmhYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781425594; c=relaxed/simple;
	bh=DuwlG/2Vuz2TyW19GLBDvmkoIHjaV03SFGj0oSxidT8=;
	h=To:Subject:From:Message-Id:Date; b=PU4p+7tDb7MHTDkZeH+TI6o7Yq9+o6XrdrbBPKHP4AIJnkzcSlzHORzNdGcaKflCs27K71/vsp/1BnBSH+BCJy7xrLrCaM4B2ZWROqWVeach/Yetrpv1c9YEzihMfUQLP9rqwbsYkzI018ujg0BCJMBvp6/NSzUAYCDaeD4CVbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEjG471h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEjG471h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8F4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781425593;
	bh=DuwlG/2Vuz2TyW19GLBDvmkoIHjaV03SFGj0oSxidT8=;
	h=To:Subject:From:Date:From;
	b=sEjG471hSGxzwz0lhBZAtVBYmE6YIbXixIP2ASfS+Jh3PjyW1xn+ggDXi7lXnDKPF
	 c18b5xe2ezn/YmXAH6e9xQk74mTyO5LYx81uikKqimwKLi7a/qlIJ+ZXyTdHhVuxMc
	 Nn3scpXdaxeK0MGFR9pdJreBxMemHxwvZc93DZO+U/2Ji74+jVkkVRLVpbSmikyLww
	 DOXiQlgr19cLNdlGL4UnVrIeIFaV72XQMDBObFOMDNXVU9sFvw3FuDTzX2n0vR6dz/
	 2BQlKnTNCobU1Hw7S2vPx1i+kNhryjMrse/zYXl9+DvtC6v9fMOKulaBZcPuWb33qZ
	 QP/78UnYT94vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D21CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142559369.13025.3815419295659250255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e021252571eb0f77259fb08d6c6f071faa5d5c8e3cdf9d1d2e0440739f59ca2
Date: Sun, 14 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781425593

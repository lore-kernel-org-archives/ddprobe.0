Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B51820ED
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728347154; cv=none; b=VVfRDZ/UPPUkMgTFJo5UbT33p96zgxFXQMM272pB++t66odLfH6sXLPj0EiypWIhQJgaqh9EhddaHNu+IvC0LnPXpQUL4WkKGodWvGyMoqgQcv2xD3JDgOICqYiRwvr01iWBVd3oT7kcfXneDdibJas7ul5N+PVeI3kRR7Md6fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728347154; c=relaxed/simple;
	bh=gxLANGDfC8fkOFOKsakpsErUKi01zl+1a8RuOgrMwPI=;
	h=To:Subject:From:Message-Id:Date; b=Oj7OHFnDR9JNUHFRIlW/VHplQDVQLxurjVfQVb0RmHT0cpGa6thFaDHgZIY2WJIvwYq4dhQfpwQ34IwnzU01BW6bsTyXxzJcBGHr72OLThalaYpp257wX5J7FzQBtRBUupCop6QWR2cw10VSp7fpnGCBBXNDMQsayNLZ9OKLvSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaYfGbcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaYfGbcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB8C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728347153;
	bh=gxLANGDfC8fkOFOKsakpsErUKi01zl+1a8RuOgrMwPI=;
	h=To:Subject:From:Date:From;
	b=kaYfGbcMUAEu8rbpZF00FD+iLrMhsiSJcFULAoDWLsUTDBBIuv/nWCgGRR5wfDlBW
	 FJCUfIBnay2uX1qPL6NqNGp6ptwrbzsFj72V/PRd8U1FxLs4SZiqO0BL5xrEFaGwpk
	 pT9GlbLGv5FnhiPKlXI1jyhgOi6/ILJhUGL6rAQrxTsChxIysgPPh53duyEhgvbF2J
	 z+Ic9T5TjKiqCZd274m7JHowJi+ZU4N9I43eLXtCYIeCP+GpOxNrWitLe4TTT4K+EI
	 ppYvpxckgbT9HC2w71SmcEpaIOD/xy5u8njNxcFxzUXiKeh8FSvPJ/wPavFtlrkSmU
	 kHiXHv61xkfnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E99CED24E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834715357.14482.407363686351627135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aab8dbe01b8a547cf45dbee81f5b9ab8ae88858781ff48b1ec0e8780451e0bf
Date: Tue, 08 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728347153

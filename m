Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6AF41A76F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785229234; cv=none; b=kOUxRoZzcCPfyGc8WMtWrU82Ez5tESWzzJSxKFhr612fT56nGd+q8UCxqHzFS09PpMUginF3szmvj+E8frWRz5nYEIO9zEcvq4hAncVuwNQyNFqYbBho8zmnxMwBOaS+m8U1oi0rN31PsdaSURJe6Ey+ma7+fS40nr8eFPbPSOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785229234; c=relaxed/simple;
	bh=Gh3501lKr3nFAY85KrFmGNr239e2c8RSMG3oujRVTHo=;
	h=To:Subject:From:Message-Id:Date; b=jUpaxfjTNpr3pu2MAPAv3LGsLDGig4Hasb60V+N87MPTsnyosjzmG8WkSJkv/eUKB9Dy4wYFJ37wYx8HKT+k0tj9/3RSGhLcGiPMFzyHR/ffGhb8oCKhCOrTzcgqDii3Qnb+2JVU++Q7LTEkLMni235kR1z9CVAmHvHiB+hL18E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh5rui0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh5rui0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91A7C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785229233;
	bh=Gh3501lKr3nFAY85KrFmGNr239e2c8RSMG3oujRVTHo=;
	h=To:Subject:From:Date:From;
	b=fh5rui0UALdonyotg8Npy8dFk8DEemmIYwit0YiP0sG8GTmHN2eUGURhG9geR3t31
	 SCBUw+DEDZXHSlnfLJJH56R5Shovy9qr0Fm4xpl4LuarA/CZ38F1hbk8tvhn3Y5iJ0
	 AvrL0Qv8wRTaDu5Dj6CuXt00i71wv2ah8K5LROGEtom97mzMzdQDlLRG3T1nRJSgHU
	 PS1z98fVHyTlLISgTHcRkut4omstg/+7wuIHRlXpZgcHP2YLjkWaOaSQYrLMne5Dv1
	 g8GGTXFYRj+Vkaknj1D+fuRsakyg/WRjDa0fWFsjL//R8Bgsp79KqQf8AV8Lbuw+Vd
	 70QsbOaB+DJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B142CC54EFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522923371.17946.14540208731589078426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ecf55572e7c57cf2a1afd9d28cf7c44876f32adf5974c3696b3536c4f2d25a
Date: Tue, 28 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785229233

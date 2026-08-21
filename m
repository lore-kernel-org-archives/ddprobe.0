Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F99E2E542C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787289634; cv=none; b=Lw4XcYR1qwvcyOPmDPZBTXAObPz5S02DhkLIhOan++jWT7a5Gk8a4vTG3F5pDExYFt73k++KXxhGtH8KQpEYOsRxQFdCb3wNQLN/tLpz8sszG/Iks+Pv3wrM2J8zNSbZGOZAIPywrNnEGxqkgUDdxh1LoOzIoLqgaHnD1UHsq+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787289634; c=relaxed/simple;
	bh=iO6yvfv7iHWY+lOFoQk+ajwPjCMJR3t3QZ7wxloalds=;
	h=To:Subject:From:Message-Id:Date; b=NuyniTHvy0Biv7AMmyclxol1znEmqhGkfHgZ5kbljyi4P7xabvGZb4olM8wTOwBC835FITafRyJT8Zf+NqAr+QxBMP6SN9JUQeKqw4nLLr3O5bpfV5+qF7urdd7bjczuk4APetuA0ohVsg6+Mz+c+n9x2+DFVDjLvbe0gDsvR1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/76BTwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/76BTwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E860FC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787289633;
	bh=iO6yvfv7iHWY+lOFoQk+ajwPjCMJR3t3QZ7wxloalds=;
	h=To:Subject:From:Date:From;
	b=K/76BTweIRKZnyffzy1a6J9I8v2jiETpoAaFfCZDklRlSv2QAuE0Diqtkww2GumwC
	 Tskjy/Hb6OfkltiXtuf2Wlz/q+dce8PndLjWQ+t5qw+li9XqMaSdBoeF3iUDBygEbg
	 KmyHwbHFMo2wtGh/M6nArgi54i3Lle1VdnsbHYW6V0V9lyqBiQ1D8yD+PW4NLiiM/g
	 1c3IlPyGfkhtDjJbsEsHzogV7Lv6u3NpK7wc79zYPontBU9IprglU0QjTRNMPcVmcR
	 HD6d8ranGdm57N60jTE22bzTPPMjgmE7NepM8/4lAqarpMq9d5pZD4+vK5j9fwKa8U
	 bVElElS/z+1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA94C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728963373.14086.5934126169624042223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69118deb7a299db6ff276459dd81a4b0d92c82a79cbd1851fded8842c5ebe0f
Date: Fri, 21 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787289633

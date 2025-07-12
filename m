Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368D61D90A5
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752335994; cv=none; b=AiAHGy4fScjA8dOdXwrlff2lCsxCCqt0h1rkBUyFt1awc1qq0/08FJIUVwnMZCCIuLUW5vLud/X7u9H2Rn9JJHL7PbjkYR/nVKYmapSHb+vlkm08zx7AdH4BOettlqhfDQ19dYvwfbPJ1KHuFgGXezIgxN4D3PkWEjY/wWG9yIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752335994; c=relaxed/simple;
	bh=MEu30zLTANdBtJg/wOtg3nd72N5P5394n4NBmYMvoMU=;
	h=To:Subject:From:Message-Id:Date; b=pyl12Yhoz+qUJLHU48R8dh714gZxAF43f2yVMGkxUHiDs4PmXs50LUM1tQUfiBWEpmi1m7P5xUWAXtaRd+x8R3jlGkSHNd5MXRk8ixD5ZrctTnX6CcgOhDyz9GBpsO2jwHZpfFayYgHn9YONcMZuEzA3r9Vljwf0N8Q1oo84wEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX6kQl33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX6kQl33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752335993;
	bh=MEu30zLTANdBtJg/wOtg3nd72N5P5394n4NBmYMvoMU=;
	h=To:Subject:From:Date:From;
	b=eX6kQl33fahPJCKHAjiW/EeS2GaA6hC0TQlaXEzKgBUCkofhsqccG2gDEKfTiCcjd
	 XMYlxMgxuh7PGm573w0L5RdKsrOxGJD0+kb7sH6EpK5tsX19tyuGU3VTV5FdrBiXs4
	 zr8JWEjxbOBszKfZ/S6S0DAcd7N81s4/YKDXPMG32UDpJT4fN9M8y4+5MfY717SfK7
	 RavvMRktXuUIbvjJTeAHsjitO2F5j2NQnB/FPXEfgEHsadI9hNsamwFjNPW4qNjaXI
	 GVhRstdAJzQLd7JDs0pC8c3gS1KhkRW5Tmhi6RQmg5IIDGeV6ug4DQ4g2184NRMWrR
	 7kQygGH+dyeuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E993C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233599357.22816.5513901015449442651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd77cc7f7dcb31e7505ff9b0b86aa91a3aede93cc37886f89dd6447c6b5e2316
Date: Sat, 12 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752335993

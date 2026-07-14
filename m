Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9230215A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783995514; cv=none; b=JbenF5THbo0c7V8KOjDmrWwtVvsldB5O6xozitdbQnoeSkN0YxUbsbQaFP73nwON3Eh0xZsTxiWcFuEXe5zYlqymVVZ9w7ZJpnRPYAfKe02WS78pAU97cPjFCSolnEiKVX7FLl6hx8Bc2cVObXcN6c8vW9dMRsNSA4dKZSlYtwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783995514; c=relaxed/simple;
	bh=jYxQbS8r2uJJLrUJQb41DkNJopCuibnpIUNQpO/1AV8=;
	h=To:Subject:From:Message-Id:Date; b=gVRg5Gpu9SFNV5v3cCRfPEakKun7ozkEBWG2y0aPaHUmtgSyMKbUvcCD6Lgvx818zmpbEXopVVHtVgAvTC7rdJxBheoLOMd6uY8wjuz/8mBO56gWVBM3Evy4O8XffTrjWLuoufOr9Ldyu8nEoC8lKWehYm26/eoN/6hM309vs5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQDzqaET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQDzqaET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA91CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783995513;
	bh=jYxQbS8r2uJJLrUJQb41DkNJopCuibnpIUNQpO/1AV8=;
	h=To:Subject:From:Date:From;
	b=NQDzqaETWVo3pf4hATG6QVNzi4qSpvZCuxvZ58TNiOGQ/dUTmPnjFJ+rKPXy3WtjJ
	 bpxWyN99gnZA8AuEGdMZEBMPunKPwZT6dUD8chQJQwQ3PvDsut9rHbNos7xLcai2QH
	 BfO0IadwnelNt7qRYM8AWasRTuCFdYBgEO/p/NhfSqa8yFu0nle3upkMDOGSVqw0hb
	 fBBbje/VHB1ugY7ERO/UimJh6VisSaty73zCZPofU3G+lOAb6cwIJAWEq+zk/OziQA
	 V1IYnwTolBRZ+mXIMNP2FmUrcjlFPYTNLMUEDR7iGhpiWMFi5TxL+348qq1Ul8MVXf
	 eA5wnx2W5yMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB6C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399551368.25901.10536473342503722900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2703321a06eed14c00c37e8fabc54ebfec6944331fdc870672376aaf27870e75
Date: Tue, 14 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783995513

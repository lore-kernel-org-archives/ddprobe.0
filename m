Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C284215F42
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786062034; cv=none; b=ClFVjBxJzQF2xZXJiWZmajclxtvF2FjjF1mExI3qCsrqIy5T9NaINQkuwiSateslkyjBlxTmkY1Sih7ztoB4jnMuuXGsCRjPygrZaoPU+OpFnqwGYj/xyKgDNyJQHua1oyTbyFagDQloQiMYsaqLXEzLSea8PfPf24Q7cEOGAoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786062034; c=relaxed/simple;
	bh=w9d6eBEvQKykna/IA4wlQJzDpS2CnPIcCPdZRvITsg4=;
	h=To:Subject:From:Message-Id:Date; b=ra235Pk966xo6R+KcO72rD8UlKQBi85lMtD4AJSKticRulQcVQH9SB6yRNjXeWOEjT+d2JQizpsa6VCTMioFaLC4S2EcA7g1clrqbR/FYjpADyHJgc2xRwG/8w46jacHaQ+MJCytxnV9F/DvfEQlb51CFNjHEMGDj+yCXYLc9s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLw9hTAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLw9hTAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5760C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786062033;
	bh=w9d6eBEvQKykna/IA4wlQJzDpS2CnPIcCPdZRvITsg4=;
	h=To:Subject:From:Date:From;
	b=XLw9hTAOb7FhZvQHPmifTzMfHLgQijR416U4gkNLfoYmO6FQEW5QMHlHCvtDI5Jpd
	 R8eGU9W01C9BAtN2Z9L2SItpvjV8muPJMIlPMcxhDQ2B7M1tb3YEH6d/0VPhWmIu8S
	 eG68Z9Dy1ogilFy4L1tl84Hhm5UECYrpTXqgdJnBQa9ObvJEEMXziF3MK3AI1R2yDS
	 3MynuYGmGNwdffSpZ2vWp/qZTE7i0NM8ZEn7K9W8BcCGjmgpdppqy349iOJ2mO8eF0
	 PUSG48NRqb6++hduBsIyqZa/JWdzuZSAutfDHDp1+f9MUDfgDIXYB9b0J91DQJ1DCZ
	 ID+TgZFkHh+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C6EC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606203370.18851.6301518637526632654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b4fe39a8bcaf49b3ff4e652895d04324d6c2502309db452462ad1b5cbaebd7
Date: Fri, 07 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786062033

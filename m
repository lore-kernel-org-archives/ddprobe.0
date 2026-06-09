Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E37E368D57
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021134; cv=none; b=rge+DZVgOrIJmOCaGqxQi8X8Tj7oCtTew1JGBmvAAp11HV2CdUbXTJ7LtZXNKEb0C0XMi0kQTDMZ+l20Ap+aJihaXXGpnMOfjmkrPpLrBFAKHcXLCAO6bMrvuI6YFojM6DiDxOPPbnMOFeBnMjQaGr/YHC+cj+NwoWsGGyDncng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021134; c=relaxed/simple;
	bh=oqjDGgTAaUfVWfvKwF44lPdRTqLXW1tt4+xvcO5lMw4=;
	h=To:Subject:From:Message-Id:Date; b=qoHWMgu0mO33N2IgkdhlTdkd9489s3p8pzEO2bZM+zy6OiZjrOFyVydruM3K3SA/773YAjjlyTgo1v4zRqWcaRLLbZHC6ZB3yen70/vexFwqZQk8svFwhlp3UwdWl1ksZEqykoZTpL+xfaFWKXWxODKmF8UBk9pJT+K5GzbdpmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBRiqR/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBRiqR/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73F7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781021133;
	bh=oqjDGgTAaUfVWfvKwF44lPdRTqLXW1tt4+xvcO5lMw4=;
	h=To:Subject:From:Date:From;
	b=CBRiqR/aypm4ods25+EHdLhaqoiBRUUypkcCOMbsIVZVe5/eQBy19l2z4Aoe3e5sc
	 eCPr472g0AXohUmBnveukmtTTMrDbLytPCYH1Dq3AMypJm7AyUSIKvVPYLzmwZmNyd
	 GHSnmqTrgM+x0wtSottK+ExcGDtPxbUd0cQKGhJdOCiIBQ3nsst02WJ+l7YrDD9AVC
	 1N2Zz5byXZknbqZFR9IQbJzNioXmQyeiHlY3T0PcIcgDuuK6aTmDAsM4Hu8GTb84cW
	 LJatMPjLZi+v6MOcMpsjk9GMx8phu1nTxWm+A4BgwclxQ5kwcFbC7dzP0WLaVFISjZ
	 i0g/MD2aMRyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE275CD98C5
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102113370.16123.11973934676727525881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db936531722ceae8686d20404c6f7b8da5bb8dfdc88872d5e129b137145966b
Date: Tue, 09 Jun 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781021133

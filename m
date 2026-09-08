Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC865964E7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788888634; cv=none; b=SGSqIcg1lzW1PBWtktRilVLZ0FW0ms/HhMGSbivi0JjO8C2az4A/+rXJEEKhwuhjbFF5Xgu2+bzbOe3VUTAHKO1W9KJunLsAI98Yp0U5GcT9bXMcJqoxLjYdKXYZORUEfr3MLdLpQwr7wCa9QO8LHIhBfGRAWgB/KwNwBii78Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788888634; c=relaxed/simple;
	bh=3Ozp3ap/DFcLHMOePt9zJvz5UikTbcEws8UDsujHz70=;
	h=To:Subject:From:Message-Id:Date; b=iJaPn26vviD3p2KnMM4SFD9//1wj9nFg4MpRAJekfB4uWPrHQzrZkmBF3FLD+pRvGelNIRT5KYMLWEIrd+FgeQluOt/WBe6KNKdZXQCeTD74885NLqyRerevxLgzmo0C62uCpyMjj01c0VQFjzZZ7oCBIHDeNU6eGM2OXRAR4tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOEPr3fo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOEPr3fo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2CC9C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788888634;
	bh=3Ozp3ap/DFcLHMOePt9zJvz5UikTbcEws8UDsujHz70=;
	h=To:Subject:From:Date:From;
	b=OOEPr3fo1DQzjF2q5zhFHwvj3m8kXQeAQDPehWumsGXHt6n2+TbCysZHuJtM31uLA
	 /ZLnyCw7ee1mkWo1H3PjZJRpHoHin66Mc4lYlzeMTEcQXVpsgXlmrkiEh1SxCngx+d
	 VpOHOr/em5k3cg+/PrXuFk2c9uCC7vSaCESD5+jdNmAgjo2/kImrrzndv1gZIOzeaN
	 tLM4PORyGZnrb+4gicdzA9HCIuDnyPb7xF8/pLebxpBrrJK9QmQ7RNd+91K4/kagnI
	 Xd3qc8e+Gq+WtD2641JDpIAjfAAid/PqEG9xK1rbHrKDdP1sYLhGr7KL/6rmtt4qH4
	 MrZwGavMOg9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E21C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888863376.10603.8496083100431172960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a04f5dbc65853354ca4b5a4bff91b448dac9cd777aa3a38376324d3eb7bc42
Date: Tue, 08 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788888633

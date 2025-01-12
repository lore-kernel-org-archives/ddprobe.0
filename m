Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412492556E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736676954; cv=none; b=a+IEOhH7HsKd25JP4rHID1GsKXrZOO65ZJ35q4xvImv9EJfKSMwueEumfGoxdIlQ5JjvOPKEHxbaPSLoXJzb9ZXCcJuCwOLK4h9UOd7ACJLxKCFShhcHjRMBXeZute2iUx0Zp5G9isj5gZ7urTdxWYoghoh8ZonuVHvlqE/jzIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736676954; c=relaxed/simple;
	bh=pH2ffWoCzalFWsJSusCd34gQqPchiOE+ErgjBCXxKdI=;
	h=To:Subject:From:Message-Id:Date; b=nKcqsu38MjxcpKMG4+Z7VQlkrTUbZC01v4H4U84knUFczGs6ez36MSAzHcaO4yH8HCa63lKMGrFNxlvrCeUNHXGmFWN/13Q1gJMlgMZa9yxksKwEMVO6aJR608Nck7IemsZjlne6F0wrCuAz7zETYHfiO9KE4BmNsgVyc4bvx+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gki38t5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gki38t5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2204C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736676953;
	bh=pH2ffWoCzalFWsJSusCd34gQqPchiOE+ErgjBCXxKdI=;
	h=To:Subject:From:Date:From;
	b=Gki38t5HwxgVFDEMYOqYeUy7b30erNL5U5qFJB4jRjA+yjrgEVR8oTDGpjYTBCnoJ
	 Xn7Mfe2+Blb9Iv+UwBSOjK9ie/SuI0ZeIkUEqSg6oyTaEHDUfwjDbW9FkI29J8awfq
	 rvnxhg62oewVQ9bR7y8eEU/WjMIXhqwnx2xOdu6Xt8sUeakVxXzw2pA9Uzk9dCFNF5
	 IYrhiskNhPQonmQuFoh62NvCJLsb2XubHxtLyjVUBd+ZFR5JsyboXrvEtWK9dUaS1v
	 7IS9PP1DQ8tOln9TWKbg8spkm3zugwgxa4Xxlwt4TryXK0v3a7q5Grwdm2bg8RiYpJ
	 a51x0j96rTTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667695357.23627.9192244862242948579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b4d374d5b818cab439c06553adbbfe11630b97f3398650e10de59220e1f6a1
Date: Sun, 12 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736676953

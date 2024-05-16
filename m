Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5084479DF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877743; cv=none; b=D2OT5sEO6JD24F8W0d3WB0svKBfBKhTeTRFMfScVuNtrykwTzKT43AEK+w7FHl/ZZD1H++kJmk7r0Zye2HR4xaZYler23pXVSXBVARjz2uf84uGa6ESHbm25zjid4vMXbsY0ybkrL53J/BJ248Jwd0851SfWp0pCr3vIB2umZo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877743; c=relaxed/simple;
	bh=wqtZOvx14CHe0VLK72tRPJLjqcPpSTj6+/gO4ZZJYcI=;
	h=To:Subject:From:Message-Id:Date; b=VRs+UT1cmkrQtf/k3roPWDXkFn3ZvZLACNr7ADUvm4Tsi0Fjhpr7ArtPCQNLlQlyNhS58vlsw8tcTPmYvn/o0NBOPHVxP2Mgp75IV65XbFm4ykKUMhlL2uk2ovQFukJvQlvT4DEsoV1SndYJXAQwgJUlGoMkG1b7ENuJIDqqEmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUZr5Rpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUZr5Rpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E76C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715877742;
	bh=wqtZOvx14CHe0VLK72tRPJLjqcPpSTj6+/gO4ZZJYcI=;
	h=To:Subject:From:Date:From;
	b=ZUZr5RppDWHvvzZxwBiBVjjof/7PqJ/VRCm+VZB9fEDkKmuHNP2zwGtGEVIJddFyE
	 nDknOmlYnX9BSmimdEDE44qyCSKN5454T3S6rkH0TZdkDvYnlnn0Fg7lJP4OU3APZF
	 5Uzqs3+qGNrEuoeATWxIx/hldz+qmsdbv+fYJeRvg13xj71ZEZDLZUHj3G+A7pE9N/
	 B1F8bQEbN7bGLv/S0fnbpMrqgiJdSEeqplnPTqabTsaGtZDkUeBLLZ0sHfc3VE0pAb
	 AavClzZGHNaC6y6OIWMIs7fTl250R0mACz++TkyvM4nAsPYdELoWxkujajtd26Fevt
	 GWf6hE+22fFWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A22C25B77
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587774278.19220.17660881039335212726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07d6d070838eda59ae2b90c1687176244fd8eeaa1b8e6b4f1c4e64111c63189
Date: Thu, 16 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715877742

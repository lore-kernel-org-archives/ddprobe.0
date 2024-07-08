Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E717721
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720435583; cv=none; b=GVlzDrDi0b7QC0RpDU0juBRM0QPBIg+BL8H7OSqNBapw8HJAmLocBSBSl33SUskXnbs1k/C1gsUEy8f9KUo3TEPeljtHfTm1J1RIH8fxYdn36wdDnKipHNk8toAfzyCxlMhP95yAxwylxgkYSb9OQjxE5JtWTdVQXhx0/xBtOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720435583; c=relaxed/simple;
	bh=T3mKvDMnyT1pQi2rjHxnl1lTyFyIL407xaI+UBvNfE8=;
	h=To:Subject:From:Message-Id:Date; b=GYgNarc3BOAvR7DdgldxspzBgVLPTimMVm2I3G3Dqx/hQhDJL5rdM8gRMMqv3fWrnc004LgT3HDQTqdUZkPbqffiwWSAxptyMWFngRx8LeUmX2UnirrK6mJDtaWlm/x1k4wK9Ugb/qprbdyPj72S5izQmoQDRfBirh3mdwFR8F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+2F4Y7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+2F4Y7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF71BC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720435582;
	bh=T3mKvDMnyT1pQi2rjHxnl1lTyFyIL407xaI+UBvNfE8=;
	h=To:Subject:From:Date:From;
	b=V+2F4Y7wmtRLeKD7iMccHhYpDc7XfzqgFJ9BMFkAgsrY120k/JpiGUonpRIdsDtJ0
	 FCZ1ZbIVkAqlqLH/9rh9T9mIeL2iTaM9CffgzBVt87lBuO1bB3nQ6WL8gizygVRJH6
	 78ph+zOMnVmZ6HuF6dO1CoD2644PDpp49RXJ3hV8Vw+aouEZiVtS/uBfp/Z0OeuZqC
	 VH/AS0WeRwaIEE7S35hFqHyjQZqbCS1N6u/l2AOlvKl3CBQdf5onFbKcy9cWmat5S2
	 szqLkRD0oquQVi3pJWB7jGoJTRhifgmxxs9CA6meyoeI/96N2y7aIXOSZdPyBZ3oKT
	 YqUACWyk32efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4799C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043558279.12469.8925763485167421943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e810aa12d4acba4a6028d170db57c5256d142730aec6b11e483267b39aa396dc
Date: Mon, 08 Jul 2024 10:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720435582

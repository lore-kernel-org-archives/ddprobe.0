Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28523064B5
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775222734; cv=none; b=bzL0LFd7xsfPXgSbh8cg5sMa3BF/dU01BYg4W2Opqin653dSHALQ/mdAxJK4XI79IO5e/4jdAT8fHvx9FlQnZxhSwD3d9ZHCCkoY2uSZ3CHTCcbm9eg0ru4+K93+mmBo2czaorKywggTDZn88QA6Dj5O8lfG1sdRJkNhumYGGz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775222734; c=relaxed/simple;
	bh=/OmknodVhcsv65dUBUJMzEz9AlczjDXsFyHTnSc9pdM=;
	h=To:Subject:From:Message-Id:Date; b=i3eIZVtriwKF1748PCRjXV115vtN0krn8YXGNn3j9guucuYQWgTg928dCAhmsudUpixNSuKUswB+zNbktSPMZPOi9BQxZ5bxoXVMgeZ+q/5I4eohmKJ6xQAeQEpdNt9DyD+Cb4t3WbIhiZQbxOdf2oURgkcthuDNmN39xQG3teY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr3HP+yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr3HP+yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775222733;
	bh=/OmknodVhcsv65dUBUJMzEz9AlczjDXsFyHTnSc9pdM=;
	h=To:Subject:From:Date:From;
	b=rr3HP+yvPIa0qHe8UdCQowqlnRVHTHRz+Pu3+lnxnNynZFUlbzbsHNdiD4h7kIM6C
	 Ilww3eS/JxRpBHCdbhqBwsoPPW85GCmz5OBnQmQLmwcQtoGZdSwAWJWUzHgJ5L/x99
	 x721xkhSbwS19zl05Da+u8HKLWIx88kT7mnnS1fMSeI9mTKwnTPpBmd8miariXqbMy
	 lqyyeYbOIkMSGM5TSnQZhO4/1ZAUJakZoP5CjAxnwA4GbJtPUp4ugAbb7Yr1HpSfe/
	 2GBEX0wm3zVgAs6AStaEE2sfmpFwNzudgpPkVy5IKH1jjCKW9+o9tsiUiZz473gSQd
	 bKAYcETNshqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC227E8536A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522273374.11899.14136049319827177842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218b09ce90af67a14d361631228471e506d617b5e18c0482e0f8fe47dca19e17
Date: Fri, 03 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775222733

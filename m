Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C78B14B08E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734476154; cv=none; b=BmrAWYGPQFX1zBUSW/SrJYSG4j6UYNSIJRonFEJ/pvRKdNpEO8AIvquMJo80DQ3qVtMCgHFzlFZBFC0jIQsbJaj8sKNeS1CZwqa5mzs6hDGL4YXC+Eeag6Asdougx2LOlmpKt37dck62qgbum0ms73O8ZC0+vVAdoXaNMCpxPrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734476154; c=relaxed/simple;
	bh=yszTSZRiRRN0cpUIlAQYif/ik7P4DhKBCodrlQqdK68=;
	h=To:Subject:From:Message-Id:Date; b=OA9vyBeFrNCpNcbhGvm8QSsJ15wL6I/JVD970+9QHsTaK2WcpC9mHtBt0FPSGQ+JtEedQqPgY3czYOADgyD8OdW/XFPO8lhb4cLXHfFYq4AN2rKK83p0Y4mQHelEjOTVMlU+h1iKWvJ+8Rk3NBHp572Z+ooOQMCfR7i+6FvgAC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6xvLAPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6xvLAPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8FFC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734476153;
	bh=yszTSZRiRRN0cpUIlAQYif/ik7P4DhKBCodrlQqdK68=;
	h=To:Subject:From:Date:From;
	b=a6xvLAPoFjK6Co18DsiqVIeb44aw07sclqIRfm9LbZRM2inOfoQmxzl5RNCghT3/2
	 RjNGUXmEQ7I5iIuAy5pVgamO8EPruSPO2s2SB5yBnzfd9qTzlr9bskkcnnmx96OXSX
	 I+OWywxaQ8hnlgcQhFYtwh1dnBqfK1ctA2BlLKL5YnX0QJsxVzl1G5aS0morJT1Ws1
	 9AyAh2RfBddRblNmKFsuL1V6EO9Mou9uJb4ajuBts65igRLsG/m1f6zWy4rtIdlZeR
	 7oCYTkNVnKNe7Pe6TTmeocM8bb8opaWeoLJUUws6eCpWQz8sJuE7LQ5qgxQUUOnM9O
	 CCIxQpggarVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B78E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447615358.21722.14502651029489911579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc56384c72ec08f20faec829ba0c342118d192b922ab96a3ce9b659fb49760d
Date: Tue, 17 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734476153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D41CEADB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763844714; cv=none; b=ZP3f6HmAJPiYKyIaYnSVVmyUJkYKwyLz6F7yHTJSQqhkfcXDV/x5ffSgBOIbxJjckbVfkNzAw1lXJk+ZmzXXalZ8Qu93XImPpEOYfjCC4ZKQ5beq0VEU8IsXBvmr1ivA91KS6rbgpEWoLpdlRCqxc1wAo/a5Lb5TF5KNvcaiTiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763844714; c=relaxed/simple;
	bh=YpSfwf5mb6UAMYy3cI38fIkYLyV1jRh+8ffGgjR4Yrk=;
	h=To:Subject:From:Message-Id:Date; b=f4ww+8Cx31wH3OKMd+PLyQb5fA5tBV6ceS8tq2wt6H38GIOq19yZ7Twc7u/lkd93fSWB9CKoZZsB6m9VEqIlY2hAzvxOG1SaFy3dYRkAqSul/Sc/VPqCuKl30QMbkmm00FKQQjdfI5xj5fDORaodExkOkOrENtA7jvTlwLpbjuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qdk3cCQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qdk3cCQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6A8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763844713;
	bh=YpSfwf5mb6UAMYy3cI38fIkYLyV1jRh+8ffGgjR4Yrk=;
	h=To:Subject:From:Date:From;
	b=Qdk3cCQWYcC7MvOJCcwZ8tr63TY2HYikpnRDec2ySgqJQXuZyUT9yNUq9otU6OR1h
	 vevLDyuomm6rz0SFwfvlgGKfqmGo4X5aHdf3kQQ0k7snpV+p/BpYc6ySmWsUQyXAOz
	 92W8aXX98XnLxvP6zcH3imGz/kYhRQYoeXTrXSZJebG4pbalZ6avzif6TiqF0i74fA
	 eS2+utWtlfX1oRXjBLHA6E/P76uTIWUAw8UgC5i7DsmZHFeAtwdUoc1OluU8CCYvJf
	 IMGJNvDeECrxvqBSugN0PGrWz2/H/66rJUXpCv7F9W8yXHhB+L51pme6dR9GUc/IJ6
	 cwD7YImCJ6s/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E83CFD2F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384471358.24206.10756001716214278449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762b438b210a489f71cbc6d3195b9896617cdf465603126bd31976de641aaf09
Date: Sat, 22 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763844713

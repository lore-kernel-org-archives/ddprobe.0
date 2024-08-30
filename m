Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3010024B28
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724984754; cv=none; b=KvshedrTuEOhfgvNCwiOM4W8XnfVAPvjIiGXDelFrL8DT21ybBGMtNBxOfDV4J7OlvebapHOg4pAvEFgOGOl/eA8ye04D13E6Mz4Z6/nhcjdYuY6clfS7q0Pz3vxWkIht5S8l55CW7dDBNFC1LqzHS68S67s5t7opT12m9DRBZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724984754; c=relaxed/simple;
	bh=A+YAieyUnlLQ2CTqVMn0u7Yxzc/V0dZNAWKvNu+ao+Y=;
	h=To:Subject:From:Message-Id:Date; b=EIL3pY8Wh8Y8egy+rjZjlf49ektcDDZ40TJHTTAEX68NGKgF73Q0VnzZ6a3p5uzewdDZ6C1YZ43lwO+YX0clDGKzb6N6leoAnPtSKbeaLkIFSDrccS+khg7eRy+g5rdGH2EBvu5SF+MR+s3e85ZRfSom3m35N7Yi9MVQDfbGlxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpYgIF5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpYgIF5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB387C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724984753;
	bh=A+YAieyUnlLQ2CTqVMn0u7Yxzc/V0dZNAWKvNu+ao+Y=;
	h=To:Subject:From:Date:From;
	b=kpYgIF5v1vAH13jWSVDWpvpbuU42tEOKFEd/v6RUyQujIuUUQyBn/PIPOgWIzHi5h
	 t/k1mu0jEvtNYkMY1R7lXyxQLRl+Ttbto4NPe0bIU3YqsI4fUy25dEmKE9De6dJdWO
	 Cb6bGaRsrJX4JE1LFkX6UgyE6S5F1pM/j2H0cndnSwFeV5Q7pKt8eDU8DjvAlW9Z4l
	 AI2r1Pv2HUhLL3KRTvdeC9/JaVCjd6JefT2EfJfb6Gllx226VdniUbcinxgTr1BqXM
	 qn20JsoX8fsytslORybxVn6YQQEUhdXzkjMQwIDFpAotUpv9e2AgIetg9bV8ZfE3Wp
	 qtZdbfPh83VFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67C3CA0ED0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498475360.10007.17840823040410085993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c280253e9ad638f4121dfc227f1b8dcc5d7e130d56d658b11569b65f584b58ec
Date: Fri, 30 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724984753

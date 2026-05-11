Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D0F2C375E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778535033; cv=none; b=UCH2y4147nxgUtR2HBjl/N1dP/O2OTTWegdTjlZQkfAtVkIlkHlqIZINsP3RxzFm7xZkWoVQQP+BEKKZH4qm+/XPc3lz7mhHgGjQhQCbfEIckDexJow1gE/nQE4h1QlC2NGCtJVK4eqO1mu+ekbdqLtZNM2RJZi2MPfO3ZCBTtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778535033; c=relaxed/simple;
	bh=df0+lxAhJPZ1MDd5Ao365XnAxNmiH43F4AsInJYwIDw=;
	h=To:Subject:From:Message-Id:Date; b=YsNauYmG4yW8wv+/qUpydKnV5qZaPCm1+OJHQCCggx33YsXtUUZXSJpH1JuUZVFfpZCVdrng5wMKMqTtvamwR5dyva1Y5LNoghZTJzbU2p1e6GwCGy8OdLvQj8TTSlE6Rykw7/65vN+5AqULzM1T5Yqm+uChbsVhGJZZV1xsBio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/K0Ha6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/K0Ha6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88CCC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778535033;
	bh=df0+lxAhJPZ1MDd5Ao365XnAxNmiH43F4AsInJYwIDw=;
	h=To:Subject:From:Date:From;
	b=D/K0Ha6eC71R3bSwkU+et0+fhBg288AaB7AWHZpRKRCXHZvO0wlKKbFg3yHHixGnt
	 +t2iN/zAl6DLy8DDqJBy5QgBbGSR5SCJF5rnTB1AeW9V/o+QPKzO0GbiFZbPsew5cY
	 uM0q61QVYY82l9laHJsbD9KsuoYJX/4DCh6RiyinsC/iBXaA7uz2d47cfoZ3UxBFbO
	 X4z6W/NABpXYUOCp1nBh1queN66zncnLud6VYZ3/lqzX8JXWuYnnWMY5jrYIn/A8nC
	 MBXIWV2j2OHCF+f5OoCld4sh8mAY1SOyvMobfI/HwHeKkhTO+phPG3pMKrGhhhrYtC
	 qxQtjQICqOTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D77CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853503368.6730.3815388617065470793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2df3adaf4e2f21ee754d28fee6ef2be871369cfffdfa6d9c4213d7a3ca11a6d
Date: Mon, 11 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778535033

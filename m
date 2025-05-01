Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D78224AEF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746126596; cv=none; b=p1ZA58yUafiuo1GvTuEBbEV0pXPRk9J+7Ykj95gOAZTfM8JHrj0lj7u6mzsIp68jRMhqkKwU+dqHvEwKi+o5QUaSZRjCFqCjSuN/R11YCk2tvuHMB0vWTssKppSfpYGD53t82NmfLTfKTWKrITzKMatIc2zw1PrG6QabcoUAtPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746126596; c=relaxed/simple;
	bh=z5J8jVhs4UIO17qB8IOTh+DL0/0ecGDU3doPpqzMJpI=;
	h=To:Subject:From:Message-Id:Date; b=DsqpKTh09dHjv4yhUf18UanjaW0SJrPa02SDUN02AYd8V7yuijIcFKUsuxxlIyVFdZwxxjFwJvnjNRlXTPIu9zMtraiT5WhYcqcRKt4+j3Lmg/reRdJeQehycb72CJmQUp08qif7DYjDxOGtDmLSw278I+Pz5JYnQrBhHKPp/AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIfRX++n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIfRX++n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D274C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746126593;
	bh=z5J8jVhs4UIO17qB8IOTh+DL0/0ecGDU3doPpqzMJpI=;
	h=To:Subject:From:Date:From;
	b=nIfRX++nxVzm9i9McWt8SmUzpZ51ghGINcpppYaGfFOmjagOtfYwFxvvXzbecIaM3
	 kD/sF19mMkDacYAXFh+ikPpm84R60UrBeUJh4MyDzoXi83R8eDMe1FYhJYsNBBax7N
	 qaciu7e+yDO07HXxcHr78QBoP7/xxsFNN+QTttWhiEPCBp1192ZHPf9b0tuIy8K0dS
	 mulM0TUBAmHb/+3ZqVomOkOuP4GKNOgRrmSwZuhmuJAt0AiO0cRUTM3wahQlIikOKg
	 DYO2T4mUATsuFrpAsru1hBIGYcHXjjl2BaUJsfYWnKw3D5RQCeCbMzwXQmQLeFVD0j
	 ml8oxRWryrv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E825C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612659357.11221.11860397170755033234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e794cbdfb8c1af8499fb3ebd2e6781a9fd20b387a877405fb06b54e5fa5349d5
Date: Thu, 01 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746126593

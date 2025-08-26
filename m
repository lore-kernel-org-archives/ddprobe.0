Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C364C31A57E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756229393; cv=none; b=Q3nKGtG0iezbZ3CHJPlMN7q5C5hFTwHuiOLhjxWj4Ob78sKNlG05Y0z9ch4kO4S4/5yTKBY1PjuVas9JZ7iQXMpqOOjORkyh9esCycjAU58mi3UNMcG0peZ1prCMG/ybYUFhZi4hOClMyj/23GXW9cJ37BV/Fpy+NZmgF/FqB0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756229393; c=relaxed/simple;
	bh=/xqvr9WjsSjHdhm/m+NRZLxssReDzZpHurz+8n+JilE=;
	h=To:Subject:From:Message-Id:Date; b=drpfJwhTalPjupLDQMQASJxx2PCBWldi7KB419XhuUcrs5jtuASN0eKDPh0cbLPuLkL5TyafcDd5n6Te1fkk0mzo74lOge7jWN6vMsNY7W/5+f5K6l+Dlhl72eolwZWigxD8iwFA3hR98ENMqUYHpWVfLg3RHLG1qKwmMhijdqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkke/bsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkke/bsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756229393;
	bh=/xqvr9WjsSjHdhm/m+NRZLxssReDzZpHurz+8n+JilE=;
	h=To:Subject:From:Date:From;
	b=fkke/bsOkWXKMQakPW/0CFmWQPsnLfMm1CaKdAa9BaJ+2S/kAxDMrRk588Y0GHaDj
	 lzriE3BqnEZyNi0cldwmCePGzfGUMtGQYiVCyCgutBxyBHgL/7O8vSKCqTuWqmm/0N
	 4AWvC7ebM7z5cOVfYVbgVBWApTDddmakGUs32rLCcnrPUXGlqOAOffasFL0wUFaJh2
	 3JylBI0sJvXAKsA6WLBGYi4W/77MRoECa5AME4SoLh8LMRhck14qVT4oVcZ12odm3+
	 aIJhJq9H2S+/bu3LIjehQEgza8SWDwvwT/Mpi1Mm4Uo5NoIqfFkVSODhlorQ4ESTF1
	 t363RV+DZ3qIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE2CA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622939357.14961.1676844502561981653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6838a2b52c54420d6707c3c40649ad3e5a20dbbba2e9ec7c778df4bbbd78c3e5
Date: Tue, 26 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756229393

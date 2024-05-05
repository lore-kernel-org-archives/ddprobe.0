Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4647C1339A2
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714947743; cv=none; b=Hd8veSGsWR30okCdd/ZxPz0jsePhPhyseeG7elUJhstg5/+RyjJqHGJOhu1/SlGDb7wyW+zl2Uwm/hlrjAXU+BNmYo+N7RCpnr8d/MOftGXWWvUdCmtE6gW+jnskdMr4AiNLUCeDqppfcqu4FQLsslppeLCxkNrbQqOImuh5jkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714947743; c=relaxed/simple;
	bh=uuZAmXRy8149mDn2MqJRthU7MUFiIt4mNWrlpZD6bmE=;
	h=To:Subject:From:Message-Id:Date; b=HRKcNK3EWx9qL/cXC65y3GnMVuGZO4UnYq2VgYhARI0M54Wwoynko0A+D441kC/EouKWTKuOUMtb530vIE4sqIqxAZLGxLI/EbR7grx7IVzXnbXg7//UL23WrZ/mzZz5HsX/lwqWuGmLqia+fscMTLBbeW6M2Ji6xEoG4Jsn3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3u5Lckv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3u5Lckv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6FCC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714947742;
	bh=uuZAmXRy8149mDn2MqJRthU7MUFiIt4mNWrlpZD6bmE=;
	h=To:Subject:From:Date:From;
	b=P3u5LckvB9rE0aZFQ4hHTIHVxYttB3OcB0wWLMAhflpYfo04zlCpu6uQFS1fIJO6j
	 /dYD4fQfSs024Cz/rKo5X/sly7h4PkUd0UKd1u9wdQLOzwOS4nTCGa7EGuDcExofHI
	 zZOOYx/nqF52j/b9ebTOgUcZGpylqC+rt9ni1TPCh9w2XVX7TtOyvGbj59dE7+8UEX
	 5VuvY1xJoVQvVsMvx5/XtyyElcElkuoSYDF7nzah1W/gbWLXSMzC98VjkfIi9UPt2h
	 Gbymq7rfy5/Z1QAqvO3uFUhQ8GR2GDir8bgCo2K+8xQufwXINoQnVZ7EN2gfhludAb
	 XM1bqlEoxmRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7C4C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494774279.21138.11676308083152113619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc47f3f5357d32182875a4f43f8de1164ca8baf1aad503f5fe67aac8cd829b0
Date: Sun, 05 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714947742

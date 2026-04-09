Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE4A1A6806
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775710534; cv=none; b=lJVZeoKuzcwqSEVv9aYmn0Upqo4jTvQNetmS1TncmhLcI7fgctR+jK0tbGmcope/Bom/M6/4kCJS8qUnKfDIyS38g4eb0QzF5PC02AcZW4FIk806P4+39lzMfI9FEgWtcUMGUgHMFi62Yo7e8tlLVE08oOy7CS1HM9430eUPdUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775710534; c=relaxed/simple;
	bh=nedWbKvRHzNfVsQ6BmUufLkU5oeXgPgVKFOdY3LsaTg=;
	h=To:Subject:From:Message-Id:Date; b=EZuHvznGgZX+Yrjj8zNyklY1gwVgHZmeCj/BXXX7X7G1zPYo34oFUzDjXRcppgLeqaxtVpv1J8DYYoWSJwiMnUrZnriYvXM75Y8hGLy+5etF61oAj16MuPIoO+sHyCRi/ZwWmx7e5eNMaJyhHw1Oili9IT7qcPanjVE0CTazH6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFNIPi8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFNIPi8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B77C2BCAF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775710533;
	bh=nedWbKvRHzNfVsQ6BmUufLkU5oeXgPgVKFOdY3LsaTg=;
	h=To:Subject:From:Date:From;
	b=eFNIPi8f338Iz5/c+jyeXBJOcfq0PSFfbFf+rg++i9G2puy/k5ctmPuZdtTcBJGeD
	 DEggjrSbBBG2tK8uwxlooifsY6TUIhgeS7gHOwctz0Mb/+CT6OiYQeqPBAhs/n+Y3R
	 de6Xe0ly4hS8PKY99jrWWU+6KweP14XAa6RXIqXu0pTz/i0isKTrZFZPIqAehPcZVS
	 sRBWqZIrhrmzd/nvTQUqVADydqpyCtEjTB2a19p14/Fm+VUMIFCkKVBAEd2805aZn4
	 gs7TMsBneGJtsJtFOyhVlt5IKqWw/bVlFUubciuReoB5aSxzyfScYFQ/kllEJM6tjG
	 kpikkpR4F2zVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF608E98FAC
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571053369.18288.8448827065101619932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1e820c07aa6284840473ae01d7204322cce85a1c05c2f0c911b5d2eae9d29a
Date: Thu, 09 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775710533

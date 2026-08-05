Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A209F3E5EF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785969634; cv=none; b=R27X8FSURu1TUxJS0hzYxd/ar3qIaE4R5eTRfPfMve6jNY6Xm/JGMC+7zxuhJjzOfVTPT6HA4oWlDeblR0LygVOgwMkssdyTrb3xnDaG16SbHJr8zsz+Zb90XxC2e0b1Mvmc1hp+kv5+2Y/0bD1G3EAdfibYDAcIb+VIJk0Fquc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785969634; c=relaxed/simple;
	bh=PUexZbVtYbNXIo1EEV2PS0Z8UyFw/IuxIwo2vh9xup4=;
	h=To:Subject:From:Message-Id:Date; b=fv2enD6AJhNvyxkzSFznHhafNrTjulXLWbLBWmvrElDAIq+HoXUNsmaPebufEvWLUH92EP8FUnjGBopSgHBMmW0pl/0LBXGfZrMh0DTLL3rOKuGh+SNUKzEPD1gI2hZdCjr9Zwf8SIyk4OXzIdV7G3bLVZnxGQyrIzvjdkGwM2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpPWWeoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpPWWeoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA344C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785969633;
	bh=PUexZbVtYbNXIo1EEV2PS0Z8UyFw/IuxIwo2vh9xup4=;
	h=To:Subject:From:Date:From;
	b=rpPWWeoZy+KpD0WBKxsDeHImpyAw3c5z29jyJJryXwq9f+vGUtQ8H3RiUZriDAxIb
	 C9PxZg36sMJyTx6YN+DDd2xNNnAjMn6LpqtuXC+v+6WDkmyjUSY4dVUG3qlJ4rDY5X
	 qWU3vQWYRdIaJQZeT4GRnunAB1SSvD39gkjkgu+S2/e4oZ/f3dHmSdjqTUC0a8rYlK
	 tbvBrCKr8KXY/T0X52klAjjd+or835Ve0G3p84Guk5GJFr52RHEfpYqMQV+fTZ6PxM
	 /yTx5rd5Z9XQHZhNUzC3cF79FeZhZfwHDt3eaQ1M6YXNRForIo7x1jUSJstixlHBNJ
	 d5mbUMG1qzxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D00C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596963373.5732.268849045968010173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046ff5ebbf75168ff2b8dd6a35f0a1ac8aaa995560b8222f5bcf9910fb40c171
Date: Wed, 05 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785969633

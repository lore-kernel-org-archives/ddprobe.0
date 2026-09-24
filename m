Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477DA3002AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790254234; cv=none; b=sH9aMFZxubXlv0aOMLpn2+oRRy9CTbg2/N80ZVe6t3f/amHR/WU4QFqnXnA67EjACnZFeFq8mlUbE5AnZN5phJSQjQF5eZ1fy+whpckKjWzVdP8lzqsrKWoZKh6m+tClZfaYfj9Iv8XteGXRj0y6jO/PIHikTofCC7jmba/4IsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790254234; c=relaxed/simple;
	bh=jXBOrxb0sUVCNqp/pe0e+phPGgZ6z3M6c55b2r79OTM=;
	h=To:Subject:From:Message-Id:Date; b=reJ9PcdJnp2jFoo0M6LtMU0e29I+AYI1MCRbs/GrB9cXoIqhRqmrtR9tK1b2upc0O9PyKSEcZ/FLhtjtky6UzMZrtbElZDdK76BzOo/nIY0eAEIzBFGYL63LdfLGUhrfUllncYGFEXetvvlrzNXhwXSCNJOspoR8VznILuH6/mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdTNewkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdTNewkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FAFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790254233;
	bh=jXBOrxb0sUVCNqp/pe0e+phPGgZ6z3M6c55b2r79OTM=;
	h=To:Subject:From:Date:From;
	b=AdTNewkx3CjDNtT0c+x7KwTMp6GLgN8XS1HcH7WvlElf8NAhTE7nf1Gnm0sLl5zGh
	 QTzSp9KlZqG0UfpwNtQ4cL+t5ZlnZksWjiaqBemlHnNkcgECAJ+e1Q2cSg8lL1H5uO
	 uiKisd+mw9DC4O52wl395T4XF2fPgtqkkOuIlykDmsIYd+cvKc3aEI19ovhNcuMQJf
	 U/+nu57sDX4atGscgdALejxzilEWSdycQLNELBq6PMlLzchITB+uy2zds0cmbjvVOY
	 DABDvEn8+pQpG1vXA6AY4F2E63NgG2UzE8nPYKiMCXn0gXgKiNCJtDdeKCqvu0wxmF
	 rQY8xHSrheMzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B507BC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025423373.9959.3347319333026697712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2b70b4b29e691bdbb1ff816f2e6b1f3a17449148dedee370426952aed26819
Date: Thu, 24 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790254233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1388433D4EC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781292394; cv=none; b=jFq6G0S48USxL6d2qsqm5Hc/Zw/PfkINTP2z+eM+qoVHL/dBq1nsPZDzVexjvnb8b+pm0r36B8vfEH3VsRdrvU987nlc7uQxM4tPsSnHB9qCfJDCjP9ohr/9GCcVGVLtVh3KE2lxOyGm2MeRFD+iWcCic0KW4XR8eidMgB/Viz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781292394; c=relaxed/simple;
	bh=JgXtIipUrTRFWeaH32my2BOa70eOhNQ65UEPQUrQy8Q=;
	h=To:Subject:From:Message-Id:Date; b=QeAQaRRNBFvHAXoue6l9BVdYByCgdDkClWMlo47bBduWz9TJKBO+HM6Su1WyzGmsM62wnUlqj0nueLkMvK0sluGVQBj2TKt3BjoRYX+DODwzESK+koyzhfvhHxklCfDxZ2OFa2I6CsFmd0uO92i9fBpqQK/vND0l8UA2Eg1wff0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKEr0y96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKEr0y96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B1CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781292393;
	bh=JgXtIipUrTRFWeaH32my2BOa70eOhNQ65UEPQUrQy8Q=;
	h=To:Subject:From:Date:From;
	b=fKEr0y96vvo0hZOKJifiTN0hszNZ9J0T0IVFjjJatD7hp08eIVoBJ9ooM0ORMqq8j
	 M2ZZ+dHxln2tQcaJLQggukV77hf0JwL1uCxNTCv8Tt/a+Imz+kooa8EUszCjvf7P2n
	 VSSgi/eKldmfdpHSNhoLFRE2oJaFFvRiLb8LN2MearmbeJ7anPCOj6w0J2u3dHmTux
	 /fAyhE8FInCWMSc1PicSQvRzNtkQ1GxgY6j8mM+QW49s+snJdl7Yy+FVogoNF6ofVb
	 ErI5WxjimbjylN/AEbKmmyne3RJ8qodc6DI8hvUYYTqJIterMIvzUE0nX0G6F85sIL
	 0SyDZd5TQzZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8136CD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129239368.4856.13180294916832781232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaac712bf2be2f29c31113bbb11f73652950df3f7a28f4fcf6a28c7a670cb3eb
Date: Fri, 12 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781292393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB76B652
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762917594; cv=none; b=b3Xuc4vhkhia2tPtmP/hr7xkdOyG0qRBJevcV5j51Z5Ax3ZJDE6liz22Od0objdMkX6tbKyMnU32DJ3ER6ZiuaMXZ7ztlIlluadA0UIshEsAzI9MrZifttwinWv4Dz4SSz1D/c4UhmntccNWO6dJq3zrgn11EXxoVAzlxKBhdZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762917594; c=relaxed/simple;
	bh=oM1hpo7VnQ4MNnQ40b8JtI01JViIf9DvzVnboePCexc=;
	h=To:Subject:From:Message-Id:Date; b=alrb9XD7Luq8Aw6xL2WGTei1AMZHRuHN/WQ6wWl2QC1XSv6ZI+9qat4jRdzQoQ2768NlT5zzleDmV+1cq1bdMx0VhzJnfq2SwVP7TVahEBjRn8IOxP2HuLasejpldI38BrAoOwwHOmVfLu1LykY48DObSY2iR+WDmMTKySm6gYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtzXEllk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtzXEllk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B0C113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762917593;
	bh=oM1hpo7VnQ4MNnQ40b8JtI01JViIf9DvzVnboePCexc=;
	h=To:Subject:From:Date:From;
	b=DtzXEllk9XnhTOs0uP5XSmmKzsUuUaLwhpFrjxCE/kZzVWfN2c7jQveYFQ+bndvZd
	 h8cR2AZhKwFGcnHELLiMl8G+sn/7zfRpafp+lbOJ197rBI7CSyISn0hJHPzkQ5fler
	 xGZBepraHhHW5bpXrVv3hjJRwaRfUa9S1Xidkbb2GTV8wUzsileHhj2/eNofx0ClkE
	 RTS3bbIzUtcU5MkIdvibrevORwQbfPrLu4Q3ZRS0BnYJnri6IKqcX2hMmmnVOwcGcH
	 ABLZTCHO7/1ASVIaV66sv4YxkNq7uPF6rSdP68e1WFAFfzP0yDVs1I4pULuqhisBoM
	 OP/UO8DpOMF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED96CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291759360.27164.3938785782549569649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2956bc1f19dfb8c0a201dcda8309c565370de469f234aeb14b351c824665d28
Date: Wed, 12 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762917593

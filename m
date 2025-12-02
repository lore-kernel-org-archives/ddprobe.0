Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F61DE2C9
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764640374; cv=none; b=oFEOz6UhpDFXqlHrXPhfifFLFdJPExozRkTg4tyJZ6YRmAYkzLxTJVxKPskabzc59Xt7G0FzRu/Mlt68Wv8ianoqXByT4Dx7BB9yJdHNvYMc90L2EVs95aZ0RrXLb91Za1s4KraK3uvt9UgYObv/pUF/liNLqqtMNHea/Qj6AfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764640374; c=relaxed/simple;
	bh=8qnVPoMnXr4AFCotJx3yLJf6CD22tKpnk+XQF7Znvjg=;
	h=To:Subject:From:Message-Id:Date; b=MTgPp0kU6mc+3lLLHVwYFGavZb79hc+RHu4ZNfBkb4dKSEkKMJBt2FDvx3qqSPzXUHNzuO8kYtOiOOaHRHM9i+pPldtMAL7YHTt1G/dK82Qkz8wSZ82HmwNbx2d3hnH6EYMw9z/jQmkMA0jBLCy/m+YOWLbToBRO6tFq2wHasoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXAA1+Re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXAA1+Re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC65EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764640373;
	bh=8qnVPoMnXr4AFCotJx3yLJf6CD22tKpnk+XQF7Znvjg=;
	h=To:Subject:From:Date:From;
	b=bXAA1+ReH0IvjnQVaPAcQ3GRjxt2b1jATNMl1noG+mw40Is5GoTLUQ4yll3ULWYjP
	 XUccDji7zzRmExwykCJtyO27nrgsGaLjMWMuaPyYRQUo8lqk7Ns2EY6dkWjOJJm43b
	 6bcPZp0MYoiIUqimOdZpMqCGplzUcCRiKT19EpfDKW74wMIiG1EHuENIhRoNvdRpwq
	 MjG9FMaP1TmO7RDb/fo9TajyBS6R4qjhmWnUW9G1xsdVs61Kb5NKnArVw5ldZJiVfp
	 lXGNaVPQDnIAXTfot0btRpG+wmI5qRf4meHc+PU+sI/EUJwsRURXaXgVwZQGRw6i+W
	 1ZSs4yav2l3fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC1AD116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464037359.24138.3256064082320992729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf39655c509205c2026a0ea30c7a351a1acc9cc54022e924370e7f57a7662c9
Date: Tue, 02 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764640373

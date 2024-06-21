Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DBB625
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718936483; cv=none; b=FC7l1dnCqvkfOY8MVpLAw+CqM5fRupcNNoHSMpEp33WLh0KvDKXJNjCTkhe6OebfWovndNywL7nnTR3SP0w75OwaVIX/mgu0b6+lFToL2HaE6yFpSVtbNw79IXIg7gr9hSdNnY+wZ7POZ7nx1mS6j1qSTnyrtuyEnwyXdZOTCzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718936483; c=relaxed/simple;
	bh=Xal/QXCj3SZKkaOoEMFgs4lgUgReZJDxk9eOfusTBc0=;
	h=To:Subject:From:Message-Id:Date; b=eUeMhLV4t/IupSLkViN0/U+aBYxxKcP60cvlLhhKwkKzjhNi4CDvXGiUtxZAm2ekUXUofDkVFHo6VGOC7QFBH28Vq70uWCXGwsYmbw/IhblExhGzMloTLs3szWTS+L66uK9/wFFfsjRjGKCpUfjqI8qtT5nfznNVGhhatWR/lx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx4vy5fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx4vy5fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF461C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718936483;
	bh=Xal/QXCj3SZKkaOoEMFgs4lgUgReZJDxk9eOfusTBc0=;
	h=To:Subject:From:Date:From;
	b=rx4vy5fWa6wNJEphBcquI9BRRRjxU66RHAYE0jEPjjKykMRucBFFvPgmxGpuQByTd
	 V+IAdAFOzjFJx9hE89+ekuTm04O5keJjc32VByY5JRQduqlJcj1mZVoYneE4DQbH7N
	 nOU2ktxYzadr2dfSl5YqGRfl8zbNIqB6UWMcH6bpLKQ8MumArUgzsdZfXSuvXsD9Hj
	 1AeehlzkTyaMLl6LiMLwi5RsM1vAMGlwCyfoBy+A8/tXxlxub9qNYRff5pKRQnxSgs
	 eaYuQdwpOq85abJSZ56jWuSG37NdhelUYJlQOIEShQ8MS4eImIXVKRuI4J1ritxDDK
	 /JrcqkBj535lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D35C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893648282.24984.16565116463057764742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d4b3a3b011da82a7d92829017a098a90401f352b7f45aceef2574a3d6f414a
Date: Fri, 21 Jun 2024 02:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718936482

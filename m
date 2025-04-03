Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6019F464
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743659394; cv=none; b=T7RV4eCFGH78+hXQmzNvQL7zJwUa+0LU9otecJVrU8XnGe64n216oXETnBmBDPT35J0niB5nrYDFNf/jnpALwgMStQYT73CwYNKDCTKisK7TiCK0uvrAEJZyspXEnvlQhB3qPOvuCqMwiSbXsLwFqx+ie1WYFNho4eEvusdYx7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743659394; c=relaxed/simple;
	bh=DhXbnY6316tXW9yKWO/AM7QmZgeROXWBzdjiUTEJILE=;
	h=To:Subject:From:Message-Id:Date; b=mVnfArhI31mLHqDFiEFEp1scWgXqJ9FPXKLIBihdxQkbGtKQVt0qphPvfYCRmAONp3oyb4lOiJc02buoEAgvpaZyL9RvpRCZlzFa6FqrCoHjaeiaDa7dCscAiwZg9JZLPd8T8BAGnH+ZnhJ/mQK1eZ5hB4NTALXwWU6DlF0J+ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzLW+0fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzLW+0fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D2CC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743659393;
	bh=DhXbnY6316tXW9yKWO/AM7QmZgeROXWBzdjiUTEJILE=;
	h=To:Subject:From:Date:From;
	b=TzLW+0fQWtI7bUA1uYDqppaFMH+u2fRL8ryrC+U1PdtPQdihHj0UOYMHOAnf6CB1p
	 3cTeBBegLX3WRMxiv4U9qDCL79ohkhqyxxPAKaZGeK30lyPW6hf5f6jDEMQbvMq50J
	 1wqBzrLftYrwwqtgItpfTbMh0852I+e40aZ/KkBlx6EoDf3cY4BWRCwQt8V8wCrFSn
	 B3FduFFC5bgbWVGbpo47AegxCiiFch2ToNAGVd9bjkhiUtsTMXyzhkw8OLReHXqQ3p
	 QH2VQaWcRZ4st5af5nr/A9DTrnYYq6lf3XDz5qow90lgz6AVekQC05+psLL+A+FhkI
	 m/6n/OKy/Bo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A5C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365939360.11270.16117894806551108239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b797ee0ca84cec38f98494523e67faaac27f9c775f3e7c83a7d127cb3a77dade
Date: Thu, 03 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743659393

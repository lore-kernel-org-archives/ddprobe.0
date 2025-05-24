Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC3D28EB
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748095194; cv=none; b=cr15A+RB59aN4hjsXMK34whSoBPHplmzB8ENNqF3MKgQAdJ8e/msYPbVIHA0hAw0jlmqqr7+LCfypPtsdh6nG02QT82vNWQXAsQp/+dtccW6NVXA6LnyoAmSsSA+e5sFfhEyKz7VJ5YfBOt+IJJoa6JfWD5NgPdpwPJFNCKMxqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748095194; c=relaxed/simple;
	bh=cut/K4y8Zbf2hFEaCt5ghip0ZXLP9EjxvGOaS+IbFBs=;
	h=To:Subject:From:Message-Id:Date; b=JgpqJ0ELoy0Nst7YBt6m5oXW3++bpMAcS83EVhw913PNo/H4bWB8HHztEAaM18/f1WnzHvnjLCYsHV9daboY/v3fkr//+YLaag75lGySe6+GEl7y2BuPDiOhXx9wAWn+telrIsLdZmoEFOmH3hYkdoRH6VeCU1kLjC8PHaYrGEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKuPti6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKuPti6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1348C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748095193;
	bh=cut/K4y8Zbf2hFEaCt5ghip0ZXLP9EjxvGOaS+IbFBs=;
	h=To:Subject:From:Date:From;
	b=IKuPti6R+/kT3PlfQAZGL8vQEITU0PchuqKBr5fm4ayqEw6zsnEtBO7wK0OJOZWo1
	 IHm8FEgROrFZKPlm6Xw9OhSRZjAZndw3w81pbrZkzd6UzJ0Q775UMKEdZmfPp1q1jE
	 81HcvAewsFJgnLljLmMi84FbxbXTxrI10ibBFhwQPeQjNnCnaPekDrt8ylrZ0V54Fn
	 EOp2iCHo5vmbSHWk6D6fiOWMsaj8FXc4TzfEOLEvENby283w+tSnOME7N0kaXa9hBN
	 X9lZ3zYR0fbhUGPO9pF8dPXGl4c+0515D2wvV0OWf7TRdxx4Knj9RrBjKmktUvZhku
	 WboyRsDSUEq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E901C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809519357.29091.6646409975116136262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7ae64802692ff5d2d704626003ffdb6353e77766936166d8f1a61a22aaf4c0
Date: Sat, 24 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748095193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C44D1863E
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738514755; cv=none; b=gKVeNk72b1CJvX6AGHRgO+5XI7EUKD1ikMlduYq2XqnAwY1ZtXLT8gToCGJGlJCJY0CtZOtOgVHZM6wf99fsuJqczrx7jBgJZEIE7bUxe7ErdpkVWT52/YEuQ3wgqJrfxtuve5egpOQFECXp5Y//gT6DF1fFYb5hKh9ntiEWslA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738514755; c=relaxed/simple;
	bh=YitVi7EVwfp4QWhjwBEiAAYIuv4F468uK9nJW+j873Y=;
	h=To:Subject:From:Message-Id:Date; b=V9klvkwAHziJhMJVKNTYzrlC/w4FBy7bxdcbrjSTgLMSxpg5Mrfw8jN9HSVsK8ZcG23gcx/u9gD/LrV5awA8yczrdjWUZqqDwTxPhmWpQBUdEDwsubfsmaZK9i2yqOlPAoavRJt99yNVeLHwezhS8xwMrditDShjNYjZOmugtUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAcWfknt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAcWfknt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCE7C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738514753;
	bh=YitVi7EVwfp4QWhjwBEiAAYIuv4F468uK9nJW+j873Y=;
	h=To:Subject:From:Date:From;
	b=UAcWfkntoIac3Js1Zbcr4NhlG4in7YMWrvHC4B0CmEP+SaTyXxk73Zj3qitZFjc5j
	 l/w/eYFqSTTLMyyTyp2qKCeZ7UwZnpLFOWc0ahxXhRZaoqP5CS6FX30t0PxnJpBWAc
	 LNNKTT6rOOErRnK9cgZNR4MaFzi8M4GFVZ9J7YzB/oIP2GuSJELq0LezN7Guqcbh62
	 2gASbFvLQA99m6wZ5Q69+lHUZ4n+HsTLHgVJ+PyJlnqfsVAV50tPAjT5+b6jq+dFgO
	 Ed8Cgf6jFi1PG9WVI5sZGMw9bIcVKsDEZeVx/F4NEk1HIWWWmdC1vK/gbH/brWCrHh
	 dhiHHq+WcTD5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B51C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851475358.21550.16101062963652801383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80c063a3a488ec91b1105fc58cb82a592b02675cde5b8b0d9342eca9cc35021
Date: Sun, 02 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738514753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD6117758
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714738343; cv=none; b=D7qbo16A/vTLhttDgFwqvedkp9M2zPnxNXSi6XpwDHYmDlqFC/GLFSeC6XGw9cI4u7u+tyMZuEWc7zq2pAZv6x8+MbyMKMMRD9RNSwgE9SAxbYEcggzjwfO+/A5jWrWrVIKOZ5LJ8h88Zav2kTc0GHPREfOArtyhIvJ8f4E4dJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714738343; c=relaxed/simple;
	bh=fzlTNcnG89wyIjf4j6nPVjwL96bAhEw/m33myvY1+DE=;
	h=To:Subject:From:Message-Id:Date; b=ml/Cq+VvmLJrO757iWKWGPjLuvoLYiUWiIwJYHw89eSGGZJconoPYuTaAkVp/k5scjFc5eQZWHKRn5xi7efduHcUpq2HTj9ca2QhJeOqELhQlWreIdNNAsxPV3smUgqvobOScpr6a2uEvMl6ZW3Exz9a9LDyfXAoH/v6WmFX6h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rICM/oah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rICM/oah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD67DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714738342;
	bh=fzlTNcnG89wyIjf4j6nPVjwL96bAhEw/m33myvY1+DE=;
	h=To:Subject:From:Date:From;
	b=rICM/oahXrePsSp51eK0FnLKdQSkkUgWQiI6N8Q5nq8zlk1szyx/rDor+7he54uAu
	 NZacHW3k8ICeH+siwlYnIsFbQ7uHpdwmY+AF9SNAflxIdI/fN4yfBPqx5QQTQYFKRH
	 AIZ6ZRfRjW2IQViH9mG/6byffsrmztYzH8lq3vfbJPq93B7QiTrgQEoNgirXBjd+De
	 E5Oj1JQ9DEE+P4bPhv8cBlGAsXVQY06HFMBD6WhDKVRa3QlAeXU6mxJ3RDEOK91xZW
	 ASWao1FmHgiHbRf6SNzQxTRd9ILzRnYdFiN4Esi86KYy+eoESFHYoVsfobPIt7nFhJ
	 geSwYM76+CsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8979C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473834278.27538.8744251707638569351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a79b5071f760ea74f358614825f8e040623805cc3d420f0432c48561b973f4e
Date: Fri, 03 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714738342

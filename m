Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7305167DB7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753868393; cv=none; b=Etmo65KP8cnWUFHhxHFM1gBpgwjj6SPF7oHs0TCmOlWPd6KfsqkATnWiT3Z1L1blZN0UYqOvLQAiMRpzEoGOzBCY2Z+FiOi6QUazBnlh6Rn6PuVgaw4S8Au98LoKuB2E8MlMhtX+E65QCdr51v94OdfkOWDQMA4tiGkfYrkld6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753868393; c=relaxed/simple;
	bh=qZRlMb/jef5OFg52owLwy3bE05Kvc/xqgY5yez04aeE=;
	h=To:Subject:From:Message-Id:Date; b=eqUDK8c8yxGqV398L2m+lmwEvYzD7TccXh9ZLkq8aMgYFScHiztwpMY7EYr6NlfuWTm0XSjoLVW6HXqtoEOgdhiFDWrvqJWz3O2iluLqCL0tdBvAPv37NcKoqhToJLDtMpLlQHHudsZ+G8HVs1tFJm4B86aOdUss0o3mXa5+MnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdkQYfUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdkQYfUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D68EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753868393;
	bh=qZRlMb/jef5OFg52owLwy3bE05Kvc/xqgY5yez04aeE=;
	h=To:Subject:From:Date:From;
	b=TdkQYfUVRe3zaD0/mQAR9+/JnE+3CE8i89OpiCbiYpGjT2jsmZoJExykZZxamECaJ
	 LYQ9Dk/tRRFVc9hlERNza8pAGTf6c1xXUmANxzN1clTsTMFym0djemOoTGa0tyfpNL
	 XscpeZBqn05JxZz2BQUtbLv7qbKYf0Gi1cqeMOjln6aJRFOu7ZY+FKOCRjSoP986/x
	 +5CiYQSBKhe+E7PiXt62Gpqqtf6RDub3BTrxmitjyahhZ3R17cawoMZ2nkFT42w2wi
	 U4NVSlqML3AH027qDmtT7YyhpX3z7qAp7pKXAuvPJS+HCfnxnJJbGGPLUxo0Xs3RCG
	 aAslYNjVPq3Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA4C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386839357.20788.7840570271440018969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4d559f18a694d2ab81580824ae519b9d99a59240c109e27a22b2ad9fc2e9be
Date: Wed, 30 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753868393

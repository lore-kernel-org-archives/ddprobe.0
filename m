Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2F0376
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746580194; cv=none; b=QsypkbaIIQNhLj8/cLTJUFhoi07PDZkS17hNE4R/0RVLOqCLn2EjVOt3c4uu9+ESp9/92rQ+Z+QYJ9uQ+742UzmGyV6oytVchoKo0E3JlsDDITcwds8/EaA4efaCVCLlt+o1/VY8hz2JkWL8ecxinQObew4mefT/lqacc7qSiiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746580194; c=relaxed/simple;
	bh=1ngV50zfdj42x8VUy2VcZ0XVpZpnIfGe9SZRlpyN0gU=;
	h=To:Subject:From:Message-Id:Date; b=aZ4vKjyGp1QXtijS4qsPJSJRdFg540Oq4YW6ZA66ieuJD6iDIp/xkjrBKw17dQkIajHMZIMMW4eBIPIwFWlEI0Uwr/dgB1CPN0LC4DsG2l9zfxkH7dz3ure2jkMbzn/sVJFHzIiwWvULtrJogpVNmfI7aFqIdiGrUSQC6YqQy2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEARKjmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEARKjmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A205CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746580193;
	bh=1ngV50zfdj42x8VUy2VcZ0XVpZpnIfGe9SZRlpyN0gU=;
	h=To:Subject:From:Date:From;
	b=QEARKjmRNoZb1czsnwus2Rw6vjBN6oJnvtvOyyhbecXJnZJZ0laYAGlAOcrVzH3m8
	 iwcB08pvFaIbe6qSVY+VN1/9fJWs+gRH6dUdFe8n0S9TFWwUXGx9snz48vGKuBtXiL
	 EinLEzgyHkO2zYgwMCy3rEuWbcOpV97qQib6JaI0r5sjqDADBcsIHhsp+/XFFAvwTx
	 r8jU4AMYx9mjBaYaQfnWEc+skXbNsckwQclyXvqLj9NGmew/GOo+cq89sLn/O+DrXS
	 QgYmwezsstLEW6wByQKjyhxFFo2iIPmZjWw5BwaXp5YeoUs1WxDBpPOU+wzKGF3K2l
	 G5vrrkzhN3JxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF1C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658019357.3428.17162590020711792585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7d723527118dc94ef2910436d7fe33a843417619adf434c5e30fba9f13b45d
Date: Wed, 07 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746580193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A3A1422C3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720778903; cv=none; b=gOnly0c78fqLQxgs7tWfIrf418sqPr4w5IplhNt5lCvavR50wUlOsiqYKwUKa8LWseygC5mXv7/KIo9e9BxQnIjuYyRaKWWSHeRyBlje50jDx1Q9prgNbs2Z6OYzdwuHyk5cB8eKHc8CAS18karUli3cm2MgDyEO+wW2shXfrbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720778903; c=relaxed/simple;
	bh=XpU8+xwrSWOyblYBx72axP1EmKP55Jx7Vm7j4D6qQzA=;
	h=To:Subject:From:Message-Id:Date; b=Q9sY9w54U2JEmUhF8lOv2rlk8d90AOOYJ4PZ0J6cADxBBZY7zJzMK9kOFGK8CVgcyoFPTjXocYy1Uw/7gPysTd10WwAI5TtJ6Ar6lIbkNpwJxPxG2ZE2MVySHYdpVw0lSKw7i0yneJ0pMQ0vInIyvvT3w6ff1PBDBXW1rjyVveM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/hD55CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/hD55CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8FD7C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720778902;
	bh=XpU8+xwrSWOyblYBx72axP1EmKP55Jx7Vm7j4D6qQzA=;
	h=To:Subject:From:Date:From;
	b=h/hD55CBx2AXdwrJFNPUHrs+kcf+5e2MIYVIx54xQn1MJfiO471x2xyp0zlVTnWrG
	 FYq6YJc+Asmjujfj5PuTDce8zf4UBxKu6RI2lj9Lxm7AevIhL5Rj/ZtJhJ8r+G669x
	 x2d0vz5rMpL5r8UxgwW0vk0zFGht3f3/jtGctFW4jVxtmL5r6H1UO8tyfZRVdmSvpv
	 q+4veObveOJ5jlMV7uXE2A1Q73W1A+Np4FN4kzCG43TfnUwkEoEaMpOUJQsy0+HNsm
	 n6TfPT4CJy8OqRN4bTcL0vq+G1l5WorA5EeODqQV0Ug9ce2ehc26Rr6D2AZzSKnSig
	 68Su+3Pa8oe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C56C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077890285.13162.1151307690473747149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc913167953b5275adaec4c67c4b0f07fafce11c973a8f694a73378e2dea58ef
Date: Fri, 12 Jul 2024 10:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720778902

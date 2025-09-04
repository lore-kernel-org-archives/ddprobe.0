Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2A2264BA
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757002194; cv=none; b=s3j4JwvH9XpQevvQUtudvl3k5vu6TXXTV0aNZTbPshIReGLZGkw9pko78kZhbK3QKEacggJyfHWuaauXf4oEcpWCtl+dnLU7mvDkjUKwfPCxTMmQCzwtcGsTKrSCJIotGXhewnqmUr9tIbAPfEBQQ9bBQwONLInbia6piVqs1GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757002194; c=relaxed/simple;
	bh=V2LHViA1kS753eYiZhiuJz6rbWx+wFCZWfKnLunbRik=;
	h=To:Subject:From:Message-Id:Date; b=uHT/9u9CW09KfSTTeJYIea6Wtzt2eVikouPuB8O3wGviZqRGF/jJJRuRBcHiRLgDLTv2ImegmPhIhckRv6dTMg01eBwQeZcItpptCJUFZg+dFcBT5mS3Atd0N1liB1RMnu+Gs+CU0F3WCK/33/0oO7qemhdAvlI/nzB/3zUCtOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1sp0fA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1sp0fA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5317C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757002193;
	bh=V2LHViA1kS753eYiZhiuJz6rbWx+wFCZWfKnLunbRik=;
	h=To:Subject:From:Date:From;
	b=G1sp0fA5v3f9ElonG8ovtBsZOYS9fKhrW1LwQ6lc3xzMVf3PlSdGcG9MiBuF8TJxG
	 W8uvJvdPBtlNXguAXPQrucdisbZpAzBT4obbs1Xu52RlPtOcHZj9PliniF3EI4o1Wz
	 qGSzsN5BuF6JkSnX6JniQFUxzyW+djwoomjr5LzpKM4wppxYy4F2Fl65G/w+sDmRz+
	 yAyrUzM76U/sgWvruBaAPYoIkG9MIvn+MAM3Bn5xqRG/DloPfw3n7PUahr99wM06Yw
	 3DbumnnmWJkgBAtLgQ6NkcE7peXEaAO2CHXnXSOygX5AFemgKDMe+BjG5lTua2wUuB
	 Vz5wyWYq99uGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA8CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700219358.6083.14104380366715979963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612f6c33c4ebaf34b67acb8ef6a911a1aa85e219d15cd4cecce753419eadc7dd
Date: Thu, 04 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757002193

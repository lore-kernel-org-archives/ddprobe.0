Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB0C329C5A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769132634; cv=none; b=bOCzt3JVKLh20BqEJmEh9HBAuPgH1forpagxwUl7M/Aza7ZQlptD0NObY06G2GPjn0amuvKCkIgI14GHnjtNOy15QePritRbPeuWjF1627C4TCz22LI3RNiCpRXszQPSCiKvAphqfJT+P0GVYOYn8n3vk/S84Uv7of5LHV+WJzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769132634; c=relaxed/simple;
	bh=OW7GSZZUJSMmxDiqg/CS8u252PcJKHtT2ZpkMPv/kV4=;
	h=To:Subject:From:Message-Id:Date; b=mpaHjXUbcu/WN3alSFOe/OlWo19GemBDsKRaCapDKD3OuX3lDZ697AeGTmEcm+qCVSO+5UErU3/fIlkCCkSWqxwsNWxUUu3f4yObqG8Z4OCdUt0er0iqOhyWtbMAK4jsMFgbCF4GgjHU0WV6IN6bPt1dNPftqApa3vHq6rjpjwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijEHdhug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijEHdhug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769132633;
	bh=OW7GSZZUJSMmxDiqg/CS8u252PcJKHtT2ZpkMPv/kV4=;
	h=To:Subject:From:Date:From;
	b=ijEHdhugjRo1PEHz+y9ipZUE3S2gKQy8zLfS0vqDfCnHvIsmtXBP1bAj7fXoiJv3+
	 HyJR7OcmjKF5mB/a1K+9Lzk1+nGNSwfF91IBZLtlPLWAWMfTZVVIEYpoDeCFlP4GHM
	 QkUGDoqNTuoQas8T/hpRjLfcFUv3r/BveFSEEHe5SV8asQq5IyRoXqVVnuOMmhFDd8
	 QcVFp7DeqDzwxCt8KZugnrAWNA07nJ7C7KV9GTHRJnkyKujs8IlflkRkv1GTnwCyDk
	 4kPh72KsO/F4cjnuCD+B9z2CqRbc0R3pWge8dW+STalRcmNmc+T5lVUbgq0tkc5kIj
	 B0AhDinQAH4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F02D6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913263358.29095.14691801656222371434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69c42b708fc0ff79478564eaf8c554505ea8c28f6dfd0ffbd95801bded3e03a
Date: Fri, 23 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769132633

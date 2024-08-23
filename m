Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4F55887
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724390754; cv=none; b=mMSjddp9QcyS1M2FQq4PSnNw4lcEPMiXBN7vb2pshKYHzKfTAVQaYK+cKCn2g/IUBCorlIsauIKI6Fq0QaQPw8sAQEXJ9qyaw18KvG0Xj7/5qeDa3rJm9YididUVu9O6d1V/34iNwsYk7bsFJufjXJw9rWX9MZ/NXATvHItAgsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724390754; c=relaxed/simple;
	bh=jGLhz5vvXTY6iuqHvFlbMard1vnRm7Fl3WyWZwMt0WY=;
	h=To:Subject:From:Message-Id:Date; b=UDwK+Bj9fNmpLRnuDgHoVj/jU1gBWq5Vr4olRBCgXq5P5zzkLQvW7NiXO2Xdugrs9kveaSyP/GLSkYd8zCEVUD/c27x8wJnJ+eE0hPOOsYq4HEZX8P+TOxucwCpjunqVVJ04vQEm6CmsctkBHaDuVt086ZbQ0UohMKwwjMsTrPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK1CNWNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK1CNWNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FB6C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724390753;
	bh=jGLhz5vvXTY6iuqHvFlbMard1vnRm7Fl3WyWZwMt0WY=;
	h=To:Subject:From:Date:From;
	b=kK1CNWNc8AsH5q1Hf43gjhYmJXV4wehfm0IBPxfzoHjgaZ0M76YpFyxfBSd5t7pVV
	 ALh74WKqA4ZmDap4V0b4r6VMqm4+dw2/hDf5LmDJI7u2wHs0vyYtSChj4e/AhmGcfG
	 ciy7ykcS49C6zRMORb8Gyz2X+RvpzL/l8mjjhFKenN6ENzgtZGGXa7TC3svxYpcwjS
	 YB0oNnbksA7qqkNlppt/VQ2Pg9HsEdktCTMuuQn25RSbT6mDWFRjTYX9tcex+YCxO6
	 5f1qT8DOZXdLa+eBYFnUOLBxtYsUxBl46Zwq5pQ2ImrNU3tJo4Gb1M4VgWbtvROsTN
	 jcDy02OVlZYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD00C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439075363.2048.17530185326506800769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ed34220772ca1b938a7c80b65d4100101e35d18f7e8c33700820ac9d760418
Date: Fri, 23 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724390753

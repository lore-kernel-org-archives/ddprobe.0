Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F491170F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717981643; cv=none; b=haKeU0b3UHR5m3N6w0SlhxMGEc0QL65naJwWmou9hG16kktlxyb00pYh5qJeGqbtWeUhwvtsc55K4bzCrTH2KyCX4AN97j7dEc0ZqLag5vlFgjHZO8vmKHdYpGfMVLNtc+WsDysB+qToqY7ziG9VXP+ObPHWS4Tpgu4HmJo7k1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717981643; c=relaxed/simple;
	bh=AdDxmhijMza3olxJ++wza0tN+xdDwEGK60Uq74Hd1bY=;
	h=To:Subject:From:Message-Id:Date; b=KqCcZw8EYfChvqX4tUd+Jd5yGz8stp38YAUJ3YIWFTsqleD2I1EoTwTX/sUJJ6Ty69GfLCT9bIok90SgK03CQDTL+mxPTNcGYRzBLE3meLvRZVYYwBnrxo2dAgLPFe5FUzBEWzjvzOH3ziK4l5suG7ci/le1RTWr+nHMdOhhob8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQvPoT2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQvPoT2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AFAC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717981642;
	bh=AdDxmhijMza3olxJ++wza0tN+xdDwEGK60Uq74Hd1bY=;
	h=To:Subject:From:Date:From;
	b=RQvPoT2MjH6bBJjetSODm8gNX7sYEI9hreaAIsWBw5YlW2lRbmkPQHWTlQP3cixKO
	 wEYPvcIk0Vqrbv4qTWsB6oclcvzM4ylP1vCW6ieGJKuFXj7895GOSg6JCk+kC7hvxT
	 AmxS2FJsRE3KyrslvHNin9yTxTs5kvw48SfsbS74X3ZfB9tbzIEy94StrcTAulOpQO
	 wc5cQZY0Ol4cQAb7AT/hlaiHQzYil1Unh+6acnOxFcPh9oC9cNRef2jSyJxun/8HIP
	 0bcjNL3I0nY/29/RmddjKvIMMIN7+ucQz89a1TdYL597SNjALsHM29z8sL7X+fsJ6U
	 c/K2elhkK2msg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7A8C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798164277.13495.5694231670925657028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970fae37988eebfd7adfd147108ec7ad9f6572bc07de408c306386c59ad5cf7f
Date: Mon, 10 Jun 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717981642

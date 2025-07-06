Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956F1C1F2F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751834994; cv=none; b=l9hYXTg0CSBp2VeSXknZbDo/Fz+Pa2a2uCw4O8s3iwPwVwcApvpPbsXWchGlukoRJ7TIEH7rLqBARBW0ZhMT1th18A5M2/QAFbp/mwP1xKYOUHZsZCt3O+awaCaIk62wfdj1rkkWD8d2Q/qtLPFQpbWsnxeNfUurDl3YaCS1ShM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751834994; c=relaxed/simple;
	bh=c3d/GegEBmQ6+KwZBa40H1yJlMfMXHpSfPRPvEo1OkA=;
	h=To:Subject:From:Message-Id:Date; b=HqHZ6Mkv4RmDQLuAJgAYuamTQJKAckEF+at/0uTe9H0p6m3vXT136rCHmNQlGRrKGxHJNNMnEF7BqAKmsv2oDkSocUZQxdsnRlAXXcjeALotnxVWz1wJzKjCnFa8fM2iQrRI/dzJvmFoON5eso8uyUnwYk7ov3mh4G0yasTpnNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3JCsHWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3JCsHWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B42C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751834993;
	bh=c3d/GegEBmQ6+KwZBa40H1yJlMfMXHpSfPRPvEo1OkA=;
	h=To:Subject:From:Date:From;
	b=U3JCsHWzltZzqJR7qmR8QvXk4wd9lurru4GHvbEljxhxVadewmBKynvILlj0SD0MA
	 snp54ylq/ExjRSNFEQDdCK0OFajQJN0lxSmIWfNf4b5a1cG8SgoL3ntolGO8Z+raIG
	 CF7/SJBANMoKJEmB3l8h/oh92DY8TmLQZ6ZSeHcpEmmDoEQ335dV2za9u617S5h5cX
	 Dbuzp5j4vXaAKl7jmL362+MqP+VcbyN8aWcd2fxKQUObxE5i1X5IJVBNo5WuaxfION
	 2VBN8X0R8bsv95K4mbMibXDbmkMDsAPptQGlrEFlmO7iTd93OEzdo+5o3tHSDDj+Su
	 xphlLWrw5jJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B9C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183499357.4922.592879219557082887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf5a2667f80359ae236915f947d4e8269fd75a544b564f9fa2435df13ce4d17
Date: Sun, 06 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751834993

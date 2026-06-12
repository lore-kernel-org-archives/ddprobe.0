Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7B837F737
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781261194; cv=none; b=M22uaSWEwoCu5yJZ0/qv1RKelE8UTc4NHvofUjQnosTM3PfS0LYmk20DCCWOoAANBlbV4A2xe8N6cMl5cXQoicUvclUVejSVhBJ8wLLTm4NmBAGR4HLCJuDGEzBRNN+G2IyiWLhQQMMCjuSoXNXtAcJA0DopqY9jjFd0meErZGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781261194; c=relaxed/simple;
	bh=x6dSq0qiLz2JPVDxr4Vz/o+UAXpKiH6uRT1EtP3IeFo=;
	h=To:Subject:From:Message-Id:Date; b=EzKXAPerKvKSs4E5iMY2fIXjS1mB0u4yzXGoG8V3WP14KDeUVjqWNDnwyPowiyHmKyaVDhuc+vdFxO9gKh68kOSp/ZKozwhP3asZlmeoPBtY5gEkrC9FaVovViEK8+VqsRRRV2/47N22F77OqlJn4ztrPUth75nmbibXJHKf27A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5bArgXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5bArgXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3956C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781261193;
	bh=x6dSq0qiLz2JPVDxr4Vz/o+UAXpKiH6uRT1EtP3IeFo=;
	h=To:Subject:From:Date:From;
	b=a5bArgXApnMI7WW41LLANMd5f/vh9O2d2FoQ4GTo9DkP7lC3iXfnNN4zZT/BX3Bqn
	 SOZE79ztiQf0QhJSq2ob+EU4orUqrhqDp+niWWtAHN+n2asLmvSoyAns9IK9Wt52pl
	 MgkS+EuPCW97lp7BI9lrjr22NjkxdAgLErPllumV46jgeZwoinrnM6GpRrAeoPq41x
	 1jVcWGM4bLHTXNbVf60FbbU3KIhVSB9PIriFPhLGNJDCNpj93NyS4aNPfY/taSFxW9
	 oSSuWvFM2wWURH59KaYqoIUZks/BYsE3MUgRI06CpJNKFytzAwGI3wZJYqQP0fPs6o
	 rNPU1YrvQ+k6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8128CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126119368.22861.17896744260218561607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac46bae35814a0d6b04273e5f074c81209bc2c225c1615bd7ad084e3998c8fa
Date: Fri, 12 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781261193

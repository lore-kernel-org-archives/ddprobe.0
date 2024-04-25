Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD1B21362
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714041083; cv=none; b=VSPAAei1R4ofMzED7U1xvtAZtgmn4hza5Lphkjl8SifQpr/aOn4Lr6Sc1+jnbOUjccNhaHZGiV2Ubpiwo8djXpvUtzJ4vVRlEYU4daZBU9IRi+dscE+rB068BJXt9cREmMP5BFd7gFvPrcfoF0dU1vol+GjIReYIZAzhljv2PQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714041083; c=relaxed/simple;
	bh=M3qHUHyBGftUCWV6g08HihhhZqDL+HhRnGXy4tA7r1g=;
	h=To:Subject:From:Message-Id:Date; b=PqtWQpv9w1rc6516/+g5FMtqP4PAGB26anyAsWKUAEmwX2dw5juEj4MjQlmLvQzuedAugib9QmSUJJfJ2l/F0wCH3F59KarjZ5eca/OUsxMZ7WmjB+jpe3tbPu3ogdI9o8uUsvhBXjbj2qqilGTuvoBOlDacmbw9KySa+v3/bJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxh6WrXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxh6WrXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65FCC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714041082;
	bh=M3qHUHyBGftUCWV6g08HihhhZqDL+HhRnGXy4tA7r1g=;
	h=To:Subject:From:Date:From;
	b=cxh6WrXIY0DEGK9dLi6GHzNMnWSFeOVEp9kel6PwO2UtkRv4YPplyBMQ/J107ZZdz
	 ECGH//n4PvAkPHTbmQgQjgnr1/Y28gusg/G3EMEBJGigJbR+e6Foo5HNGChy7wOITj
	 HUzuPt3WD8hXXi83GMetYC/riGLnS3YGVXZ0wjHvWHDtlmyhQvCtY7AbuuRlg0ZwY6
	 V33XbIpUAvQ6yEkGjMlXky88QTlOrRTb8vZFyqoJk8OuR76cnypz1q25a99LnXtZyB
	 FqPtlTSOgtq3KAGB2CfpNZgY55xog8MH5rE8/bLCxG+lmcuiJGu9jCyYTRiqQlqd7q
	 fNi10rlj7rjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AE6C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404108280.27258.3575987908632535420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a25ddd6d497bc458f3aae6f2b7b6e183cb22113e45d6ef36e5dfe91ed79b00f
Date: Thu, 25 Apr 2024 10:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714041082

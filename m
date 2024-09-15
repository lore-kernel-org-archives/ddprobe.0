Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB3141C94
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726437354; cv=none; b=FEV2f2zISE/B4YgxmCAkdqtCLwCHGE8PDN0+I9RAg/PE9rH86enB/QvL2NMBQOloR9pWfQGtNt5kfsNj4tyk2sWuNtr0BoXC9EyBYfvFXBCaN2jxBawcdw1W8smMRmkdPNgEn6Q0gYC5OG8lN1WoRwpvnIgl/F8Pl04989u5VSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726437354; c=relaxed/simple;
	bh=OI8lfCAFqHvf42hFdPCRVrtSnOml0ecmbyH7Sb+X3oI=;
	h=To:Subject:From:Message-Id:Date; b=C8+c43cmLxum+kRjkOot2MDkfAcmWKDbW6NXvIJoPrlAYjWxKz7I3Y+XqnhItIlX+n+wYGsu8j2HQNxsxS1o/jaPpOAeyDSzvwXxJrjPODcBg4f4DI50CNb2MS8O7HgrrSzHBX4LItpijT8H3cuz4X+AIeUeYSc66zTwAB+vPAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3gNIBO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3gNIBO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC844C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726437353;
	bh=OI8lfCAFqHvf42hFdPCRVrtSnOml0ecmbyH7Sb+X3oI=;
	h=To:Subject:From:Date:From;
	b=f3gNIBO9xPTDKzsdOPR/Zzffj9Fy0zOUFqmgE6M+P7OxsZ/Q2/G+RFyU5LyBYh0AD
	 yCXbJOJZciwI79eCf5ovFYL448I1UBV/d0HstxbqgrQ3xmqRPaY5NMfL2EYH795gzb
	 VwYvvpg1DNEInRzJrTld6BOE5sxZYH57XcPEC5yHjVsC9F87iBwiz+JztKZ7UBvwp6
	 eTwVGGSYB1gzdPpo3PEQCYzwVwVsuW9C/bzUF4XMxBoDeryFarqNeIxdr2kZMQnDnc
	 Mk1KYHOREHjb/x8gnqPiakE11NRlC7upny5rau7rI/otkO5kFl3e240t9UrcRQAn/m
	 4/VZcaLMPgWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDCFC3ABAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643735360.22981.2400334798663039235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9c923d77f49321c1253dae1d876870f32181b94f5a67a019300cd9eb4924b3
Date: Sun, 15 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726437353

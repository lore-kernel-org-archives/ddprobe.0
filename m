Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302313FFD
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754787594; cv=none; b=pXAXjZfksznR9uHtTRgRnAfZb5aHzE0TjlpkUIlhHs4WGVYxzFf6QGK3X8CQAwsvj7V/sJt2nvzjcNWFMgZ1Uerv/r9CfxxgkzB1qcveNVQnjdNgRVZsuNfHV/RblegxLZBzkf4RJapVDlUJVSM8AKlVm7n6bt+a8GqHPHyNoAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754787594; c=relaxed/simple;
	bh=O8garVie40bEIQNIuUOXMlglClQpaxmpu7e8+qzPHBI=;
	h=To:Subject:From:Message-Id:Date; b=IEqmq6e1LYCyiPu1q5kaY7AksSKwIRdQx2OKKG+FUfb3VKHkQ8psxg+5vNmixOPa3676wNBDL+qbncRH3rnQH5EqKZoUeSCZ7q5u8oeCL44L1tu37KpPxUAKEpQNBDAsdGrIG1P4AihXguB3qvRyyTiZOCxz3VI5NTy66Z1wDlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxsNhIOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxsNhIOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBBDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754787593;
	bh=O8garVie40bEIQNIuUOXMlglClQpaxmpu7e8+qzPHBI=;
	h=To:Subject:From:Date:From;
	b=sxsNhIOXj+uylCyqryq37hT0lfFI3xFTK2v2YxMIIWo3RzK3txLr98rncj9ekraLI
	 v90T2ALiYiATxzfjCDAh8LdMo+w6/KvTev6dQH0yVnC+ScjNapES9DbKlH1mN/bXG6
	 CYhDo87knimA2TV/ivyqUjzpZOP2n7ufgUcfQ/USdvYXgvncaEI7bW4CrF+reBoQQt
	 kqhGcZQyg3IJnIxujIBJN3WFt6w3zlzR3vi9bYd5bkv50SUGrOI8jk65cpySClrscj
	 aTwEN6hMvDNapC6/HK1n33sBI5qRXWf8xpjA7HYZKLCG4xQx2Suh11t7yMyv1psZ6f
	 mWJI/ak4F23IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F266C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478759357.17357.17680181878132061989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edff42d54c97d9efaac8acb96233c500451336457a0948ab2e160eff7603269b
Date: Sun, 10 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754787593

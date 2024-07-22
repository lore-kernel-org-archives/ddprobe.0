Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE851401B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721688354; cv=none; b=M4F28Azxk1UZ/tSEZesiRwh4tYAMtS0LU8B5DHY3OBGxDVfzZ2rzxwnDDOgBC+Zd2vsEGpWsszfnVWhr2c1j/BQ6JK1IGUNJX+K1W8VbG9V9Bwx8R0Nk08nCHDcFiOnpnPB/m/+tYqo7lpnvh4sLuoDg9stMA9pC/SnS+AbBAC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721688354; c=relaxed/simple;
	bh=lmpTNP2gu+KNsiKGjSPftB0kpWXK4RdwaiKS3+2n1Wo=;
	h=To:Subject:From:Message-Id:Date; b=O0pbdEMfHoE4T/JODyN50qSNHZD8+GnrTQptCNLEb8e5qNz1uGqu9Q8wvpAP57ARW4bkHH3AiVbEU/16HPUXjlAACIeehG4ZN6N22yOvX8BW2sZT0GVIKVNb14K2IkfcPDF+gBij+n4cmsp4p98PO6/HO2tXCSmOV5SrcmE5PrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S03gUz6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S03gUz6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6E1C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721688353;
	bh=lmpTNP2gu+KNsiKGjSPftB0kpWXK4RdwaiKS3+2n1Wo=;
	h=To:Subject:From:Date:From;
	b=S03gUz6qqjQlob/OrMlBE00f9ZbJLQE86V8dgpHUtFVOok8y5OhxJ2916g68zwZM4
	 cU190mVkYHuPErAMJHWb/6V+BiU7eRS43zxf38B+boZX9IfAZQakjDHC9K302H6YBc
	 AMQ5b2PSk/9HKPK2uC9EZWMLmhBRJtsHqycTUDFWejZoyvy9azAxLasuqwaUxOcMd4
	 zryW9NDrrxqm1gB6JjX9nkvL6raIo8tMClg3c5gB5drPwg1+MDcpum2GAcXNaCPQE0
	 g8tyCMNQAMKcoXPCRtjOMyIQxHmcPWltH3GHIEEcQq6AzdptwTOzeP0tPANx/QbNNj
	 A12ZG3Fhh8AtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9916EC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168835360.29763.1133970081874519993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d30e92617128eebedfdfcc5e9ebaeeb351076ab9eb72386788c7c08b1871a3
Date: Mon, 22 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721688353

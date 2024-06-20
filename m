Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546DD757F6
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718918423; cv=none; b=Z8pa6G2dkUyAG3yiiu8hKlo1fPpNmXNmPhGvxgtFk87F1tM+6Qp3THhaMg7jJ7epyPakFYTWzPCrgHMpaYhUnIs9IUtoau2DdHv7LhgEKUNYtTVK9aRkou2N3eawyOAhKAV4OoHbxLUsa6rCfHO4QFRbgHqnT/aEU5CRcaVEXGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718918423; c=relaxed/simple;
	bh=exeCsfEX1OCYk9e9V6C6VJabsh6Z0tXUm38CoQYPMnE=;
	h=To:Subject:From:Message-Id:Date; b=cD1/oFj0+51Ra0xeAzfUpDp0Hl7CSew6dUw+we/3RIAwHFWVm5Cz9uLBKFMuHW0kNW8cpRZbjMHy1vu3R7zCgNfkcwU5jFOzbV2qK0CgBkUwl3irJCIDINEJUy03kBZF2r/OMhm9OqqsIaZArbRb8UlFUxwKKH1xxmjjISSAOQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pENV5XlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pENV5XlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB39BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718918422;
	bh=exeCsfEX1OCYk9e9V6C6VJabsh6Z0tXUm38CoQYPMnE=;
	h=To:Subject:From:Date:From;
	b=pENV5XlFkPJe5vvPoI7Q+XfoNzkb6vk4DEJN5UST08AseYmVewHDBngYwuu6Tfn0i
	 xOXALXXtrIlnGgJFznHGt/F1a+CZBvWQSFm9C/ezpKXqNMi6tUesYjaAxGpVphe/Rv
	 iW0KOHPPyu+5IqCxGUfpzLtkL/pt5ZC2Tnvf0pg7xZ+LQhEe08fdVkpGN+h2s2ijfz
	 Iz57Z4HXAGaXZnUdASSgOc4Kr/y5cHAFHMeSsIDevEWnv87bt2AxMT6jbHTkfSbtPB
	 Xro/uOL0NWWJoKduVr2/QZuHMxIuRqP4ICQYFJx/VKavsl/lrNijMdECEFUERpCdCF
	 Rw2pUVy9fQqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8297C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891842280.4492.17022451585733063616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19c733fc0432d0b0fc0c4b4f994a3a3a9ae38bdb37a90245c2c2090a8d0b8b4
Date: Thu, 20 Jun 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718918422

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE061F3D56
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765931034; cv=none; b=R74SfSM0PhPxUZG36fOAeiL9s/L0wCpXi5pZxa1CR0lClt+HtcvfMDp5XLflnmfOd2ivQZ8B0NmyhEtNp8g9viglxsxpbcMSdvPuPKGJGhmW2jhVkD+Yu4pVuQVk4S4s8jr3UhmWraCrPVMJfum4dF9Q0pm/0Z0/y0+82jSIBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765931034; c=relaxed/simple;
	bh=7iPN4K12cEKZ4euzwVRaKfxoTkOVLivvspdPExGSR1M=;
	h=To:Subject:From:Message-Id:Date; b=c8tAvGrMYqkjNa8YIVQj7WPaM84BmC4cG6upcVBCj/oDeXw+Ji6oZzAuyhPmMR4Mwv70zlxZah6+ATk+SiYtGIytd/7SgeOAU2fmF/SdRLC9d9pFb2NJAasDjzS0t9t262GUCFuLHsMJVrj9Fv4egRIhv9uC8rngSo6kYE5wRng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTNzUi4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTNzUi4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765931033;
	bh=7iPN4K12cEKZ4euzwVRaKfxoTkOVLivvspdPExGSR1M=;
	h=To:Subject:From:Date:From;
	b=HTNzUi4ikJy1+9SWsQ2Z5WPy1fWyXKcPr9nhlkpTiZzp7Vnd6ONpzjzizy7mj52bi
	 RUcILLtbrjbohTMaCOTcNP79gdY/5+NDbjtmfOTPI/X3xQBHHAWBYH+HUq66MTjSFQ
	 SJefvMIfDOJcZ76H60xlEkOw5sj5EiYhHHLqIbVxMDFtJvKY0teqjSHtUwc0341T8P
	 nVrOZJSGHlBythgJ2AWTxxMstfS3ZwPg2kYCTIJCAdOuYuwEzM6+iq5350VaRKLt2+
	 aESc9j3q4oDjevp/nNQvCTQRHkLj6ScQIRNEvnheAonbyS1d5Srg/4DT82k9ee1gUq
	 AU/R6t8KTIlJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E50ED637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593103363.11923.13599909711944809788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31afe71591f3d1dc0cdb9559b739b6e2ad2858bab753f93f1bad47197b821b8
Date: Wed, 17 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765931033

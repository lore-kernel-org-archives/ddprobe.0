Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9891F4181
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739655534; cv=none; b=BIn32zE8bq3znWP5wstM58BswgXgwQbAJLtb0N/Lkgb9mKhDrIR4xQcwrAZK4nCyqmWBlFFeZUCX1imQXWbZQHk7UL+dZ08GhEdmwX2nVJT4NTq7rzqKP3gcaQL8AEL3fX0RN1R/vTo7xrefs5452p2fceYxz+VzQlgAOxZE25A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739655534; c=relaxed/simple;
	bh=5bFJZ4O2MBd1cIsJUmXR4aTIuZTBEJEjknfBb5jH77A=;
	h=To:Subject:From:Message-Id:Date; b=kIxVLX/wO9Zio/N8T4M51rcuUNqZuoZiXt/qBO3AJnz+tOWa6XiNwv1jNIaTDImuVM0ajGnQiOefkKexE+e8uhP4c1NQH+Noly9U2XlJUH3NPTYgZqn1Wasqc9ATZVmSHice9yS0BKc1Y3TFFauFaEUtvNx0tbSwIHytd0O5db8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZDyqkop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZDyqkop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FA4C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739655533;
	bh=5bFJZ4O2MBd1cIsJUmXR4aTIuZTBEJEjknfBb5jH77A=;
	h=To:Subject:From:Date:From;
	b=sZDyqkop/aqcRQRPDFWNOSB6t9Xo4aTd7t3/8hLZAWhdFuqj/+aEChiUC4MAdQCuU
	 e0PFNqek4M56zDnWx1VzXzHbE93GH/QEr3Z3KGO8GKyW2EB2jJmAMwZLWfb3eiPKv2
	 paRc45aPs8oTz/OGArfw39kcrNFQngkU/jVP6/0eaghEyDYPO0hJ9+pDMuO46PkpQ5
	 YgZKOYfSenMLSh/mbF6oogSNYD2OGjM/icwZbcKQru1ghJoa7fLGNEMxCFNI9Oq1I6
	 w01pbw2w0UEMJEH2TuBEwXs1TI+bJX5+pzFJvyCMX/qA8x6h7MfNlmkqkZca38MG71
	 Y0JnY0UEaVvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A22C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965553362.24072.1803935879783668813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa8e1a0a16018eeb2bda0c25e2b4f711cc0108e35a78410a2f8826cde3cc602
Date: Sat, 15 Feb 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739655533

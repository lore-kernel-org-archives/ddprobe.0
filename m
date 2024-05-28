Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6397116FF54
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716907463; cv=none; b=Ty4jddqI0LxVSTq3KbrOzcME2icGIvvCu6bdAwGWoXsNaUoBk8jifzl2kwT6NJwGSxlwC4vqR4Ij2Jzo799jd4TWghiZjFLktNSt3gzzAJI5EcMQNV/4YM+VqjXcEKStUhonSc7jhNFx1Mo9fYx2jW+q+QZe/j4RMrgROQfk+N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716907463; c=relaxed/simple;
	bh=mhICauTa5pwBR8y7EdZ2LCbgaMdR9CThGuWbtZs/6t8=;
	h=To:Subject:From:Message-Id:Date; b=fkKffWK9v6yUF+DpgcrMA+bH7qNEsFO47hhN2H7ZCrvO4uN1McTmL8Nj0wYVwKKVYWJP7wwtzXH60TtFzidmjwVuvpH9/WF5mL+OZlqP8F4pvsJEn6KHDkZB6n3nvSL/FAViem5Sq2J1smx5GMyMiw6hAF4dzSMTb5RnBE9daU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Szgk0xZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Szgk0xZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8829C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716907462;
	bh=mhICauTa5pwBR8y7EdZ2LCbgaMdR9CThGuWbtZs/6t8=;
	h=To:Subject:From:Date:From;
	b=Szgk0xZ1dSBXBy76Sznpr93V46iJG8hzJ8Jy3gK15tsqVXRkuGVav0b/Mcrn+8q8P
	 Vmy2uCaV0671xGcYVlyY7horIktGMsaEze6qFbPh3F7KzRaErUcUl1/MaEksdr9EqN
	 wNKjKD3Jb0+XwunAQxxcB2or9X66WBfEJ4M+4oHG54HiPyZp0VvRLRgMM0iE+eYDcJ
	 uZi3WBOkc0T2tz9CRetgGkJgyawI15kHBgZlzHXGUKcAnu8/xI3Gqaf8fflrQP5yvG
	 7mOtOOPcjQEUOIgrfl7MIjkzrhf0iIje2jiYl/2SoxCBiYAZeam0D0rD/uamBBaQOK
	 2VthbNhrBnFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6015C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690746280.20710.1148531638578914627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7957c1f50ea36c33beb0cb29cc18ad3a09dfdc270af5c87b0206010eda450842
Date: Tue, 28 May 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716907462

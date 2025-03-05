Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF6C204694
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741166934; cv=none; b=EVSPVe01oAxRk8dm7tMMYoaiX0KalmFtCbKrjO73dIQmodKqoPQ92H+yKEYzQ/S936cT90ZBO8s2mM+5HnCesxlu3KKHbijXtfpFvZQMtpvPi8VOdvwy82jci1DKh01H2uEg/sPZJWwaSt5Z56iZxVkNNFwtuDLLOMYWSMBR9FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741166934; c=relaxed/simple;
	bh=H6Vs9gQ6eBxb6j0kR9ShKDD15auz0f4JTkxxyjuPA3Y=;
	h=To:Subject:From:Message-Id:Date; b=uqqd6+TREk6sm+onk1PDnGljX+cwyfmbnLZnIvvOzV0Q8UHMtalahfNNqnbjwdq9Ov7V14ppFV6eK6AK0EWel9ls5OzYc+N0f8h4M+c+i+yyfCpuKWK4IZIsYW/Yv+CMQWpbe3A2u2MlnEBjsrAng9m3X/iotHsltcMrm7gavKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBXOpbIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBXOpbIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E9FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741166933;
	bh=H6Vs9gQ6eBxb6j0kR9ShKDD15auz0f4JTkxxyjuPA3Y=;
	h=To:Subject:From:Date:From;
	b=mBXOpbIrG0jzp7QJHKil4+65ajhnonjip4DBwdQd8oNHfOS4cFfcwjTggV8n7NfPS
	 tiQlowQB8uanyEJEUyWOqPGQjk1xUovTk6seJvESPeJ68mBWdYo+XUmFmzZQ31ombU
	 aKZt1BostO3+dkNk11O6Zx24OtxiIq/xi1jq08aQ6dKgTEWxKJO1btslHPsQGCcKO7
	 3DrdW9dYAsCexAoxnJWtj96sOY+mlEx0Yuyx9PJJdiPCXobXO8QoBPyEHpkVDjO3qK
	 PcPPDp5pdjt+CyKASUDxM+mcTLfSaUIFxOytvG+37rYFIcrntAZhZLNedNef8+dQkd
	 TnAhRWCsTwr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116693358.11254.17815779219137674160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428958822e12b3e442e0e43686ec385017abcd14c9fac31a25c0ecb45cd39a2e
Date: Wed, 05 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741166933

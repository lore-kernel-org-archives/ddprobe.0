Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7030674B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778847634; cv=none; b=R3AHBwIvxYRAKy67DADAwZtdgWg/dKZSp4rDSmN8h9GJfzfWy0h5BvwNlvZhDMC7zW4bFpvNJ0IPEJJHxQ4PeoVOBQIN+29+bGJnCv4JdIKHa30XIZhmxFwk0onI8nHXgE2sLdK6q/v0O3So98cnCMXlvhWnlVgBIR/jy1LweV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778847634; c=relaxed/simple;
	bh=QaLr/mljVvqRbmYsKPVHPuxAnGfxMk+fHO3YQGgCvO0=;
	h=To:Subject:From:Message-Id:Date; b=i4eVFANjTynJFNtEvqd6/D2BgbVVmJzgZ3ENTRZvSRiVWhsm02v/WtUANS9U0UtQlFO8r2y2j6T4lMU/b/aYqok5a0+ZvGgqNjMt7uE7D1B16+0mmgMj38nmYP2sXP6y/osykqFw+GtFbTvEdgqzQeRwFLTpks+acS3WahAlONM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1t5CXYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1t5CXYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DEEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778847633;
	bh=QaLr/mljVvqRbmYsKPVHPuxAnGfxMk+fHO3YQGgCvO0=;
	h=To:Subject:From:Date:From;
	b=U1t5CXYkihOtCLzNZA6FM+cNXGGpXmWEWdSVfEbfLGoQWyxrFz6Ximv7Fh8MHeLdZ
	 rKZXPVtK0lkK3lpbQBPxK3LfnqoNHrg9K5cxTwIPfi7s4ueyUggEEzKJkrSzftqpgV
	 AsaG2B97dWhIid1JuVs5t9tQLFJ1bTzhImqr/i4nU7eUZZskUPjLqrd6y+OCcl7Jtf
	 vOyPXLEahV2+CIoX7SUrz4WZMk6pUmMTRhHfMfwiyFmXEa3o9AFweSxvHYH0YF4f9A
	 pCA8INbQJFooGb1Evh7FCabn3NvJspFs63O+RC1erS4R8sIRq9Qodq/l6lkaDjiX46
	 BtWd2ahgzoaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1113CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884763369.4888.643644909871946650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc5877652871dc529e82356152254b27ad5ee61b770800c29c33506f77e1301
Date: Fri, 15 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778847633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184DF2DCF69
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752580794; cv=none; b=PZ58CVX6cvt30dIJkD9qagiBu7nNBaMSw0aXgP3xAAtsFRGcL2275V27EdoZcQx/CKgxErdjwbEKlLZsln/lfq1NA6NiTM6bnFPxgTTuZ7ydBmGjpG2bD1aku0M7zoUaspIaRQk7pwfVTmlKP30sLbKr5zYjk+3vWd5T6ms9Oo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752580794; c=relaxed/simple;
	bh=9yshkNTNR/e6sinl34NPujmAie5swXs0AgmOQOoE7Ss=;
	h=To:Subject:From:Message-Id:Date; b=EoF0UUBGdfE67jFLGjbKqg0FY1Lnn+iG3SVxIJcPATcFQZPlE4qLA7blgDPN4Af2QoPccjuSFpvQ/yDKjrYfLbw3Dn32fLBoE3V7cR266eiwmPxbrQl7Pd/GevVGq//hutAthhZzbrB+8BgeD0UwLb345B0GcYP4navwPNkoDUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avdXXrtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avdXXrtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11FBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752580793;
	bh=9yshkNTNR/e6sinl34NPujmAie5swXs0AgmOQOoE7Ss=;
	h=To:Subject:From:Date:From;
	b=avdXXrtUkvzOGC/PdqF79UXoN//mugdUbdVWBArKsNmr84oBu3CNIXvDQ0hKa56Hy
	 MG8dMX4Gp8+PsAkx65kyV3OJjoU+GWgsoEQZtMHqubNZm1fBYtKWz8xwlLt4GhbuTH
	 fxIB31APCF6GQ+992LsR5fYfPcy8/yTzOfS5YyNfcc21fF5lMekTdclgrDb3w7vhdB
	 QxGch6PhFceZQrV2MEkVYqDm/p1WrWgqBM0X7qV8cWBGvq8quYy7TqWO1BwG9qbuki
	 ktNiEnI9hrAOYHw8k7+zgtDzPND98Tf+kih/THO1bLAp+UWfYTweUJ1D4sYHgOUVpm
	 pdJTv6zgpXNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222FC83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258079357.24201.3396403253432435009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ca6b86c1279aff36dabfac2d1c643f8b3fe63c86fc6d86249a72d7b3aff61
Date: Tue, 15 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752580793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8F6AD3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748466594; cv=none; b=sWo+B4u/UJ7C2xco4EvYZaJbzC0VGb5PyJvTke6Q7ODUPemdi7TE3aIkgBhXs9EuGMxY7U9VCUDUzqNJdUVf3wI1W4aCncRxTos3GEpoZ0za4Z32NQaQ3qbC+FpiXKFwGCqVcoVz0kMlni2stX+4rRjB5UK/uJUM115jwThFpoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748466594; c=relaxed/simple;
	bh=rC+EG3uz4PEigBYzNrp4WrysdKBE19523d+9G4aZ0Hw=;
	h=To:Subject:From:Message-Id:Date; b=fc6MEhmUFXe+RaJ5hEbQUiSUbPRqgaFBJsfdCkQT5hVBV2NiUddBnOgmosU7VcqDty4aR2GI3L5Qag45/sitSxrI0T8xC7bmRxf6eaws2Ek/k5EkHHQAOvRuAYBWweyPNCgNs/SBe62fMF3J/hv/yd8u/mNuOBcO1OX06QSdEs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX370fXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX370fXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2429C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748466593;
	bh=rC+EG3uz4PEigBYzNrp4WrysdKBE19523d+9G4aZ0Hw=;
	h=To:Subject:From:Date:From;
	b=LX370fXieM8r3yoh9ugaQIOzHfBvPWUOV8HLjAO53N+Sg8yHHpEbvHb0hF83DwAZ0
	 +A0J2jUk92uVfKWXZy61Ec530E9juVvw4CRF2qZggwcDwE/oodxfrLI5WoxXn3u7a2
	 7ucftT/dQglWwyLDdUUNwGIRj22gQJ48Z/R0ZqU6RwEx7NnkKJp3jAlf3GxHmDDUVM
	 5Tt3Q7WuyIPgps8V1nCm7vHq/Jla/pICT5ZeVFa2IfuSSpRclwRmSJOHUMVrsfzNaA
	 8s2nRvySgmU9+gSgVygIBFUsslMp86LVy0ZqcdT/+xvXCjlbGI8Q6CB0SEKtU86oAV
	 Mp+C+W+VFWVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BDC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846659357.22762.1840920958015996357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03201ba3a3fe1ed86c6aeacb6a26e9d7abff4d25edb3c1e6185a7b8b598b567e
Date: Wed, 28 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748466593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557E3184116
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718333303; cv=none; b=shTUEslRqKSmhjfrYRFW2rFx8AzkpNDEHgjWgGnntXibm/x6oYxxE/RONUcDKYjqJYfLSf9GWv+HYF6n1krsLR1pvD0KmSDYr8Nh8x4YDAjUDJZyUqYoEa3JUmpZAaKDv/LCUfy5pHQxezHowI2pyVN3Zh6KI1w/pTixJz5RKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718333303; c=relaxed/simple;
	bh=f9OCJ06GK3csuSuKlOfNat+uMTry0rJm1KK0VHnfgKI=;
	h=To:Subject:From:Message-Id:Date; b=rAtSfRVE1z3PG7l50QITNwa32bZJs8AKSou3wkI9P0/nqz0P5cCjQ82BM4Y8wQta3O9RXDWAaxXMTJtuW+1oGo2dpMNMlXSUvRG+ZqOZ7v+/QFn3b60MhQFBo0PbighnbNtXBmO+bg1UHgMPRQki3uXSzHXSDfMh5kumUw0t+io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JubJHRWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JubJHRWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7D9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718333302;
	bh=f9OCJ06GK3csuSuKlOfNat+uMTry0rJm1KK0VHnfgKI=;
	h=To:Subject:From:Date:From;
	b=JubJHRWRURF+yNITISGx2/65blrbVfJMIvtlg2qd0sh45f49nSJ2AN7xdgAe6O4MA
	 rAuLlzb7atWtVends2j3Qhn211fGXPzx8qFNeo5ifyFfDUFgLTb5IwlmBDatagbMBH
	 b6nZPfjJJ82nYp1tQvZZiATBsTuusIDAoF7PZGrhbKhhrgLc+cksWXrWpDOsXIvRpK
	 w01rkz9Fxg82EJRqzMh39dJa8ZO6i6qNdpbuGfI2eehqiwSp3J4VwHd+1+6B3OM6Zn
	 1WUhFv3XvzSIWAFXw6MVE+SU4XR72SF9lhzE6gEi6FxEfzXA6bGFc727XkeHxxp/QG
	 N0jIIOhf4W+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3216C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833330278.7313.3579543208748437435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241094ff25435fa5bbc0a29578badf1a00e8ce382c3cd0da0da210cdee11d5f5
Date: Fri, 14 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718333302

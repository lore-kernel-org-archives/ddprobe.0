Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABA21A9FAB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773471294; cv=none; b=WILy0rShrmNoVNu9yPbNqCWnGvsxFALw7Z/9Yq448nm45A+4Pj0G20flS1UOyAMP8dTPKr1qRTlFj48uW7s7Xi+Njay6NmK+ly3E6/d11z2Dud9M1tilFdwSuab9LzNfoRiW1i+tVUFfv4Hj+/dz1cEAj+CBQeWx9gsoBe7fu5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773471294; c=relaxed/simple;
	bh=CQjbboCWIRkXRdwUSP34tVuF3uNKf6j8aQT5KUXHTAE=;
	h=To:Subject:From:Message-Id:Date; b=dJirGdo8lpsNQDSOm2QJWK2j12o+ETvdTE55L1MJz0g51zXpEKzFyDmgAUzNgwy7rzm4LYNwMytX9mS2IFUYm2qzJWnajkm5raB08pmF1iK68AXBsacUYg9Y2WZvvWTsvCz7U4gEuX0c7ZqMuRYJmZZV9uxAwWU4YIcyX9YULQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEy/kbRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEy/kbRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1502C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773471293;
	bh=CQjbboCWIRkXRdwUSP34tVuF3uNKf6j8aQT5KUXHTAE=;
	h=To:Subject:From:Date:From;
	b=KEy/kbRlAoSRBXNqdI4k9xEHdvEqwNG9QScnFY9RzSqwilvtiJrHy7tizH16KBhc9
	 eUcBevi/8iyI/MozZc6lXNmUDWLp+XquFO1A8n3Gpdi/2Xv4J0JUEv5eHNjKxLzOVm
	 tA9ZazQCUHXFUNDzCmDVo+R9FuhYCBvtUItnqnw2AtFC53r1eS54O+wQh4I8JtiHlh
	 Qxn+6CNDCNqkthbG9voFFYKolM3tzcAwAYyosjDDnqf3J+mnE9l0zAO//6M175Dr0c
	 W83P+KHm/+UqgVyhbmU59Wrad4/YOfsRnXrhxrJUfyfdJ269vgk8szTxYIcH3g/hot
	 MY2aNZZY9V0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA6107BCF8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347129358.15192.2442699067038958890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb0e7d5c66478368373a7cdff8dcb3e04c6e40012be9e17a9ccd88f86984b82
Date: Sat, 14 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773471293

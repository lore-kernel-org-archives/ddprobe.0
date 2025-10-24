Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164B81DF75C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761330594; cv=none; b=kNGCM/4CUX5nv3qAPQOv9tHYw+IfYGyAx6XGYVRHsgKAWt4JckAWLU+ctR4+LuS1D54lqNrKJ4HJkkUXPLbFL/5t/Qbv1ItQrUsz0+pwvEr8/9xU0EYkZtg8eG6dcBCDl1eG++YoJAYK7LWLO9ZFu6YKzexQezWXmp4bb661S6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761330594; c=relaxed/simple;
	bh=l/U7iFd/qmW4x37K9cusoGKfsXHqLuYQY2GGhPKfY60=;
	h=To:Subject:From:Message-Id:Date; b=n8tyHTN/hToOAfgjlgCr7auDB3xlBDpT0WcKfBpKN4mN9X9jf6NKqDI+/Q+J5gECqxBjLHCu0FwaIs2XKTUnBYAR0y5i0lWiNibW+Ifbuij5zzEROISyYwrZMfLL2KvPiyWWpfk4exlIU2003gPvf0J3zxjjm4QbB+R3q7fb8xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRBHPt56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRBHPt56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8342C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761330593;
	bh=l/U7iFd/qmW4x37K9cusoGKfsXHqLuYQY2GGhPKfY60=;
	h=To:Subject:From:Date:From;
	b=eRBHPt56iHtSYFFxVNs84Dme2eo0jGP+9Gb4fRhbWmRRPlnuk0j4FB2oJJKiyTZTL
	 NiaaSq4H2rl975/uu6nBn6GYYr+ieoJ8lC6EXxmRLBGDACr+9id4+K9YOsLjQAc3Rb
	 y+kKgVuKCehzZNdWA7MY3OTPbrlq32nPtjn8CjePPta3rNIevP5JY34Zs2YxTiN2Hs
	 SNxcLBMGVAiI52MMJfiuFWvlc7lTAlfH+e5qyduJiAZWj/VE4PTnoe0DNXdOD7xgKZ
	 gr908upaDxYqmND7b5h/HFbuKY6qiqtAdcu4bsAW8dgzU10Os9tXd3YMkSrR6h9MIL
	 CCzGZygC758sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7DCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133059358.16771.17122630904745518430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec29eb69c89073592ccf305ce52b47fb360422368e61d94f1090119701e69be4
Date: Fri, 24 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761330593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388A782876
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715170343; cv=none; b=XP6h3TIBRN0tsdBkso/9ho5fqn05ixUSyr+q+GRCOKXmFg4HcQNbZwOEgtKS6KSzURh5+65XrhF30b4CzpgTWUqhLXvecmHzQYumkJGoFZBZwyLI73dWzUsh8UXrc6ZLkXCYjsvZPZGyNM7OmTVLPd4wzPYkCRNAAfg157T/vuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715170343; c=relaxed/simple;
	bh=tyJrZloj8s56Tj5qoOQggR6T5fEKs29WL8B9yvZtds4=;
	h=To:Subject:From:Message-Id:Date; b=O6Oajd647KpkFA9dM3t7/IDpg3UXStBa+cXeaMaarwwB5bdSu4cVNMhyJAi05UUnevuKOxiH1PDGCiQeeyWBe+VKHMA9WOrukUJPLSPpOiExph3bYH+9eTesbNHsIpvPubJqFQ0g5lDVE/k9pxxULa+DwUVZRkgoThgnP8299NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoX+IhuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoX+IhuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DF3C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715170342;
	bh=tyJrZloj8s56Tj5qoOQggR6T5fEKs29WL8B9yvZtds4=;
	h=To:Subject:From:Date:From;
	b=AoX+IhuTOeCaVLT9d5AX0Oxx6JdQaMYQNSb1MlzMoFndW4LIOSfrjTjMPtZiGwjNE
	 neXrg+GoLkp/+VRXGbfdHXPQNsTYcL29ceoxQHZAeRbvhr0aZcx0hKeueNSEvYEJW8
	 jayb0FhCpgH6ywTNtw571IHNWp5QGGrORxEpsDip51l6LhuEAlyeyLJgFcI80QjP9z
	 qy/ihZD+pKNR1X41TXhG4LB+LFKeZF2uwiGsu9nVt7e1mvhlEU0BcP9lRdmrpyuVnV
	 PQuF1q1/L6B+DGpmm+cHldOjINwBMDMjLSxQQT4xK2WPFuXbGJF8X7oCWDejSrIkgS
	 W7piJkDLb+xJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED99C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517034277.3498.15659577453492203864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a615256f0db8c7770097b70a66f099b82359e4ed99630219050331d15236c8e
Date: Wed, 08 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715170342

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3553812D1
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791744034; cv=none; b=QHQCLTyYHIn0k2lKZyTh94+ErsYY+tDHR+7Iv22AEtufcT//SCQp+uVPdVKCmX2Y0zzbSDkSk/bFfRkIMVIVclj0Lf7/iPhvxE4hgKHaecxqK+MhVUMVneQAp+hkK663bb084RBHrp28yVkxTJgmT91bWovpEHrhvWpVtYw0gss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791744034; c=relaxed/simple;
	bh=Yd56Lw5quSy2Lih/fo9CroPakam4Ko9A5uZYPg00xyw=;
	h=To:Subject:From:Message-Id:Date; b=B49h0RAjnOUwAcPWqyNWnasccIUo3PvFI+JhiFwwjEEIU0CdgkHIZrDy5Nsagb2mBNHzS+LWprHc/i+bm+5AQI3EFnsw/euWTpXhVRU2wohG5D3fBUGvK0Y6sospn75u/84jAbpNCqQMNa+P8/2VRppaultxV4BDVNiCjJHx3ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs17mXSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs17mXSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D092DC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791744033;
	bh=Yd56Lw5quSy2Lih/fo9CroPakam4Ko9A5uZYPg00xyw=;
	h=To:Subject:From:Date:From;
	b=Cs17mXSHv0pB9qvF4yJrIUHmVrH1wq2XMbOrUy2mwUfSdxJMUyAcpp/RnQuSTVuNj
	 lsx3z5ZMeXrB7ayifz0/4tNkrft/OWtAkU/rJtDpJcjJ49yqyyQ4wdrtS7F066UtZy
	 8ZnYP1AGHuK0zquM/hVbFiHbtHJlaF4wag24x7yQARlf+W64ZNZv/R+0DuiaxsO3gG
	 mV3BFMKQK1fyTQ2BZllAVpBP2QvBY/bs/oYAGxmdF/3VoM5NpGhhq+9uwLMjMAGUsM
	 1Bbh9EE5RCv0Lwti084YDLdDN9fvzAMQf2lKPiS7ID0PSXHsCHkwiGbnstgNcvC3sX
	 Xeh/NtBTA3e0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E5CCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174403369.27980.13018292692766729887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64de8072a2c915879d1a6a226afbf613d27f6aeb11e56c86c9609705546e684e
Date: Sun, 11 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791744033

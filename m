Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3052C43DA27
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904114; cv=none; b=X5EnaKA0gguGx78QSBFw0u2Z4u2/d9lYMfeZLevLXV3fxUTnKKkd5B9UJhfmnvs+IxKLQl0+1zzDiqO4VPAQSv/E0idHu9HH3v/FTH6Mrtv4DaADPEKksy5gA1leVY6Srn5fhoxqi2yJ+/+DpMe3GDq2nbOyINrDKXeQYOyeKTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904114; c=relaxed/simple;
	bh=GavAZjgDwMK152St4hOoFUQVGWLiVHqnTpgJ2ZKpCJo=;
	h=To:Subject:From:Message-Id:Date; b=BkNbYRmhJ3xB2bdamv7pm+wsDiPDMJ4Jea5gWkeAAkriqQ5uk7aOaabCRXAn9HtZ0PFGGJTH6S5zlLwdnbZoGAZrH+WwMhG7A8vKFzLYul7tTkHj/qnmfIC1EUrW8E1YekdW1pYoL/G4xX9pM/cwu7zpqgON2UpS6bbWOUsaDec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3Qrv7SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3Qrv7SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C108EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782904113;
	bh=GavAZjgDwMK152St4hOoFUQVGWLiVHqnTpgJ2ZKpCJo=;
	h=To:Subject:From:Date:From;
	b=o3Qrv7SBbW7S5tB/m1vzBoQZVoVfKpXHKFo2YssOTXPHGmiHrIch/SctlF/763fgU
	 DCMJc+Rimx0u9nxXzJpuq0xrCtXvmm9WbVRWzmq+4WbjUXkqozX3yD0e+f35oLpPU9
	 vL7TnzXGjDGDv+Z+nI5N9YumdsAN3PAkQtq1m02IYJ3Mb7t7DWscmAYwSMEoz09Kr6
	 qAb3KqEDYj6yp3NRxCY1Pn7yioq6F4rsQwI7HJq+w+chl5kvos5A9YUTlct/qvjiE+
	 xPovjbdmVU6dBImKG6f6/joTbjuSOSGeHM4xLL/nDWrc9H8kDp19b1sybyGqgxOXl/
	 O5uQBfZAtApkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290411368.32643.748513729403675957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313ff9d9aaad93d860e1fd1b10279aa797443b6a22307ae4ccb7592353f4ac9d
Date: Wed, 01 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782904113

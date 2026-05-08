Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CB42F2607
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778243854; cv=none; b=iGtnTYczqKtzS8bGxmToithEFvQVxUQWEl8cD+7/7Lxfrw9ttCWTVYZP0S16yQdLNPgyshwubM/MwOOeS8ffaX/qg9gVRaAQRJG3R5OoIWZ80k+F0htE9DKjPxqvSCW7uVSD20dvoT9RxbRXQ21aupZKuI7NkcwdYFMhYnmdfR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778243854; c=relaxed/simple;
	bh=svqiwdp56WtLtlFezU12MtuCrBSTATtEdDXKqKmsh+w=;
	h=To:Subject:From:Message-Id:Date; b=IWjSt7DKZ701waAF+swsxxcsNFLAdtoC2gq4OsqngC8ZeGLFosHhK6LP11yeKqrma/AV5lWB+vUNSQkoL1j0kgTt+WI7dM+8qYV1597iuh/Wv9Bv11eIFrLjSFD2YhvdyQY5AtLaQNh7DaPEJRbr2yNDMW+ZizdzQXEC2SU9kX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeIGdJ1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeIGdJ1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B962EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778243853;
	bh=svqiwdp56WtLtlFezU12MtuCrBSTATtEdDXKqKmsh+w=;
	h=To:Subject:From:Date:From;
	b=TeIGdJ1zQ3pDxvDAIstRbUNiunOM9OuMVIKiKkfmWtHiO+G5Fw5/84G0Ngqc7jaaO
	 ScoutvB7dvs6qKCvJtBYkI5KmDXCz2FWgAapxoZ0Nk+aN2LVGNP+0L42rGIi+sLMBH
	 OSDj9YFzF3Xl7SyAOOI00m84Io/TtIlKkeVI9rhXJWH9LWVWA46oEw6yY9kJ6yGexq
	 CfJ+nQ621RCx50SdjP5W2KMN2W3U9PwtqmiwSpwVYTZw9B69Vpp6r54DKsX4FRzsTI
	 d6/gAtPUuw8ToH8/FuVb+U6Ug2ymM7pUjSrNoT8BH3mRaBY6QMR1asybqp1E3EoZrN
	 Ta2BMNWMP2Eaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7DCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824385369.12964.11803686768210174990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb571c54931283833d51b61a6e64d8a34e34e810e05cd5e9bb62e68b3dd2ec8b
Date: Fri, 08 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778243853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D894A1DE2A5
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741943333; cv=none; b=jXkRpnlXEY/8RT2PFNb6BLehhwFvkTsqT7uzbwjbhXSSOjhgM/UB5gu7RIE+rTmK3gVj92106MTTUE9BlVTJ74vSBMyDUgc3Kmu5xK6b5m9kq+DeaLjTAGicNz1+ry7baY0d2y6Hl6tPwLq1NNKugxE4Ho9AT/qFQk/sLpK/vck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741943333; c=relaxed/simple;
	bh=YpUaOctijkH1ZG/ncCdYDGG9xRUaNZsgSPlSjLac+Vc=;
	h=To:Subject:From:Message-Id:Date; b=piLBBbYXE1dBM5O6qBXZkwRv+4kqcwdRrQAX72wgxezpVuCnN5C3qpU/aZp+X1HE17PMnx79NwF/Pj0QDjQ11/dmzaQI8h5ly/9RCHEtcpi9zjUOztKJo7az2/SGlPKWvJxXygFeBsL/93/GrUJrUKXszNPHL5gkTt20N3rKQQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPvxWmiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPvxWmiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE712C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741943333;
	bh=YpUaOctijkH1ZG/ncCdYDGG9xRUaNZsgSPlSjLac+Vc=;
	h=To:Subject:From:Date:From;
	b=GPvxWmivI2zNaaFcOK/8RBHGwa/P0qXPYOroiPXl7RmimDv7+E8dwPT73GLKX/LGp
	 RubYaiq4GHw4V5sVafmYDQvY//OqQlX15tABXGrmOvT5okj9u10spVKdvQkpSsv0+k
	 nKK6OWJfWEDrzeGoSADFMYi2GkQ1UtHcwhO4yBD+fiemz/THcHITyTpIsQNimmPGrJ
	 zS0Y53rP5B5fLtoyG7iCpUFpQIVZM7pWcyvtWmhg/w32oyBXcT+3uFP7bhEmdhwka2
	 NcJc3jGrZXvGvAToKE6WAMNKdaX4LvTd9geQYNykGGc00gOKCgwg5Z1+E6+9I6Qjlz
	 x73QyygsK89lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E2C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194333360.4856.8475526840529515784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bf61fc252c09679131f0959f9be1c79f6dadf79a50c357112b0cec3d084583
Date: Fri, 14 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741943333

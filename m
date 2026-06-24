Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BB430C150
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782261394; cv=none; b=oX7cWN2A4LzS9W2+6rPqqM2bpLNZcE8MbE4TKuRcg8FrECFSyvj0HFqdTYb9woKvohC5j3MZQZzrrLhG6cN3mQ88QZhAttm1Teg+0jqCv/meWQ62jKti7wO59cwNfBWtk5CK+oxbEZk1jiBFtua/wmgqhg6XDBUarFNKrFizK60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782261394; c=relaxed/simple;
	bh=I7Q0JICE0atmSeJ1K0mPzQitIqF+tBkNexyfn/21S1Q=;
	h=To:Subject:From:Message-Id:Date; b=dqa2XY/uyexc29Ukw6gAs5uWDp9rfRWxpfITYZ0UO8j9rxtyW6d06pwUxwk+aXcN4hGTtVLykrWSAK0UxWWdjgq+UE6tOJmE/HSHG9HPPfS/Ys/+67KM6Bk2EM4Gg2hSNINcfbkjGNXrI6EDgYUJS3oxg2uZZv401CJ2GU7TM2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzVn+bgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzVn+bgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD26BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782261393;
	bh=I7Q0JICE0atmSeJ1K0mPzQitIqF+tBkNexyfn/21S1Q=;
	h=To:Subject:From:Date:From;
	b=OzVn+bgdI8R4Cm2R6rL61JGYB4TrAcyu0b4WVeiTC4IQRJhdncFP/mktE8+eqSIWO
	 b7/gjc5VEkqqqWkJsBsFV5w+f8XqJG314B8qhOIWejkoFw2viNaFI+1NttGa6RQfVl
	 DLmzS/adSncOvnZQo370+jmpnbFeiOhqRdWXaHiCCjlB1s+pgrHszxE5ANU32lQesU
	 +OSr3EdmKx5zLyTdQVifSLN/EKjJc1TT05ljk+58T5H/CTIx8o8mlzFvqeuxMs3zIN
	 /gWCLeuGM3YA0n40uK/wgl+huuWACsJLAjXF7U/C8QCdQS66TFru9yhd7O7pEwDR2E
	 uIrem//peZIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10D6CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226139369.23574.334560453643772416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaab293291819d0895cb547f53be6c0875dd9298f77ee5e6848f0413d24fedc
Date: Wed, 24 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782261393

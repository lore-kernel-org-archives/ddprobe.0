Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486DA1E51FF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742594394; cv=none; b=SeCL7PBgT/qeaeprGz5z2JdzwGPV3j1KkS3SAm/KJcYbgLN1bc3lf7cE+kr+/b7BW+Nia6H0mxHXap8t5ssAQZ+yJ8G+K42H2eeUe3OGxdJugB7kUlH0zziO/Y1u2klnoStFd4tLsheY6lKeAS6IP1jy+0qy2UM+xlpZIwifHOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742594394; c=relaxed/simple;
	bh=7GvbGws9fPHRhEwftDbyagrB7UOYZ+47c08BVP7VeLw=;
	h=To:Subject:From:Message-Id:Date; b=iAhe3HQSvsDymVJlGnZrWcUiBpJN6cRtQRfcwl94MZSC85e+dIWmc1AQwqys8Unp6Vk2hBljeCSJwb0k1CDUgtcYmrL7iRU7d3aRixNeEBOfuElzg0O/ZdouYSuf3qge2WLQPE3Ftgm7nmMERfjc/XKfe3HXHsUcEkj0KY+ySVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9G/KAUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9G/KAUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B104EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742594393;
	bh=7GvbGws9fPHRhEwftDbyagrB7UOYZ+47c08BVP7VeLw=;
	h=To:Subject:From:Date:From;
	b=M9G/KAUUq81wC2y91Ex8NKB1fSqaNQ4drbWIsH1zZMjto5+lneCQ1v4PpTbM5SWZb
	 /gGYIDaTbRfYE5Y1ylMuTgZy+UMsHeXXhXtIFvwGbVXKGOMOlFeHNIVQVpWY2i5STo
	 NL0owOydjnF8F/3lSaLPBm4Rfl5fC8IDqJR/fWAVqLhDqaV9l++NDx9fi+1o7ErvCb
	 U1xCpkn6pfO0BmuXU7lrnRJ4M47VTqgjIFe8uwgRoaicZyyGyzj9BkSofRYtn4urDX
	 3VES0/lVRqQOmCU0xR/WLZXZKlelj8JWEFUdVqNq0jFXoF6th6mZ4dq3qmLI4rGLJ4
	 hsEbZ/zPd0K6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CF3C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259439361.26259.5850802517701505623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6fbfa09b7f2afc23ca41de424f996bee4b85a9ccc3cd4b00879461564b2316
Date: Fri, 21 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742594393

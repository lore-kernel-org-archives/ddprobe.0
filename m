Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEB48F53
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705788497; cv=none; b=f6bz1Q8qxrY9Rv5nA+j5KKysL7T9Ei9h4mmxcLKuk74VcApl+sBiFYN5I7VXEH0Yz362wTlawrhfvlLNqqYX0lTTr/mmnpn9sOxHr3YkIP/ExJk/91a0GbGGvvj/QFMgaHZfX4ahrMX5MjUt2VYrv86/ftM7SwOdaD8wg7p11Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705788497; c=relaxed/simple;
	bh=8wtqo2vVJrMWkEHDLcRNQUMdAQNbzTcfbfqS9hfpw1E=;
	h=To:Subject:From:Message-Id:Date; b=dquU3J6CpJT7QhbpYy8D0oZ5wczbEVoU2XwsayCwJE+6Eggxyn57MEqhVFJSFDnEI3RZAZknT2l0HWlOS8spGODdI0D5Q90BNAnYgKwaQYdNNvwx1uG1C4QsOjCVtKNL810Y8TxpIxyO7dWC5MoebyIIGSCtFbhPqnOiMMHFNzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYV5mIri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYV5mIri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D76C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705788496;
	bh=8wtqo2vVJrMWkEHDLcRNQUMdAQNbzTcfbfqS9hfpw1E=;
	h=To:Subject:From:Date:From;
	b=sYV5mIrikvypbtMJZfHg9ekVuEzhfRm0DIcuAnN5uvTL3nOITf9IbgoM/fdDR2z0U
	 yTIZykZEv1CM5pc2d2CU5kbwdPRShLCoYROrywKl3DDv0GtR4Zh+lfoa1WpWOQMXvX
	 k7AkN6F5nSwvm0FZG8HWXxV6UQKja+rZ1oR+ZjNQwpTt/uoSvofdp3lUHxP5gK/jae
	 mRoAIOp5YghdEWgTGE9TKLPejmUFUiQoHegaL7SkJaTiKbu60o57uN0ULKg2Un9g6B
	 c5krbF8zUXrxFVQZNx9d7aQNOyutMexSLMODSVwAh2JUnQG3V8Mdmp7X/FOdLGH+y5
	 vtnYE4Fi4gDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60077C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578849636.5508.1589069859056786544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22225a7653287d7348c3f82a2a6eef325d5ff96e33cc8f67dcc1cde7b4c99cad
Date: Sat, 20 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705788496

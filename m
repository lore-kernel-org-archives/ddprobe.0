Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4AC3C488
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732720554; cv=none; b=oNevYhfKjzBEu/suwxO853Ay8EKQpS8jDG3Tfnf0qEyQe8gX9aop8IL0rlojDk3Z5jxFbH2Xs4qT7IPGXCZPCJptrsjF1tqxpFVOM7lLrQ1FwrxoQb/ARhglKRr15wKfwrtV5prYil1rKpi6aRBDCH2CcMyXwx0lisfyMa5IBjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732720554; c=relaxed/simple;
	bh=GMwUrmfKo+XISHg2sOWltGRZeoG8l6zr8c0TsT38N1M=;
	h=To:Subject:From:Message-Id:Date; b=t/y5ef7XAZA+rimsxn6mj+Jvr8LTWRokZc2JOyii9ckkH8gHiE5lN4YX42XdTXtgEuWgtcGRYoScCAP7oWm8Gk1CRjlSjJVjXZvb/b5R84PhMLKI3iEdo7oHGFB0E22hRgRn8pr1AFzsavq+yCaNCFaqqKrDUpG7CKwYHWurJrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4yj732Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4yj732Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DDAC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732720553;
	bh=GMwUrmfKo+XISHg2sOWltGRZeoG8l6zr8c0TsT38N1M=;
	h=To:Subject:From:Date:From;
	b=B4yj732YnQoOATFl7/Oyxx8FXcEI/orCxyPVbJwmXujPZkwyzmM1A1yggIZ0Av4FV
	 NM2N9XJDU0X8J2gOp9hka0dNEA5h8b9rGiIyeSFRq4JGmwDIj7A7W7ky9VUBVVjMaU
	 vTZ4XdrjCE+9HsnzH9vPRel89Glur1hEkwUD7ZB+H1S9pC4k4XBFc225EkPJcn5f72
	 I4eCm/zHBf9AF3jeOr4hYfT3CUl0v4m/vorXnHtkbKb6Bto86DiZ3izmqGk6irpV1z
	 /YncdYt7WVFUkOco8lfYiVjM6u0agnIjouTrcXRIEmAlfoulG5oZ2ZgLSydRULOe8W
	 wu8fLH5GK5QFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468DD6ACE5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272055359.5974.2319498270448255021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241fb295e56f03705b9947f2f2c5bdfaf648b577f333534165307a910375200d
Date: Wed, 27 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732720553

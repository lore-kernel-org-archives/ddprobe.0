Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388FB31986D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370714; cv=none; b=SWfmfBCuI0Axo5bdwiWXHCGTDBZ39FkVVKxtaV4SptNpKyZKNGUeJ/l1mTUaUdPWYDb2J6SUy4akbMa3NxmF4QOPkBx3Ga1h3RaVffdN96QqsUBhXW7YHQHABIZOd6+WsbMQqAUMi9ocPQrL3eiKGYkKWHlFesSUdCIENZS8Bs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370714; c=relaxed/simple;
	bh=8m4nwV+rpM2Omjm9DJZXfEHgH8Vuz1oJteYgw083Tns=;
	h=To:Subject:From:Message-Id:Date; b=YQ267QNyYZvISp3YGYT27u420GW+1Ny5e9SA4JzjKM+AYALCycpNCeH6tfWN5fGLp1FG9SS7ss6Qxl9lDkBVhKWDtY0DkqcGx3dHoio9zs2yWrhPOftzgEo3E8oKapjmrjpECRaVQaOKfBzeHkfzcPkxkXPpZlIkcnsjE8gIGp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKxMVmUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKxMVmUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8737C116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763370713;
	bh=8m4nwV+rpM2Omjm9DJZXfEHgH8Vuz1oJteYgw083Tns=;
	h=To:Subject:From:Date:From;
	b=vKxMVmUUvhBHRrLW7tEliRx0YIY04MqVpJoo7leKK6iceOWcWcW3yvsd+hao1iNps
	 XbSH/m5hl+AIGoZUvX2xD+bqVfPa4tJ8CbPfMOizCfeX8IeCS+SD4bnNJ4DQwkhW8n
	 DvacbDdffW9/JrtnYvljCuHaWlde8jhbhR1Dko+50fdAlLI6lgr1nyVlCLBOlZ+okx
	 9PdCNOg9OCjwdoLkXq0YxogMfR46Nfun5W3Qs4pzOChR5SqhUdUwT1AXHGH9PVdQx4
	 qgKuSQQXzLoHq1ECor+FAPaD6Ttk/ipj3qe0eAR0iEFIi/nlEgEhgtYd6RJFiRPF9k
	 2VKX0gdWOKclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0033CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337071364.9978.16379026826766792964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c83336cb7d6b315d25bbb4d985050ae47ccef180c32f0e1d12bb7abbdaa03c
Date: Mon, 17 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763370713

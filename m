Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A7235964
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743108594; cv=none; b=Jh4KA/MfUkEdwAfDVllod4JpdDvNX2hjhsQYhNXZqmmb854CpKYiUUrFLimgmjlazBqDV43cLuOjSwXBbCPTcbkg+FlqzY0odm6pmHRhL3jf3TC7B+LDonDuWciXATugCAKOEKJPn08+DQkOubxprcuJsyNUk4sCtGyGs0eOlmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743108594; c=relaxed/simple;
	bh=/1HpFiPXQjpJzYmPU8x/f1/Fmajrwj77uKkXbQqQxQE=;
	h=To:Subject:From:Message-Id:Date; b=dhE/E+0SsGhoHrsPnFFo0Yto9IDky7DTvYEcG/ruyiNFo61CsRtWhdjdqCFAfqEM4C7EzNPSdcwlItqEHQzXLUrkBKAVuvTJlYguEOMg85vpt/iYTAsjqUmz7Gs0I7qV/tWbYK/TDwH1xvfly56gzE5qSnlUjz3yElnEFA686C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4aJIdVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4aJIdVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1205C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743108593;
	bh=/1HpFiPXQjpJzYmPU8x/f1/Fmajrwj77uKkXbQqQxQE=;
	h=To:Subject:From:Date:From;
	b=U4aJIdVDqdaAPf1Qhil4hJnjJZnyVwHKZdpAQDjfVL9ri2Q3Ipu0OPVpvSVrJoht1
	 ejisyN0sFu/n4sQpL+6Lcpm/DW445Y02jNCU1Toe7bQInxwzvf1oEhJwneqzXPkHOB
	 L+oJL264i6bZCnWnbUjLxi0vKnNuCxiNmi4wOI2LxmpE7h2IYHFx7qFjnNyLT2rn2p
	 JCLSkb8XFcHchHUIVjnUfVvoU2MIhuCp0DGArnbg9JpE4kq4SR04foD9x0Z5bPvPPC
	 HHPbJkrTW4oaY0sGHECbdgQWJTBeoa35CkPjd9nKW77gI6v+smCuuHL0V6kNSfe4Wb
	 YJ8vV3UwKFXjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FDC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310859358.16467.4163596262183509884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e62b03ffa9b3a0adc536c3ad7d075909b7fde8afa86262811fe9480a229ab9
Date: Thu, 27 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743108593

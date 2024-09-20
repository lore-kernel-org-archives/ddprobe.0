Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2793779C2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726812954; cv=none; b=uNUOe2Tggd5HfHNjekLXcemUatWRxVCymQobuXJN8vcOBpLs7AwXLiLxvCA4iD1wU0JckFMjtoI2NSZxwUegCEcsJhfDvmXEhPsa2C72+nh6ggVdwaWw1EIW6WXJ7h35ai43+TOPabMSyzI+psdTnz3J3kRweSteTf06sEsdx/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726812954; c=relaxed/simple;
	bh=ZQUkfwggzej/JzMB7HhdcvM7BHvYpXQl0nIqOb08LQo=;
	h=To:Subject:From:Message-Id:Date; b=T1LBL9fm5LNtBo+0sHrySQn5O1VyCbmgr9OCvzsieuyh67WazY8z2Tci+LuyxlEsv5b6VGLn7vQFYmQ8xwf53uY9qUysCcxX0MB5dcVLi/g849LZN3eVUKG8QsTqM9q2ZCaT2fqLxRGRHec3MeatbIE6ckUVmXsVOWlSikQRUx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYBZAtvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYBZAtvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7413C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726812953;
	bh=ZQUkfwggzej/JzMB7HhdcvM7BHvYpXQl0nIqOb08LQo=;
	h=To:Subject:From:Date:From;
	b=NYBZAtvEhUDFaMoSP1kzoHKZG9SB5qEiSpOTeXU5yOzc6/2Q/jXNAW1Dy1j2DyJKk
	 HRrwGUDRzhT3QR4+b3XpLjrdSI7XuxfGDV1jMOtY93tkADg1GVlBJyPU5awKjwpLbg
	 W6ik1+mUziJioLihcjw5OO0r9X08TWi6Ujo+YCTMzBw1rUfa6U3s9NcpzURtWqe4m9
	 R59oLJTigANW0/FrkTlJYSfiM3F23gyJBqCsysIlhQ6+KiPcoeivPUUYN9HYEsxBvj
	 EgWoKLHP7cc77Q70OQG0/dVlSc7sJLI610qFI5FriSHcD2SlCfG2H1bWi2qW0nKfvY
	 Ts6PRYEzyTflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95701CF58D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681295360.30162.3122164292193547680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2cc6e27fb2712fc1e49c2578010e99caa9a3d879f30bcdda5d46cebdf0eaba
Date: Fri, 20 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726812953

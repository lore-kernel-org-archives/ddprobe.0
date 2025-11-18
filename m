Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A02320A30
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763467314; cv=none; b=mjN6o0T42G5OOaodAdI0VaZ/lgMHxQrI6LSYUUthD836w0xMAGdk/w5ijkFjgZBGzZqLsf3/6omNn5W1IdJfn1ALcGX9fEvfDmvzrTtpqAzf3GOlpeF9pXeUXNeU2MFk2XX8PbGECjQ05m1n6pBx21M5pK2l+PqRXGYe/wzBME4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763467314; c=relaxed/simple;
	bh=bk7vR9K+i2J2x3NA08H0isGXEsoQ7vV72cEei93r274=;
	h=To:Subject:From:Message-Id:Date; b=eB6EacoKF+JYKgoLbN6QulkRdgPNR8p7sBoevPYGVJYJ35gW66Afr5O5+V2OEMpzuCMGZb5+zCl3ozWkegu4VgBeWp0va8/ppBT+1ZptMpK/G+isOzjTPB2PoGo8N1w/4ryKsSPdmqakl7zvIpuhlSQarHW3CP8xecXJ3xh08S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv88JONE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv88JONE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78B4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763467313;
	bh=bk7vR9K+i2J2x3NA08H0isGXEsoQ7vV72cEei93r274=;
	h=To:Subject:From:Date:From;
	b=Gv88JONEk3csfzSDezpHcv2r1lXNIMZzaMPmaF8FOnCmqCwGeur5Mc8hY0xHlS2Db
	 AikfPEdgq0k3IkY09S148hO3y8CXkdkpbTRUQN0v9pitCmZLKirPxR1s/VFlpKJkwL
	 H/0JXScfZJiTu+b8F4vcWfHbCJ3blt9IordK/Sv/I6WkX7ayV9VSCUt8k8klra224f
	 oWfn1Rn5tXpV8v4WF/VmLJed2IpBdfTjOK2LlTfFujRZzvPrRmyHfB0GJjKF3R886U
	 PtJ1w9DBs9v3pPDQOdiqfgvDZmHVZ9cMd3+7pVP9Q3ogFSYHKrayKFZ/6fUzoYFGfX
	 k0m9m4cg5nbUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93045CED617
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346731359.26295.5739518767070449576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4d61c495a0cb2796f773a26c6ca45843870959c0da1daad45a135e8ee324d3
Date: Tue, 18 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763467313

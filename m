Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281D022318
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732095354; cv=none; b=uPURTMaG7fFo+deSbsOUeLnDKEAz7sCVFOOiaPfFMiCmIAzGh9otF0CeuhQcymYOzl2FFrEe7+pfkNKpYXTtzqDbWO9ulxeWgi3JnjF9Vu9Fs6lY0+wxImFWqbqj/2A+Y1C67M1HUTkKb1GJGbo/Y0fdSfOoxuj0C3rPmSGXS8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732095354; c=relaxed/simple;
	bh=QyD3Bgz/oTUorop93oMhUNnlHjCExzZJ45NEOgPzZ0U=;
	h=To:Subject:From:Message-Id:Date; b=dDyMIbvw7SWvquvtyE+yqlOqsC5HrGdTgNNU5TJyFMotGrkQJ3zKahm7eF/B/gnifxu1VkWQp/Em/ccawWXJ4qIPOtPayE/W1plQ+20wIhds3WrsHxs5/S9w7z/yQg7Pde5rnQNNXZveWtg1u8irXtHeAlUxZGwJAzk/ypyU6SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFCJIIRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFCJIIRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A539DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732095353;
	bh=QyD3Bgz/oTUorop93oMhUNnlHjCExzZJ45NEOgPzZ0U=;
	h=To:Subject:From:Date:From;
	b=IFCJIIRRTzddJKxJBdFIr4MCNP6m9098LTvNlIQ6J8BHN+k4zT0RqbLH0gG74l90K
	 8JOBH9WavPCvCIyz45ibYIPEjWZWbAWEr9xS5bOdQFk15kJB+hM+gceEKGk3D7d2cq
	 rA8i09adDW2pfU2lcQWZRtqLP2xTgewImzO0LloiJ172thOzYhm1xf6PX32+mvZOmE
	 gbYg3wmBAxzOyX0XmhIQv8OVq9kuIndUBjYAfwCN5y48ZEq56aTlrGYNWYh4sD8MC6
	 UGzrbeiZDFH1rS/bayEhme5Uy8xb0jRUE5mEwBZ2Hc8nSd2cZaaKUpva5Hh+C+oSsa
	 UpvsCJCxLEq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575BD44171
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209535360.16445.2402791363812303603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b20ba87826d0fb0201404f29160aa235c8310d200e0d956848973675388f990
Date: Wed, 20 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732095353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158A917736
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760198994; cv=none; b=LH/ZS5v/L08nOHU18Q6A0geUnnn+HEpO+3UZPMR6lOSQ5wyoQ9fW7KNiJnySBNvkAyCX81DcGcUZH5BtSH8pLtp+KJYw0ax8wE28oEPs52Dhc0zIYLt2bk+mWhneQi0JCuaUtHcg11MbiiEoyUG8jYaSoV5pRDofzv6YIDFfkLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760198994; c=relaxed/simple;
	bh=5NlZxWzzmueH8Ak7kiSbqGNOMTPCbKymPdJ/odwN5vE=;
	h=To:Subject:From:Message-Id:Date; b=Qo0BZk41BSuKPCCIIWhG2judWcih3ea7PBPvkUz8FYsNFB+qTfv7OtxEMjJhdoguREMNnAlHBwhmyJohr8MtkNDx0nuYD1Fut93WcwNE2VvNH+kdqm/NM+tEZVRE7sJpfcti5xmTwB9n1/naRdYQzduDaxozdGTQFi58ZIhkFn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK6WJQ9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK6WJQ9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFDC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760198993;
	bh=5NlZxWzzmueH8Ak7kiSbqGNOMTPCbKymPdJ/odwN5vE=;
	h=To:Subject:From:Date:From;
	b=IK6WJQ9XY5BzxjQvj3usv6TnmjVKK/Etrhm4sluTLquJk+715CIJ93r+dE9dWmXfz
	 SoODQEcYgvbhXHSkdPQP1uS2GNAYdbD8l1NQCvkKpeM6HULa0ZyUfNLTzUE2T1s84b
	 U0CdfckNSliHSMw+qrS8A09NIxQLcnfPejVxg0VTfvNwpyOYDxob1BHR46ntRZgJVy
	 3u9gcDJG2XYpUsI3nkqCNsk+PPDBq8rWQLYXxYTMSS0MBm5Vh4dfW1x9oXg4XAFJKb
	 B7iGqxWSw0jN4mdrPR326s/lq2ufJohRUWgwkP+zzKM5cHVz+PCOfJwdDDwri/rdFf
	 I91ssY1wmHHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE2CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019899357.6900.14420181579751837030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9968e7341a1ac3f198c04a3e848c756931573c751246f0e10ddfe9421bab5c7a
Date: Sat, 11 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760198993

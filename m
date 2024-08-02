Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361922C9D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722575754; cv=none; b=TshjScWVHZ0ZrOQOHdkRqw82EWen+DEDLdudY1IGapWeOuandfhvLOHUAkambiXSrSDut3UiXXo5ARbNYgop/V4zRaHHwLAFnPejzJTLcvzJx0Qh4scvDVjmb3ozRjJMPbWBnnvywx5CyyVrmI3IjJQ3TKFIYLu5Nj8bZNGtX7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722575754; c=relaxed/simple;
	bh=X/9JTg4dCYLL31efNXfPxjUNMEriWsFQVLN9Zh1AEJM=;
	h=To:Subject:From:Message-Id:Date; b=MUfSlZAOOtenl3qklqAf3xIBw7tdr/Ly/iApMMrQPKsMqEZNi4HjKyquvmWLhhmsbSRYqiiAnGmud39Aplh/I+xDq9cnKsw8GQFVe7WI0iKATacvuv7Kd8LOK1976kPgnjb5e5YsAL0DW9eOLqJXmPF8REyAPCjA8n+KX0qGRNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vz5A7S/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vz5A7S/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A922CC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722575753;
	bh=X/9JTg4dCYLL31efNXfPxjUNMEriWsFQVLN9Zh1AEJM=;
	h=To:Subject:From:Date:From;
	b=Vz5A7S/pTT/vN6SOaqg8SWNtqVnkzO/bHL06sB+72leXTPdAvrNoyylVX222oA8E6
	 1+pi4YMQtqSd/Z293Uk+vJ4ggUhvpU32bRKsxz/qdxkxkoZTh4s3gFok9YetnZBZTx
	 Iv5uy6Lg1Ae4RTOsErfCS2XPN1qQMshwm5AazlymGMuAyLDxWscDqOq+BWWLpSecCV
	 xeBejZy4edHYIAEha2SAFlG0pEytkSSwsP4SF11fpeVgayuHyx53X5fLSj4ZFxcjKp
	 wAas0+nuu2Bxag2dZpVGT/xwfI6DqEswPE3a0eVnxuFn6BwXKEh+7ZgwKmvi+KCNwx
	 +qCa5UwL4ckSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AAAC52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257575359.19474.1550592159408111570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b506b19c4c97e2e4eb79e71c70813a58c55f9ecd962a9b409321f9afbb393d
Date: Fri, 02 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722575753

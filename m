Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECF11AA1D2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766550834; cv=none; b=qLYzlNJslz7J4JJevNnrB38+7ARyS+Wwp0swy5pYVY+IpKTiHyTOurcOj2z5DOi7QFtLTgfTbSIBFLLJ8YbLMZCQZ8ng3zymtZIsRavALdPW2drcaneth8gosFGmytBFB68OUtQGmVx2ADoY0gLFzLu+9FxW+zzdTKmKNDldk3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766550834; c=relaxed/simple;
	bh=x18hP8gNr4/pvhxAsU7gdi8XjdrWxcqFHyK9NyAFYzg=;
	h=To:Subject:From:Message-Id:Date; b=pgM24fknH/C1K1fMLwujklw2a+2uez2n77q1KmLGpAi89XSLogZdLdNI45XWLvtpboO8VV5xcMk8XyY7ubMrtV0mzyRpzS9yj603NwMVReE10mFcpL6BCJV3LxbpaZWCYzQSwonOTUWJtZADPG83jjxVlo1eNmuPZUxTwReDCdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh/AklLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh/AklLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B47C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766550833;
	bh=x18hP8gNr4/pvhxAsU7gdi8XjdrWxcqFHyK9NyAFYzg=;
	h=To:Subject:From:Date:From;
	b=mh/AklLzEKIIhCr5HQ3erySMSH8E1KK9uj+MQt+DA6c2c+ZtPXu5IvEsPGERVmZ0r
	 wpwb/6yb6Io4zprJlJ4VyGvvoVWV+SDYFBYq8gWN3K8j1Kq4A0a/JTbeGNbCBaqAhv
	 0PLWH2yAURbQD0XYukLJQmrMGcsiSZRI14I55r/euVeQLo2FTE5aeOutgk3H8E2FyH
	 Q7bvTLqJMlGlw+V+qHpzZu18MDcVrJqqPK0+6iTV8JFY+4jlq0oXIZRtBRekpuue0n
	 J/iiB4ASDSf0UR8V2/ho27bPqMNXcVH1xFvNo406es++iDQu2wSazKt2KB8pKJneFc
	 VixcjcDacTHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F768E7490C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655083357.9219.13866225634546278697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32399d5c4115410c88ce05e1c49e33c8e5e1ff306ece972b4d3fbfb1fcfb13f0
Date: Wed, 24 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766550833

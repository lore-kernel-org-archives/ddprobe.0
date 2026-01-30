Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70523806DD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769798633; cv=none; b=VC/l6HhPWqCLIT4NQnBfIn2xO8Ica234l6VR5aNZHxa1J4KPAZTKs7HDQ7OOAptp3YTJAeFsLvni50gpKXaF/B3DiwBGp39gD2qcg71CkI/ltLYylGDmaz53JOj4MCiUZ20u7SCNRqVHgMH4AZsvkICF7E204L5vqLjy7R3XJlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769798633; c=relaxed/simple;
	bh=u0y1BNwLKDp14hayALR9cKGPaekYKwza0nmVc5wYEog=;
	h=To:Subject:From:Message-Id:Date; b=mtIsyf+eDXluxdEfAq/rPR6OFh7TeGM1eHjD6JpT6a1qYWSozkAJFaFrAKlGi1zs+0NQkyBsJ17pzEGs94hexmclegrIlqNzAFGyMLFBwwcjTlUAvnx6JwXFMxBiVuhF422TVpDGBlWrq5Z9OQ34agjLFAuGsSk8qB8eC0zMdBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r48DIiXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r48DIiXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7734C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769798633;
	bh=u0y1BNwLKDp14hayALR9cKGPaekYKwza0nmVc5wYEog=;
	h=To:Subject:From:Date:From;
	b=r48DIiXwSOaOsX8Vao8SoduB0aelubmsf0n6rMks9NzCKVWPCYx+r5tnTscQWzYhg
	 Wsfp/X94lV4oylQencaMBh6XI5C/mkvkrOeafeiBOdnd6m94uT1p9BPDB0dTgmX8fl
	 UrkGitgFhoxYlPeDcBxAXYIztgcBUpN8i/yZtlVrYIjln899/JdMwwyk/E0fKc3/jo
	 t3p/GRx/ukDPwa//cyZW9cESe5wxKv7JdhKiIqn08kqAM6sYRUHSNnom5qnClqzXDf
	 5j7hZGVENBIdFUyrAV91sLDLpRD/s/mfi4jZjFzBnqs1f7ncxIEu/FoMO9gcMoOXUv
	 GG31KS3yc9W+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C2E6BF35
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979863358.3261.3074772599713130107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8637d7a6f3dcf719662373f11859e4eb4f44d29c507936de2b24f84dcc7977cc
Date: Fri, 30 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769798633

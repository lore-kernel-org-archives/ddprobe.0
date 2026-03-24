Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC783DBD66
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343694; cv=none; b=hV4IgOD1vRwXryOHm/3d8duktbqbDo1yQiGookMPiseyJcZw29nDF1mHm5jkw33tvBflK1ZGHirFQkbJIfC9hcCreGV6TYon18PSOzTAXm3w95XPD6mWpNK3gunugMqEd79kR3YjJcBUiELDztzl9Lcs14UzicEDv5REKD7Uzzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343694; c=relaxed/simple;
	bh=P6DhXx39mipHXQPJZ992hPfAjOF5UYVTrUVCShDsY/w=;
	h=To:Subject:From:Message-Id:Date; b=c3cWbP7gt3K4rHlRBbL+6fybye0jbBPG6ziSsARhiKDN1MuHz58CebUziuJSEnmcgo/1ZJcEYhFJ4l7UYZEbFF9DaTTv35le4PlraEDgWsjmLRjxBGxYBHGgVQSWiSHjoNR7LZXf2dU5k7Puu0Yh6Ue3ba50U1IDlCKHU1rRQrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gall7k+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gall7k+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC41AC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343693;
	bh=P6DhXx39mipHXQPJZ992hPfAjOF5UYVTrUVCShDsY/w=;
	h=To:Subject:From:Date:From;
	b=gall7k+djCWFNPGi3s/iP+Y844cUE+enu1ldabjSxQheKNk+FNbRNYJLaTCPPkAmc
	 ywB7r7ALyVC/kTe1mNSABSiIDgGF6kwM1MxdzcZD8tscz1FyKd05f6G6HMo3ArqBDa
	 7sWkwU1I8c3HmB2Nnnj+LoaA7pQ9flOgSh6VSKRP/bqMcnhGN/k/x0WmZrZViGmk43
	 hSvgJRR5tqiur6wlsSTMEvleLkkB6iXz2/Ua7VY9D0kCyXU/2dszDc4XP+7SuYcvJb
	 6ZrD2RdN7iVwCJcNgKI4wNfQZac7+GsyMREm7KeocAO7OsmfVNxk0OU//IDYehV7gL
	 TkRUGB6CIgY+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA7E9A741
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434369359.31953.1772336448325667619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14291e06e510e72cdd52801ba29a6a0418536a464a295f2c3071cad6d0636711
Date: Tue, 24 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774343693

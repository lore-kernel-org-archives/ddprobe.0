Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7863002D7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761404394; cv=none; b=nfwjvUnU+7iMsFhDdiqkqSXecOEYIT2EBnuKd5sa7+FsylRIafUetukaMObv5pVwwA98JlLMRrQmVNmiqNbtOavpnm6IF57Qdh429Dn1h0HasGoQx7UbNwyl7VGY8eq6qfoTX99l/nQcTyaYxh2YJAyemEGSSHRUpTRXU2lrWhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761404394; c=relaxed/simple;
	bh=ghcgU7TZaJtc1+/HGNPRkdW0XaAW3p2+GZvIE/+Sv/U=;
	h=To:Subject:From:Message-Id:Date; b=ispI2+RqTv0caOv3H5xr5Nj2r3H8EnD1wOS45E4iLrEePEXrnBQBJthKp09xGNpJzREZu83f6aDjM09Qa0GBM6V+O/EkQkMIgq9NCZLwDGNQvclzSWrlAR9Z9P9QrrjjikK8he44eeWFxxwFSi2Yc0u3RLZq5RkFESdwXfOpFSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORA926wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORA926wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761404393;
	bh=ghcgU7TZaJtc1+/HGNPRkdW0XaAW3p2+GZvIE/+Sv/U=;
	h=To:Subject:From:Date:From;
	b=ORA926wdk7ZmPh9IkAlHabvNxq67zWhfLgoTlAzmgiP2XtGxLWAUIMpEUnltXO965
	 m7pjNVPPYktxdD4nELbrR0Ci3ZeQMpzdqi3VpqnFGrVshpdjHy+c70+erUIZAl1mD6
	 qnQVaROudu4/IFEhXAVHnAJ46PVK9OhcOQ5OtPIYk/t0k8U5py1bSugruW+VKybvcv
	 Z9M4HUdswcisyYR3o9RCN6v5+em9EiS4oTTyABjztYxtOyU5Wl7fq8mohHDbIf7w6B
	 Ho39+5SXNou032By/Qt+LRFWwcOG7cYXWJHYuIJNy/4RpoyeUkLmNN1oziUiGoeZzM
	 PoENMKfQN7Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9127CCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140439357.24715.838402438445774720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2d9d24d1a71e377d0eba482a35286f1e9ef0166b5be6fa6633bbcdf3c3f5ca
Date: Sat, 25 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761404393

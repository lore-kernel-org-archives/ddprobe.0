Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1938C15A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733133954; cv=none; b=WRbHKMVjEWaVvcrid386U8H3jCBJG72GhJz79Cdfs9cpA71dW5VYLZxiqE8GLtnGt0FdXUNevDS6rSZvwXnwgE0DG1noVOOmLsMv1zxeTtb0Dbc2UYJUliIjgh4YqFGDV5ToyCKWbbZ9//2nKrGVoTSBRtyMtEVsOQO/MqQU/e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733133954; c=relaxed/simple;
	bh=v571D97xUk6FpQfwYAUzuYWW9S8TScLzMn4ehY7ZIrY=;
	h=To:Subject:From:Message-Id:Date; b=K70QIF+HU1w/FYp1/KlY/AyAZPsdywuQaxyRLdtx+SHDA+RgJiYM56CsRTpHN2W9xpmAmYgRjSZ83q8JdVy7mhUKZj2IbMxP1mb4Xk3G9giOztL989ZToadfGCtANqKtiNpr+kjR3WW8iV3+4gncozRwlPSF1Y+MmBCec6nsLOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUP833Lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUP833Lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B3C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733133953;
	bh=v571D97xUk6FpQfwYAUzuYWW9S8TScLzMn4ehY7ZIrY=;
	h=To:Subject:From:Date:From;
	b=uUP833LtuL/MTk2ulMaEI+8aj65h+DHiJx9ipzKC+sp71H9TXbtofxPY4Esez5YdF
	 pl+Tn20CYvSPjqCghTs6/LTb2gegPaeuhCy1IipaQbPYhq+F6KGKzJiP0/ZpX4rZKh
	 pyYLIE8gcAKq6lVaQfZyOM2tMLeDvZiSHeBCPxLW+GWCYSvbuoNVMECXWy+bdJd8LF
	 kLAgK8u+p2nblmCalwEgTH+ski2JbeeGAZ6LDKAmL78g21GmN6mDBhRdB2MGaQ/bFB
	 VQRchZ0BrjYzUM5moK0b0YOxr+z2bsw/xTG2LxLI67eUxi/tMA24WSY1Uz60mj71px
	 zKP0ReDPwmEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A29D10DDD
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313395361.5794.14011484443557632007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48198b34b76a7c16bc4d4eb935b747cee761ee371d74a1af7ead3e94200bad32
Date: Mon, 02 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733133953

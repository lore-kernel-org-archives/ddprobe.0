Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED0533F7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735864554; cv=none; b=SecZ7YgnTd6LbtHgpN/S0bYXFTkp9t3P8LCsCyMfWoxB3K7WYsrU7F0vA6Xgd/8rlBxnqrxBLwGZQMuLL/+NhJ45Ep5+m8e+4g6BWC2cpE3+O0J73GnEwXnEcsB+rEvwUjcp3QLmIvirBtO0y2HcxjKVmSDpLoqRbiqOZF+RCAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735864554; c=relaxed/simple;
	bh=3jjABrhhX78patu7gkP+KVLOb4iJAC2s2seJeanHf7I=;
	h=To:Subject:From:Message-Id:Date; b=KdzRHXagZ9NrncO1LPEqAzzn124X+PjuWRVlfLyAobzxeSOH1yI9vs8kmJaZEQl+NYxhMus2gwr4ezTBvQ+198GVaHmNYooJd2OPRwgsHAGBEm4GeKlM9eO8kU3KLW29oLRuvc3Yb1NKWZlSlALguomHWAeztsHmGN+7uaqPlvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd+vI9I/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd+vI9I/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF998C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735864553;
	bh=3jjABrhhX78patu7gkP+KVLOb4iJAC2s2seJeanHf7I=;
	h=To:Subject:From:Date:From;
	b=Rd+vI9I/Pkr9tV30sEYcfRdBFZWAjzVmkcv1dz0k2Vo3kSlcB4ReYu16ykbVmji6S
	 kjYuCEtmrNI0TlXrf7yqYkj7GECYrBzgKFrsHcmsBukUqkOuJT1mSy1/lOoWHt6xJ5
	 lWpt+iLAGcJgA1uWGEcYusnL8Vh/sgOSuO2jfpC/+rBPTpIdQx1VC+A4XVCpUB5LFB
	 Lprr4q+Dfx+7QIG+0WfVRbLGOgC3je9g4Ek5oL35f4is/uEGJAXXpZzdXxYjTZIu3y
	 BoCF4Wqwe6ciJyi36OcZk/EK5C/FbYhtBjcjIbOm4ssUa3o4PI4/FR6MCtTxJIl3DH
	 qipT9nXKNjy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95323E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586455359.20251.8956209534481986541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2999c3e69c8f5bfd455ce428353895b666151461c709562ed7e2e6506d37abd4
Date: Fri, 03 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735864553

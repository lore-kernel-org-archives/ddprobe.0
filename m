Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362934A1A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749031794; cv=none; b=diKdXeTjTBY82s0s9QMwLG+NHfcLE60volErirfnA2IS2mWAuZPLH/WGRl51w/kpxkj7gqkMs9x0sX4XkFxelW9WUXBJ/K/99Mz8CtNmd0Ffkz4kGTpUE5vg7CxFFgU5ldOUZAgpqePfICKQu82kc346sQipP+qwbYcvf1L2nJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749031794; c=relaxed/simple;
	bh=64g9u/zRTSckJrjRIY6912kamITSKqEDlBrbcAJMq9w=;
	h=To:Subject:From:Message-Id:Date; b=bBgq6S5WXJ3hjNoKIeenbYTCRef/n1Wb9zUWtS0M1xoiIAT8OX5FSvUfaOIfM8pUsVsEToVmkYn/ykGeS9sttTyKw+nfhlzmMUugpWNGpMDAAeIIMwxe44pJtUEuiU8oNAkh7Ed+lxvKExdvQgmuyRhO2JGiZTSNUbWwNi9DPSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGH/QPob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGH/QPob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A299CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749031793;
	bh=64g9u/zRTSckJrjRIY6912kamITSKqEDlBrbcAJMq9w=;
	h=To:Subject:From:Date:From;
	b=gGH/QPobAC4tERmNw2HlVR8WkTOcqTExXyA50S8/tWKJfAfekaZopdzcl3XzgMkAo
	 w+5a7hMXsqW5NB9sCMwO45IFqKrMuvRDvylDgYCohxvQhaXwPBfioGBHyLbOym3ymn
	 rRRDfRtONkP2m/k37cz2prSTrIeMfXPZ/Ua8EPuJR5XoLLE7ySAE6P8+ZlTbVcVy8q
	 dnqh5zFqKCSq1q7AtsIgsirvyRcYzaOFHVWp13hvemguq59l81xdh4sXcPw/K0ndSq
	 NBhZDj0FlNuz7kSenJHAkRbMPfZhByxaCYIAb3q+LAQ5hJ6pEDeXK9EKJs9EUfnBA7
	 wvnZIxL4lzswQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199EC5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903179358.29948.2145624315651814539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c591e710991596ceb1c2f8049f67cc79638aa1e539f4e490f5f2680c0d21b0
Date: Wed, 04 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749031793

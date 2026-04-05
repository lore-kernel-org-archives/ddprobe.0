Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387CC2FFDD6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775432734; cv=none; b=o4dutniFEfAFZd5SW4GB1KY/wglNAWB7bNPGhe7y9O2X5Y7qoQKboIBn+nNuEMYtCcC1ffQWG8TrN6/UQ6KFjG0neuerfs+obTHyYAtJRR8oFzlACSb2lbxyuIsSoJt1+Il2gt39Pg3SzvZWmfYNtNhB5Ppcef5z7hb0EDpT5pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775432734; c=relaxed/simple;
	bh=2X/Y18rRx+ub4/8BcOh9Pag64L5JBoxo8pZxNgLB5YU=;
	h=To:Subject:From:Message-Id:Date; b=iSsOWGR3fXJm8sT1bJ+SaQRXfpC9fwulTF7X2ljRwu29zfPBtgHX2VLvZnwTY7tFrjg+87/eklOTQnK+BEvUi/POf7+WIYTvraIQd29wRfvYkvfcflENff5JNMunxrumRWTO1Vp9R/vq8x2n4NW3nMZCzqnTcRtZJ8zsequDjTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WF5UGtBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF5UGtBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EB9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775432733;
	bh=2X/Y18rRx+ub4/8BcOh9Pag64L5JBoxo8pZxNgLB5YU=;
	h=To:Subject:From:Date:From;
	b=WF5UGtBwkhvEAZ3evYwRsTg+3Mi2uowfBliF7sbYY1frSKg7CMgh4q/MEQSq6MGDZ
	 Cuub0VULZrGqqJtncdxzZBsibk6ZKePKtQFUvavzYWbeozRX440uE4XHjBc/HqfUsB
	 t3z0m7S/kEKatKKq0limYziPAZQCjaQtESvVfY8DgQ9gUz1pH1Qnai0CpxH2nj66PH
	 YpKS8WfWgbI0ZFG68qRNTDL0R/Rdrdqy/N5Stz0GllHwbWFl97kEfxNJIlQnpw515t
	 wsdbnxqUEUxsxjCk9f1GEQmQ7EK9FzpabZ6XPe0cAY4XkIUd6erg+yQON2A3Be22PQ
	 aIUYO3TsqnVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC34E9D827
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543273377.20305.1034895403372017393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a253be3eab84f6387b80a24dc7c83fbca8d9d5c8170f90d6580c95cb1baae527
Date: Sun, 05 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775432733

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247A1317145
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787604034; cv=none; b=B20MckjLryculO7c7TML6lg3Sgi7hvCKersg6riocuHLolWboOZNymKTioFdLgRwX+HWj9EjI7wHRPVEC9L107Cf3uCJb0p71Daz3/wdwuooOd6vzCS8UcwhPP/Kk0YcD23ObCmimkXrDyaMYK2Uidt6DVwx/bqaYshalCkxQU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787604034; c=relaxed/simple;
	bh=MNbsFkMtEQyqJPvfPamdNCGaRolU9vIBNwhxd4P4IHE=;
	h=To:Subject:From:Message-Id:Date; b=nSUn39stATZQNuMOxxVebiarKhlJcMguST6uLw41MTl3oxG3EktPNVosgXgkhRNZBHVRzx5hS1fAaG92QS2P7XqaWFb5+PzGz5U3Dt4mwdPlX1l6mu8/EMfUSvMAqUKFNNwUzI0akStM5Qw+zLsqhuvJ8JYwQmyLfxE6SQbFxNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuMjwXgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuMjwXgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7BC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787604033;
	bh=MNbsFkMtEQyqJPvfPamdNCGaRolU9vIBNwhxd4P4IHE=;
	h=To:Subject:From:Date:From;
	b=GuMjwXgiUW+D226J+ogw+fDPtKrzh4yfULRn+YHHk+9UYnIlcXzKrqAcRsezuRzch
	 NlUcp7jbtbpFQwgvUi9dKcdx9hmfJtSBlSzScKAxGctNc9n0KT9Sd6U+qnh60RanwK
	 19XLAPhyqf5tP+LNxLVfzwXnd4X6sq5QpLxYyyH5AxHvl7moc2BBjOORDI/zXbMAeJ
	 JlpeZoqOFfwKoG1k+MfOSOFzKoBdLecPip0OFKpNRsvmcIa4JQ1eRW/yuZTxnECimU
	 munSezG3QjdQyKIGbUq2fEmVfQCiSsIw9BOlTvG/pXWuvziPyiOst8fuzj4LQ4b0Rk
	 H9AtGqbviYYcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5FC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760403368.2096.1552929033509187684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fcd4882c35358673a2ea9e4ec23efc72576d739c970c87097817075595f9c4
Date: Mon, 24 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787604033

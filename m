Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2312413CF9C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751824195; cv=none; b=COsh4sDJg/izqq3YcwZtFYmucECcm5bQTJ3OvK69dJqsYau5DQ494FhBm2zofd693tiEms8ItrADdrfu7J33sSU14VbQF+sau7RDCnRtMp9lQCUr2fOTW9eHssKyPrlRAcdqFtIVxVuHHE6LsDkSrh7kqd611LWqjngggdLYAzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751824195; c=relaxed/simple;
	bh=1yP2ZrVtwlvWeXZSnQ5b9MHxZ9H6QAqSqNukuzmLpDQ=;
	h=To:Subject:From:Message-Id:Date; b=nIZw2fERvCnaBoPVLhD5AbaD3TFGZ+bvg0NjO6trH7LI6x8Vajsb8HSeJYsFWtpcme9rbtJgfzF2TEJ/bHmyJSWBWdaUiCxN1DxeP62ynrMJMZW5lxc42WgQJL6RP/50ikcCMQUp/Ygf+sbt9DNll3yQ89LbcLIVcCFXupXfPCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6tgGwm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6tgGwm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B74C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751824193;
	bh=1yP2ZrVtwlvWeXZSnQ5b9MHxZ9H6QAqSqNukuzmLpDQ=;
	h=To:Subject:From:Date:From;
	b=g6tgGwm+GIfwvVewlGbwV3vII+jmFeIVvN7z0HkoQ89cE8kA5WWkSSwfdgYL7T64d
	 i2VcRNKuXC1ZUEqPB5+S9oo5QGmNLMjdX3e7wnnjUQ19XMmy6tfvoMnOFqbyeimxo4
	 CF7Zl4vFg7k7WRVD4S66eNrXicFFRlyue16Fm4H4JxvlSzpHwiOoGMu29L0GTIKeC/
	 b+aOckNNNELt+ZRirkyNNn6YBfcodz4GkhMEQEk2+zWXFHpTzpjpQe38vHSI2NzoMk
	 Zs2AL8wpK7nzNKroPwIag1lXxPVxx5AVet9GCyKlQvMMPRSfaxZQtq/1yTiY7fi/Sm
	 0WJ2q7f52d88Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442EC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182419357.19186.2467169684963806398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111ee24ac85b5e7b4474be267e80bda72ad9c8bc146e8754a71d2499215e6284
Date: Sun, 06 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751824193

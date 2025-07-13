Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A04944F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752398394; cv=none; b=AOxlR8dbD8MjsA/TDOweTJGuHdvqCMHV3W4eMRMjRf6iDpTmGPlhPezkzKuxh/Chwtao8DIYCBYLU0aFViOvy+g8X/70b0ppaCwCiZ9asyc10ov25CVIMx5BJ3TXdSpZM/iWGpabuN++Qyet7syL5f3eK1dePNVN6ECL/NhN7g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752398394; c=relaxed/simple;
	bh=51sLPF/NuLG4tSJgBQdEobHhhF22lJOwlgoj6Xdjagc=;
	h=To:Subject:From:Message-Id:Date; b=QCEGlyrBiDLg7TfjbQ1RG9/Kbcezl4aJyvyUwjliBOfRV/YJOIMp5P+0ugPGy/iJ6KfZ9B+2Y/iAkZ460e/2PfEY4KAC+CVgamHwFYaILsTV1VbGfyY0XUeV0BIfREBfNs0EEDRhoGHBuYdO9TaslX1dS96ibrNnD/y+FSM0uCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC+APZmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC+APZmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0873C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752398393;
	bh=51sLPF/NuLG4tSJgBQdEobHhhF22lJOwlgoj6Xdjagc=;
	h=To:Subject:From:Date:From;
	b=eC+APZmp8y0ZRGX/bjMEVJX3qxlB1uHDAMlWW6juUNeJhFzXXhGF9PFgEAEc4GYn+
	 g8arcKVmFMXQ6WqQi0UCO6Jijo7cKggJqeeBWj3mmkzHeC46AWwZvUxRvtNAq/yy4k
	 XxmNgNr97/+Nyz0udGWNXyD5o0b+oyI7VcTIBi8qPANVGS6VD45xE1pAWfXdrj0+n3
	 FhymsHfZ2/lJsJDyCNJULrBWxUu6iQwuqYq8Pk2Izabxl9Yxbio05j+8j/MV8+6xmh
	 9ynEJGhOZLnkwl2I89UlqLC5DqKvbxCQ/qUqtGJpRu//Mx4DGJ+JDliJaTFxWlMlmW
	 FSkohHWlm9Z7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED34C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239839357.31823.6027850449425895874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe0c4ea81620a886644ea460188c9f8b924ced1c9e5a27b892ce490b829e621
Date: Sun, 13 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752398393

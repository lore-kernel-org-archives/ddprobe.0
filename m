Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB84D2C2585
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745930993; cv=none; b=iKxeY38ChA+ErFZJgPpOrnxJtmEZ9sNuo3NhmhouE4Cp6VimCnz5xR5RFaKFCbGqIlD/UUzQe+ZxBwsqdYXyajhcrbtZjiNd9WXgavlj5azBsMmm8SMVAG2hr/PoU+AnqvdaOYj34p97T36beHwcauDkRxr0OGNd1jjqVdtVMHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745930993; c=relaxed/simple;
	bh=AsX51PEsT8yPTncQpFX59ivLIa/1j4rd6KWHOG8poV0=;
	h=To:Subject:From:Message-Id:Date; b=eT89SvN0KxvFui2Vn+ZFhpGm7/gmxgnWAfkFnQYv8AuDU+ujsUJ659H1Di3hsJO8K81BAKqodFS1sIVj90VGrC51eYgOmatXxR+dlJAx5wftY0cOWr7ppD7ni8fBJiqIPwLgpMLwztjdB1FNNNjh1hDhCOFLyIaWAfjk0czjhi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bg2G5mpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bg2G5mpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF66C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745930993;
	bh=AsX51PEsT8yPTncQpFX59ivLIa/1j4rd6KWHOG8poV0=;
	h=To:Subject:From:Date:From;
	b=Bg2G5mpE+934thayWPgrmdaeu+93A4acTPg7IroLpcSPUjBLXBn0Q+Uq9tdST4gm0
	 JHijUzbP7NH8H55uN16pTHMG1j0UVp/V/s5fuj3rCfoKPsRcPc4VWTx4uIMRMAOpV1
	 IunuasRi1JpSJGhk0XXMG+w+uzpJMLhKXL5Um+9V9fgVWr63wPazT1JcXXwSePeEuU
	 rWvmo16WRm3YFoc/o3buOZBVGH9dXApvJefW6kjK+FbUQCGLvtudTb18vEooI2J5cx
	 vutAgiYFIpw+oMR5CDKvVjeK2CNc+K55Pyye5Eale0r9U82xGuXEcg41QVTlqNiIBA
	 h8hAzaSQ6UN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED86C3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593099357.9356.17602241538666007684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c9f70d0f62962b7ba58b1b002e2095b3458925e3d6a201c4a83477a950eefe
Date: Tue, 29 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745930993

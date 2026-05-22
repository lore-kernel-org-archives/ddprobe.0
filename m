Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373A63CB90A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779446554; cv=none; b=Ym3101F/lobexMuPu4OhLn7fwrwrc3E6obXTgqe4nIiWVDbisX4soaUZ3A0fTBoUHDOpQdDlPyzFV1ZJTsLlez6bZ6FXtxYTOSzJZYNWCEzUICJ1ts053Q+f9QCBxM81E0UGAwAmtHuxhMWdU4oirZUwO03qgEuAWn5sthYhoAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779446554; c=relaxed/simple;
	bh=vI6mHXuijqhTUkr80I8l8H23LMzgkF+j/pChjt14kEg=;
	h=To:Subject:From:Message-Id:Date; b=UJecd9ub0uesO76nchFIEcFvWhoeFdW64cWOwzB2XObmzFs4D06wqKuEkVoFEt9w/7/bdeUOwwjkRp+Vy8hRWjYg2Tc7iGUoduqPqcv2ISO9z8ZizbRt1fCN2Jk5i/5ZroIym+LdECruVtCAEGYJrM5vUl5en+9rsIMtotSjk+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQtm4zBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQtm4zBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C712BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779446553;
	bh=vI6mHXuijqhTUkr80I8l8H23LMzgkF+j/pChjt14kEg=;
	h=To:Subject:From:Date:From;
	b=NQtm4zBJYeIIxMpeWgOvcqtEpDHVDg4SgvLLWe2JhEW0zjvvAOl1twFPWSBPGq2FM
	 xLPT81aiaPtgs8fMcoJQ6eH2IEkola12fBU5fryUmfvARV1fr3di0SG9FDeFhCf1U3
	 xXuTy9E3qC0UnxYOUbisrsSjFPb1FccRp+tLUdgRPmMineDiUAqoCbEje7OwJ073Jk
	 2UQ/6hJCoj9cGuAfp5LbemDffiYNBrhUoR9m/UVmZB41PVpauBKr3lv0jZD8zHqdAy
	 9/Q5ESd+6MbNcQxZzsx4zISGzIjxkyJMRG7Tm2/D83qwjNDr4HGlj30Qkb1sJwMTQv
	 tzExXEkeL5A1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEB0CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944655370.16053.7457045077605340763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4aa3da3a31ac09c5088d13e744c534ec00b20b01351f301aae1b9c1384f7ae
Date: Fri, 22 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779446553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1B134CE0
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713291563; cv=none; b=M0Mr6qDAbwBnsmUq6elmoV0yf9CpyMaF+eGt+d+FlFLuPQ6fGedAd7SqdB6YfP2pG3ZeSfOPSx6CF0979mLlTbxW2Xm4X88YKFBcA0V2q8VgzpB5CpXYDcfgHzLzxCCTM4GutR6YcNd7kWiU+FzU8QWYtLdx9HrRkTHnRHccMWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713291563; c=relaxed/simple;
	bh=cX8LgZj8rkaGyJDbOWGbwATFIWHiow4fLn0sVFaYiDo=;
	h=To:Subject:From:Message-Id:Date; b=o71mQdNR4qm5od65OjAB1MJiVUC71zm/1fzJQuaaBsvIxLuwlbFks4UkFvWgpS1HpZROh3RWr03W1A4GhphlHRuJ9nGM8trY0e1LMzLYkiNQ2yEKmtPtYOwXsm3jGJhhErJjg3xxSTRPTbnZA9p0TdCk/5XXbLC/ytQMOd55oTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBEBizgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBEBizgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7578C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713291562;
	bh=cX8LgZj8rkaGyJDbOWGbwATFIWHiow4fLn0sVFaYiDo=;
	h=To:Subject:From:Date:From;
	b=uBEBizgCasJGXtpBd9zg40nFRuNgQIsJ32XA7AhIBR49UJvWAdZLDUm1tbx2S6yUD
	 YhOohPgzXyQ6nYBNMWYwqoWnKutS3HAwvNdPrwFQpcb77vPyvBbBgxYUrvnsWKywqd
	 qs0JiYhR5M5fvNWtFEHUYlF14tIGrJEDYruaBaRp/Vb3Fc2yDF7+KbAEbpwtaKRjIB
	 tt461vAUC/BBfM/n3FUF2XAfo6Pju2Vr4hqtyl1c369/PQEcN96lvvfe6KS2haMlrs
	 czNBEHk8LPXt6ih/uGy+CULDJh/ALzwdRkawkqy3T+2SNEWnzJ+XFgjjVEaE4qPbo+
	 rc5LtSu4FsSdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C319EC04FF6
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329156278.31394.6594248344168076758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86949f160018d0f44e6ff8073d193ab608109b8e61f52396069d84929f912bda
Date: Tue, 16 Apr 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713291562

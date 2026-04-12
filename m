Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A968175A79
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775995054; cv=none; b=KCbFKYG/6w/rA8Rw0XmvLw6VzBFmp7q9lK7ro14Tmd5oGGUxOOn8q95UHQuZpVEEMsmQdPenulpMEuEtaHBmFfssxFf570N8QGsdtJujmZLbUc4DXNTEL4e0RYwxh4uSPm2do72Z60tp8csN5pVaTYQebSFWmxW86hOtVC9R1Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775995054; c=relaxed/simple;
	bh=TbzfnDRAHbTAvT4FOKl2m45/QqXkvO3rfS7kwJXdM6g=;
	h=To:Subject:From:Message-Id:Date; b=aClASje0/enaTHdogx/STQet18sv5UqeMgMvQYXBW/EZeW7nheawAC8B9jtEjo0R51iawF63iINIPnA28lKB6bUXiwaBHpZd9TN3uFe7b1f8o6n6eNsC6tNffCKdLVSkGXMLlT5Im4eUk9OZ575yfkaw0EyiTq9YNbvqJ8FkLDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKlC0lq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKlC0lq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAB9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775995053;
	bh=TbzfnDRAHbTAvT4FOKl2m45/QqXkvO3rfS7kwJXdM6g=;
	h=To:Subject:From:Date:From;
	b=AKlC0lq78qIgZfyUTMcUZPCmPE4rgptkcyFDDe3Wh02VIlgVzaf6DDi7pmbOwTuTV
	 Yav4nFhELzfDjShHZRfUholn9nWyGhjsPOv2PB77Eu2boExFCPYNU42yrjmsk8rTYC
	 REXeAMOgx8MTbbSyFFxSglObTjBd7fPFcZ5CsJTdoYC5VQciknCWYJSRvzHlmuO2yW
	 MEhkBUoobD4hhMa+VMIgb3fsVy021iOTcdvBfyxnc7up6Pz3yqoQaDPQze6hywousw
	 1R5iXf+24HxvwpO9sSYnlTDOMZWo9aXstw8eOq/GBKAxgMXvUSYuM5A2mqSSZa64OP
	 ZyFWj5fUjw1PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3FFE937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599505368.16852.12664505112296105023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadbe8e47ee5c86867a7aa4fb9a193250545944628688c8fa208964ef05cad63
Date: Sun, 12 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775995053

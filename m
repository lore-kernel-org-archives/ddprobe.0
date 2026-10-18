Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F276349CD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792306834; cv=none; b=XSHz6+6/A5m/PrRyR5RU63uarh/C3cUcXCnpnVoedQMJ6NSuH9TvdCHZjmiNIJZa/EC7RWk4EGQASZn5k8NGAtvNUiN29AyatpMzmP/xv+4km62ep1CNRqsxceEEZo6RKa14QaSY/apJ+mQIgtVkygVSm2+ABVne+WRC3ZMB7vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792306834; c=relaxed/simple;
	bh=Q0YUC7ddOYw+KKcIn+OJnhgSQx/MOvSngK3FHhxUyYQ=;
	h=To:Subject:From:Message-Id:Date; b=FR9IrxktHkzluBzT321s1uh/6dRD0jtOPcINwFWTLa0mKxN78iZSdPTfOw/bmiFNvYM/EJeseDu6CNhkV+qp5HwYXR+G0pxPwE5uASsiedE/kQpLqVwhNyU6POuanvRlpDxJZKHU5KwPwi9T0hWdeiKCA8hsYhD7ZOqUMhl68rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5SfR/DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5SfR/DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C32C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792306833;
	bh=Q0YUC7ddOYw+KKcIn+OJnhgSQx/MOvSngK3FHhxUyYQ=;
	h=To:Subject:From:Date:From;
	b=p5SfR/DWQRWuBHnbDrEhm09Qt/3M03E3x/YGsVNZZOuRZiHzJ7/Vi30/wbj+12Dre
	 NNMksfdfFrHXPm5sBVWOOPNUHSud36imjlqahPLWjrn+wtwkaB7FpYSSOPiPxNH/Is
	 WJezkGWDEC7cxmC7LQWisz+R0j437k+dKEPb9qXyZNQQOI/PRzQXQ1Ta2LZggmFn1y
	 LgdVU55KFkXscMffS2HGMmgS8Y8x2s/dwIzstahS59ni8cEn1XB5XvA/mwD+XKSt/o
	 qjaNraQLN19ToccXca/ckxvZeWm2SPhJzQ5+U607gllZjDril3Oy/qF+jwUZbOrlto
	 F4N1Ffp2/ubyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1123CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230683368.5855.8733404804227588332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9269a2eb31cc8bdb319587dc578d793d948477e436dd58abc4bcb44e0b9271c
Date: Sun, 18 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792306833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3B19049A
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742929194; cv=none; b=N524P6IaglBNk39nNObdrleeSbwbXlsOkRionmmPmp0ADZEvIv5pYWPyyhBMANIkvMWCN0sg1Kxc+sbtEytOzvJp5yIyz0jIFNxkgdIpQNnpSXXIVmwhDWbP0NG6dGtu4KuS2K01TfnXd/Gq8ki2ltLjF87avgTH8yXkq6KuVHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742929194; c=relaxed/simple;
	bh=NiE1DlK/z88bLpwEwCfllxrvbk78lBLdcSgxZOQgt4o=;
	h=To:Subject:From:Message-Id:Date; b=NA7HELLaUcWFbl2/nvFbkJT457SLYihJjfrEAJGEb7KKrDGGVvKsM7J2PpY4dSCyI9OTFAF/fJ9+5e3TpLZ7v7d1akDsrX1LUO4A8xrmyh+TUH/DIGNCVkXNXrWEzXlWuoLsSNN23aUqLq3FR3Fr1KWRTIvoO7D0XD2tyHpPRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en1hUSZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en1hUSZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47F1C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742929193;
	bh=NiE1DlK/z88bLpwEwCfllxrvbk78lBLdcSgxZOQgt4o=;
	h=To:Subject:From:Date:From;
	b=en1hUSZAvKu65l6iecsxiFXggziAucVD6eBYZUwm87fh6l0CXJOJ5yiUGGLBC2R5/
	 WUk3GthFTch6GCMy28/2GA0bgvvu1iv1jXfn0SKba26e3AhpEPvKJz3EykuY+SoVMJ
	 0zQUD4yU1rV47FB1GQqpk9HclbVvSyxMtujHis/BjtHOrUBJEO9OiVaAgyBxmtHDaM
	 VGBXRQYclNeVnmrbq4COZxARFNh2KjD6+IAuEE6zYD+CM2Vf+GCXJSd96pzxzkS5PF
	 12qCEP0a7pO4Inj5YT6hTsRyB9Ep1KQu1a5bHSte+GTppyYf2xubVnbSwkf0HM/lNy
	 ai0UvH5PSfzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F50C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292919366.9389.17398740714395107882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642b3a97e5468a3d7db69ed47fa29ea91aa422dae9c4e176db176af7799ec533
Date: Tue, 25 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742929193

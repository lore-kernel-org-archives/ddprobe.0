Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B1637BE7E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782167194; cv=none; b=lTAO0/YE201Kggoophxg1DH+Go97UJmktaxliWss5VTFophM744jmo9szgastFdRixUe8YkgaumeAT097w9yXVzEqbsGQNCxu7b8Ewstep6AaxheSYh/GWwtJO34h67ufxdkV/EGhjrmXlNLd33Ge2+JfRC3mNTKRE2r7jOEBPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782167194; c=relaxed/simple;
	bh=3VwVq6gEWgMu+cUrS3Ps7ILGU27gSCQfOsQQL2poqss=;
	h=To:Subject:From:Message-Id:Date; b=IdxUZB41r/ZsHitfX/5eThJEPZ5VeEspe42BR3amnXigRIwRg4V9jHdztPwbXQ2BSzfUKzNC7Nf0NIi1vrYQkHcgiteKejGJGNYKtco6fC+HHD4+cfYAqudZ1CLS05vaczHZt5oNlZ7b4sHZSZYL9gewq1RMXGF0GtRhGCZRuNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEF23ZQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEF23ZQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63DAC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782167193;
	bh=3VwVq6gEWgMu+cUrS3Ps7ILGU27gSCQfOsQQL2poqss=;
	h=To:Subject:From:Date:From;
	b=iEF23ZQNOZFOXIKwpUpTIgR8vmGHTsMg+DsL+zfFm38KHfWQlQC+f1yiz78GJzmIF
	 MyrcR3afAqUpV2lH6FZKkN8393o0d1Bgo4Gp33ZYMzCjuL7DZDJ28ufYq28mVhoUDW
	 U08Jn71pfSCCdoK01eLLLlNrRySqDRqFrQjjCkGOURW3nrIz1LeldasDlS30dpROTh
	 XHutUyh7xXxNn/qgL2FEKBCChN8iBJEM7mtO2inkg8Xe9kr8Pariq+0pP0zPxWQq3D
	 ai+RzxArkxeyrgCTyMwg1KVnNSkXG8h+W5/9wuLYUz/ip/zWw709j33qrRRtmrCJus
	 MG3ypkAFYRLlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA188CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216719368.3120.4107143193784940636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d7466fa85f431c5801d52cd0fbb2f51b6ab57344a72cee4d49869106ea74a0
Date: Mon, 22 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782167193

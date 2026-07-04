Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7702B2D7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783177114; cv=none; b=gd70JtWU9lt1iJH+Qy59LMnM9UvA0qY8gNS18+nca3F/7lz4cG0Gtl1fgPnKu7LNsMfYEQWU03G1pgq3N2dWWyF2hueJIy56WIv5SfSJgejSfS9RPiif8w6jPYYRXIpJogXcYWrvcKps3ejahB64V9gvZ91HxJSPxpn64QwkIWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783177114; c=relaxed/simple;
	bh=fMtugI9oWh2BksrLVnzoUHqw1RPSMFXsMYj9phcWhSc=;
	h=To:Subject:From:Message-Id:Date; b=q8awa/C09TRCEDmiv6+LTuMy3F4s4I1zuJ9D9m8IvPRxxSsEjTI5alfvDzu7EDD5pZpornigv4TLC1llQ80GlWiJt9X4XDaNaYJQNDwosUPvrDE/0CD8ESNKcPY4FENftL3JVeWgOUgoMAm3Y/dEHjCjMUqZcUw7hdYobAnYjEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx6vIzG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx6vIzG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5920C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783177113;
	bh=fMtugI9oWh2BksrLVnzoUHqw1RPSMFXsMYj9phcWhSc=;
	h=To:Subject:From:Date:From;
	b=qx6vIzG2n0zrFPxWlx6hQbhxwMo7kSJazph8NoHUfc50zdJpi4ziuRZrMMRcwoz9g
	 fjPnOEGTnGrQIA1alSCeKwsiyw44TGMww4gpP6ddbufWmdC82txB/kp+Em57dG1N7x
	 1+n11FZD7r/aG8zewh/5uvmsE1WwvyCucDgxIlnpAcNRM5r905hOZ8NhmcA++elbYu
	 junNj5tE4yjsKXo4wlb2ysDgF3YSGzrAoU9SIAS17q0pI/CYPCcCYCctJ7W2PHSSPi
	 zdzfF46GH//3ajH4WoVlxfEvSIRn5pNhDHuP8AiDzKm2jPgr+CLvCMK37BHnmk8sL4
	 HrnB0VvEYLBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD7AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317711368.21906.7775556008620628740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30fcf90bd28f2dbbcd9397cf2d0fac48fd9820978e09a78fbc68178d8171d0b
Date: Sat, 04 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783177113

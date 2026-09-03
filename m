Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476D5239E60
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788401434; cv=none; b=Drl63EdVD2i7zw1imJx0GZxhXZaY6sH+q4XuoblCQjX20VJWWTpnOjzAbqxRhRGtsObmqiEMgyhQCf0r+kqOJIVGehayU7uHHMOtc7BSRiE58ZTgFsyvW2Y3MNNDs+mY8TfKra3SVAbcTe3kqJlHooeMlhQBFnVxzfxNmouoGBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788401434; c=relaxed/simple;
	bh=sC67Cba5DMtO+PmBnGa4W3HnE/UBEXs+Z5mdorx1M+I=;
	h=To:Subject:From:Message-Id:Date; b=PjtrfT1ydmVLOrDh5BeIg7HDRGgy1j59JMsBHbOt6vgIOA25kZs6DrdvWmpmkhjGntkwgp3FE7fhhEb0wjsDS7I0TIV7PFjIfGIhvbRDEIndrPV8VtxihlS8gWViRm1iPyRexnpIyMOFwufHx2QUN2g+tvhTrUsBcxdTL52hFMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op8ImPq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op8ImPq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30BCC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788401433;
	bh=sC67Cba5DMtO+PmBnGa4W3HnE/UBEXs+Z5mdorx1M+I=;
	h=To:Subject:From:Date:From;
	b=op8ImPq9OqxSZVvDsHCeDgXcEMLLhLq8cnWWb72uLzsYwY0KPvWAoyTudyfAEjo47
	 MP0jnXN+rUXYpQn9c4UOQ4Yx31W20Lr3mU/9laPNYkEONLTPK5Gkz4haNxV63HI1xg
	 D3Vubq+YX2okMVySnEfBboByGskpxnl9Ti2Bp76cW/kCGdoubaOc3JoyCTvZmeZSHI
	 YAXMDd+46miMVEBE9NnHqP74HSw7F87GM2UiARdEOGf3jzKKwy9TuFiN97NAMOOsv4
	 si0ke4Evmx1RV1YmdFC0UEIV/+nHc0FTKKM3ER3S+kpDTuDxcPKHayNZ+2CCsTZkBH
	 NGsgtKlmWCTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0684C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840143368.14097.9389787477718017313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0d24c6a93d68d993c640625b5c3932d16500cdd201c29882ae46fae172d0a8
Date: Thu, 03 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788401433

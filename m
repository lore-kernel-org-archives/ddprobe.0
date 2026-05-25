Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5532F872
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779711154; cv=none; b=h8KsShatGzCphk8h3FNB2pUxa4lN5wXd3yNpqJjPq8eYPc3Suc0I5huwrEsdT9wy9Q3cgay/OKN4L8sWDkyj1z+UrdmQgSCCqF8ieYOX8nzk0+erBdIMoTAliTsXh8ZY7YSOqFhIq6WSaaJI0u1EF3hGyJAhbs4X4yDCbCPYwyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779711154; c=relaxed/simple;
	bh=/oJdo+JP/ABlnZqnnijX9NbBGOzdmJKIOskXgKN8uxg=;
	h=To:Subject:From:Message-Id:Date; b=XauTzQm+PvviS1M2gsSF/bXeBwcdhOnSCf+mk3uwCryZgpmVz6uzGB5aY37tIYHeZQTCbTwUk/mDzDBaWVEgRbiBFPsiSiZS4lgTcEkdghJ+Pa44ImlQpAXhamULWh95O7/+zBXlp5XPi/PKzO6VaODUd0/Hd4r53G0x3V0s7Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxm6oPgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxm6oPgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1292C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779711153;
	bh=/oJdo+JP/ABlnZqnnijX9NbBGOzdmJKIOskXgKN8uxg=;
	h=To:Subject:From:Date:From;
	b=bxm6oPgvL3HDvc+elgWamQUZFfAAgjm78OdAcLj3ylt2WRfzRk8nzX48apNCfpa12
	 IPsvMt2/7IFNyvXCry5X4QZ1zHpXC5DlYeYxK1GVuJ5DN4Qjwa8BoegIy1eJYM9yvp
	 h5svjz5+pnISYt5GBwEdAy/JDuYxJKTAoGWyWAEXPDbVhm5g3MnuZXsM9oU6P91eBD
	 wJ///3sQ+DPSjArAWCm6yMtSsktZW5pKZkJsrpuXhiSZFMRlTOAK+/RShWzuPqDr4H
	 D5TLlW7lX3fexYSmVdDgCTri8nFBIVl/eKCD/g1O4Gm/vM3ImBeLV6+aTY4xgxIPvQ
	 SX2AtALzvp3sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DECD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971115368.28883.8786639862279056224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5adbd2b57570943cac649f3b7e34f410cc62bd279547381801da74ef9f7729d9
Date: Mon, 25 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779711153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6083F30F543
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789356034; cv=none; b=awLEpVm94Sv3MLdGirueNBqVTbzxdnueDzpeWA5xTWV+Zx1AhmT1RMjBlaPtYBf6VsrIaDZYBafIYIXTVG/ydP9myJls7VBCdCTk6UUJYWdCUFU6By7Z+Nb3JUwXeQie3Hz9/7aN4ZkdI81gExmXUJl2XscXAzI3C6ohpAQiupU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789356034; c=relaxed/simple;
	bh=M0RaOLlR0WL8QarSVCDvo/dMjJrG/r1Q7TlKHH5zQG4=;
	h=To:Subject:From:Message-Id:Date; b=iQ5K3VcHfs2qMvo2uqQ2k/ESmVM7D/ko2Le4Sw1GtqwH54RWs5Gz44EelAf1JKRwUPgbPq99exIz3Qmi3LKNNqzOJQGTgU9MkbZ61Wlrb3Gh3Sf1/1HidTaLbXOJp47BDdrRssagkF9nIcIGrkS8cNiyVY3rBN4R7lSKTynbYas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRjEPAuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRjEPAuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD6AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789356033;
	bh=M0RaOLlR0WL8QarSVCDvo/dMjJrG/r1Q7TlKHH5zQG4=;
	h=To:Subject:From:Date:From;
	b=NRjEPAuzqq/0k9LEZt4ftfsvrZVA1kIH350axs057YM1jgz/j8JNTPF7hnJ3q16gh
	 IrwVI2mP6QjRi76jULMaZQ55VLHuUoqLVMIiM2rVBIMak214qnW+1RfVItxTauvS9t
	 jOH6BnSNOtBaTHdco9lutT11UXiUcqF2CQRHSqc4MErDoAPQTODwpbMQHOSdTbc3VM
	 DoUalQPpXPxGvsqjLCBjIowA/povthgaLOxzqfl60Ef05bAhzcDWzF/x6mit2IT2vm
	 jzGmt/lQ/L7w3VHsr0uU3RxQdVXKGX9jnImBM2MME/6osthIC3f57751Q+vJpqUPCa
	 qWIrV7pGGBS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99AFC88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935603368.10778.18389244269458360914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d44a4365890d362825cdc68e7eae6c4a855ff1c4fec91e0045248daa6a3ae66
Date: Mon, 14 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789356033

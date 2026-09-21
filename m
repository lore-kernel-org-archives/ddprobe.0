Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785A33264EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789958434; cv=none; b=c7dDStvcE1EON5+DBRnpdieSuHn772pZDV/vkJVb8qpBf+vYHL8w2xvPefkEPvPDnCFHw61LTAUSI6n22M8fXj0k79DrcSqyIhnECZvEUNMi7Wa+VJgIWmmdLxgkNH+4INHLFg6q8Tx/GRureBcg8pHMTyJhLg6tDPOAAW4/5fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789958434; c=relaxed/simple;
	bh=3BaHjbCYYI0TfgKt8cmmB9oQqCCYR6W4uuwZDvWa6Ds=;
	h=To:Subject:From:Message-Id:Date; b=ukER8a6GCwM2lSFLrlpiiiJQLcc0QKFqVpwTf8m9z/ESMrdT3kNTzXB40w//UM91xySXrsYn1D7xeolhWsfjomIZO4C6W9gLKVCaweLqx412MAWEKQEplVWuHRHOqvNkg+yAnCgwPPlEA9D5raxEYFDehnnPdufYRmkBxV422cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL0V3DZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL0V3DZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8C6C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789958433;
	bh=3BaHjbCYYI0TfgKt8cmmB9oQqCCYR6W4uuwZDvWa6Ds=;
	h=To:Subject:From:Date:From;
	b=QL0V3DZpEbFCSEbdm5tQ29dV5x/8kILyX3DnQrXXIdn2W/W8FxeHmaTWqIIttiZ7J
	 3PAT3MFRvrknbPgJIh6tGetvExGTT9Db8GPnTpdRj5TGQtv/yF3QznUAzuv0P1mX5J
	 ZNUnm6sP/d192Td+Qk0T6PCYEqytGuqEop3NmMBZmF7jyavupmGKc8YPkxB5/Qhkx4
	 aZeagJ1vM8g76P+P1DcbH2wN8mhdR4LGEMWTvT/+DSNlOz4USDMYtxTn6r45I6narP
	 DBbAKLlwEgXaO683EbEQWi9oBpdcar+vnabP0s/vN3N0EIPGGZR7+4i/CXmaQ2r+JL
	 GcSSsy50joaqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDDC982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995843369.23161.2093272818210540768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813927d2ccac940301e737516609df37d984b5944e501f8a37b82195c4d8744c
Date: Mon, 21 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789958433

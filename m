Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A76D31B131
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779732754; cv=none; b=eCOqkpGhvOGCBYyTwLEqRfCJtswWWScBbCh7TVHxRajaIO4cD2k97RyWOdWi+M37UBhON3dMUAhGXKDEAt3hmj/EHTZ6IdE+WPdCDwctc2WkscdCZQM4omkJOTaWX/gQmymt6nHy/7+G4bV20Xb9tvnQxaxfewEDVrnTQ+97igA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779732754; c=relaxed/simple;
	bh=TYlvyu6zjaE9tgTrqkTYnge0xdkD8gcg9DN6Vyphq74=;
	h=To:Subject:From:Message-Id:Date; b=ds5rbUb23vbzjSudAHtt7aOVKD3ldJye6EOSnI7avZnr+JrBWGUhDPlxBkLQM4JmO7gYDe2+NornkK+gnhdXO7nFaEohtWIYRNWbFUlf1xKrpOW0cECNfwtURd3g9NyXB6i+la5pWWv4Qeb/vx8J+wWH3l2WDVcpfwFO40Hv/WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCItxB+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCItxB+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7E8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779732753;
	bh=TYlvyu6zjaE9tgTrqkTYnge0xdkD8gcg9DN6Vyphq74=;
	h=To:Subject:From:Date:From;
	b=rCItxB+igP08Y3b6TnsLP/9S5YWWzMGjtx/QHdQ/RemPV4N6Pph+BksVL0Kv97qB3
	 RKKP2Kw3jKgQna/LbsIkC7yZnbyUk2q39zDyowGW2pvAaTBfT5xxNfXhN6IHc19g8H
	 6BYWv7KwxYTSec4jslBNFsSYSJ4UFcxnHA9OLYEjZpfZHtdFECvIV/smI/DKP9r5LC
	 xZim9/z2Or1pCE/G4jUd1rXBwLP/X+/wxsd8kGTSFNMzWOAK41xOVYZs4JsfALhP6G
	 0ShSDaK8iNuoimesz8JAt+BkBGBb04JMJ2QJ/zVPQGJmuJ2wEAs8UV4nYefh8VXPMO
	 FoAwIWO+04aKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E91CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973275371.25020.16813824406019250144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78763571604e7e8e39b130e2400d65436c5aa5e99e29ee5d78d8a3142004fa47
Date: Mon, 25 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779732753

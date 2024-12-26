Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4B12B71
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735173354; cv=none; b=YvtvJWh3c+ZguhW6yM8+l/UtF9FlfTUrf3DOEGMdeYAKDj8LHYeFpuxPsMhu189pMRnh8sdtHUw4+o202DlunAWiX7erR2zU1w+6IX07B+4dr346bdHKX3oO/ATcpOoj2pM3KNH5xV5CdYv+tRUtx3aQZEsNPj8TxafMQHniBTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735173354; c=relaxed/simple;
	bh=ZJ0urLTTZDVdpraplE8rS+g06GwXP6ghRCy9Ls/GZOg=;
	h=To:Subject:From:Message-Id:Date; b=qru79P0XzeOCK5E5TIdzbYYnyqpEXHI0v13OoaOrJbKMf6seG9LZiWZT3ybhPg/68TKfr9Dj//HSxTK8WioT8KDtW89doLuGtX8N+LQz5HtO+YATsgSQ4U0mFnr/Tf2wl5mx5KG9pJdiRd5Isd1r0b7HzRp7FXEpUdRruEZLb9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXz3w6V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXz3w6V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA604C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735173353;
	bh=ZJ0urLTTZDVdpraplE8rS+g06GwXP6ghRCy9Ls/GZOg=;
	h=To:Subject:From:Date:From;
	b=RXz3w6V7Iok9MI4X0qcqYtFhKwPaU5WTEy409xyJ+DUZeuNQ2yLaoqZLRdoNRTCXB
	 1yQ+FWAhXArEG8pmYTKUkGetB+XySWv5nP01lYfZSWs37AW4iGFqOK5/RJB8ct2G1i
	 o2hYFiyEX2s095PbRQdXjhlh48eVR44AllXcJZXMvMZ435Ei8r4VCPBtT95rfeoIn0
	 jFGd44jht5XKfksrMzTSi8ZzOFVjvJDaxe5xPQojSBApNo0xgwNOJ8CniXysX4HFiX
	 gY20nr622g0mxvPGNXbvMVhGmkoRDr/6ewjDNXa7+D25PAfrm+D/7QQIF8NwnsUXOK
	 QkzY2T6PkuSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9716EE7718D
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517335359.14242.13428557855105679301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b37544f6c1ebee6805733d40b05326207d5de438b6e03d0501e67f4f749a613
Date: Thu, 26 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735173353

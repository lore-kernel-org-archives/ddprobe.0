Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BD29ACD1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764747174; cv=none; b=P6pyK+S7ROAvC9JKXrm0xNllEqo0MM4SYJL3rgc5MuZlfFuxknv1oflDAFOuBFxJsdCOixFrY8oAeIYU5Rl6tRguNI44WtJVI8QRR8CAEVsx03nKWWRqzTVoIGwLzFaeZ/4n5/z/qBE6fpTIsogIUgpHYNupWjyoW7LQrHO6SUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764747174; c=relaxed/simple;
	bh=9YCWz/cMuJNEX9U2N01XUpluQz6RCJYSzuy/6dtH1fU=;
	h=To:Subject:From:Message-Id:Date; b=Vn+fHSJRAuT33gAMPYG3tQmmUMJfAyJgBwBIEBVECNCQrOOJToLODmWDGWe8iDF5Td2M1Dx0oIWo/w5Elt2hoOGU3coBciCED+Wy698ivrDI4htY2Dm1jrf0omCMo/V2eAa+ZIXE07zlBWjtgG+Xku2bwxaJqfxAuime2YCYf+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUxS+jfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUxS+jfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BAAC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764747173;
	bh=9YCWz/cMuJNEX9U2N01XUpluQz6RCJYSzuy/6dtH1fU=;
	h=To:Subject:From:Date:From;
	b=UUxS+jfBRCkYy/YqBbjtF1/neBDJkS9vuS6krSFW62XvGAuV5mp2zQfehuMIaKjKc
	 wD5hbyE4yRvn85nYx5mm359RZvl4I44weSlWSQsBcMnYq39LrgUt91RAWe7FAuT7hK
	 KSmzQRUVtbR1MgIjCCAiIDoW38f8nV5ZoMrE08PoSdFDubDinI0X+Id7QUtQU9D0XG
	 mkg/vH9SMxUAL6mkvW2FBgRG4ND4V2nzICclEAwAu2k+/UcCG6Dj8sVbYxy8oanijq
	 fUvfTFB1CaPoPZQBpLfv5YgBxmrS+BE1fw2rSQj5ucAr/QnXEqYL7+6gP57KrpTBMj
	 eXXtAJAiRjYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7ED1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474717358.30524.3834372052096792336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de3a2492af426f3dde516dddf1731313de8d471c0eb14796de3705ef7fce7f2
Date: Wed, 03 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764747173

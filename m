Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F85D18E755
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727712954; cv=none; b=KgvTj/VJTbpww+hIfImYYkRjVz9Dwqa8RIHZxgZAxft5rx4h0dT2wxfsQJ68lpWAwDxBJHDU8RgrbbycVwKFaPMpzwDIh12upT/Tipei2DXaI3UW17Yq/UM3sc8+bjCb3RQU2xli/LH8rCwb4PG9IxP00BFQTeqno10gVcVaPMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727712954; c=relaxed/simple;
	bh=sYjWwyFV3T8X9ieTWmB11U8OyR3Zijxr4lSIsmICXpA=;
	h=To:Subject:From:Message-Id:Date; b=WXjsusyt3WWGmtkiF6jfSa36Dhkha/sJYrMANIIv+I4CzkdNqjIxIZMTugMPOCixtWOFFpIRcibcNqZ/yfvYbt60t8r9MCHqLTXdsdd2msqpdDq+krFbSU5PmZAV3ncssbpTUaNKy9Q4NmurrMjDzL6r/fm4ubglpQ5D8FatQzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGq6yp0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGq6yp0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5BC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727712953;
	bh=sYjWwyFV3T8X9ieTWmB11U8OyR3Zijxr4lSIsmICXpA=;
	h=To:Subject:From:Date:From;
	b=TGq6yp0+sNMrx3MLsGJHj6m900lRvyTisk/sBo+1XZWf9Suz2UX/WhIhOmjlOWpOs
	 aKkVuvi+UrZEOCvCGaFYfYwQNz3UgOQe+gDC84TA1NleyxT8kdUyqeuhf/BqnOM3Ca
	 mcrzAQwF/9wTiKohmwNDdLrlsilo8je9/6tRQKVpLZ5N3uv4eXkGxXWkFDZKLw/1a6
	 j2qZItgwNoRjrbBad+xZ+f8m9wpPogQiuAf8wzU1vP2u2ZS12jLGtZ/CA3Ta84x24h
	 vHiVC+uzZLrljAETmEEl1BYtafzOw4ThC/nyicad8B/SZCKGZuWuXlR8Mcrw3tjMkt
	 rprTj/qpQW7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941AACE8360
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771295359.23780.2772767603933900908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67606c0eb1e5716a08087977fe6645b1068031f625bc55275448cabc8eb806f9
Date: Mon, 30 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727712953

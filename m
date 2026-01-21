Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DFB48AE2A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769000633; cv=none; b=DPAw9qxpZQFhjVyPg+tdd/n93sk3jBAdl4+yfMp8Z9Wv5GmtlSlLAYcJlgoCTCSLGVavB26vW5SIzjTVWpKpp7Efqj6EHJ82xERr1mtbbJeXQqhhIL7tBs/WyvBIU/MpwZI5DE9RjicAIOEuKWiGUz0DyJwCN3vKonQk7yI79Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769000633; c=relaxed/simple;
	bh=sgLFWxezPM1P4ZX9NM0KxZbJvcieS19V/WbCbmyKnsI=;
	h=To:Subject:From:Message-Id:Date; b=mFrbt34/uwa7W3BhJO9rvvYWwHQKRcH1y/sxrwfMyQrYMzjbKsVkG6pE1vphJb6rwOHgfnv2YFQl5xd1DZuC73RZbjSdI49fEAAZVhTpceWNXwZMXr20o5r5VzB1gJkS3JG9ZjMYHyWVAFD3UpegaC4QPhUHnDTtOcJ6f8UYD+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXJjXtBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXJjXtBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A43C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769000633;
	bh=sgLFWxezPM1P4ZX9NM0KxZbJvcieS19V/WbCbmyKnsI=;
	h=To:Subject:From:Date:From;
	b=UXJjXtBtswTDAxN9aCdHM2Vg1jmvPBJXwclcmdPxBe2Rdn+AwEa1dfQVqpGxr2qB6
	 hG43boQ7HhCXGUQsXsxnnu8edR2bLyJ8SENPLVu984Q/RxSSBJ5vjJRkfJtCm+NdqE
	 /WhaxioCJtkw50XjnoXA5b3sVO+r8D94GHn4pCVCUXJcxkB84Vx+A5dUUC0uXDu3/J
	 ftYjlFTTqkPB3zpsmAIL/sNqGe/ZfsT1T8Je+y7XoczbYBdQeSsVA1bB/n5ITyXaGt
	 L3WCLFDEMdVgXUtZ4Iiuqt9ZP5c1shhgSGaXcRD2mnqWTgA97iVupMvHj94e2LgA2+
	 AG+gu2VrKEUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91234C44526
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900063358.6878.10389712722574123394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287f0f859b92a3f6b07be3a3a2154fde6309a4a89267139dcf116bde97f0b4c2
Date: Wed, 21 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769000633

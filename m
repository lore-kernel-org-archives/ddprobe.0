Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7221C4437
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718478503; cv=none; b=GAbioNL3NIjlOeSL7XDDtKrQ5T8YhlFJg+VVS2He2mrL1SOZIaE4b8/KRfIZaygdgtDVN3Vfb/tG4xmXM8oslLb4b3eFDoGfHKSdbNBwKKpqEQaJ6AD4w8KsjhrKhsKnfkAd1VauvAfKsTQej7PVilQRIkFaOQ6hHR1mZCrYNwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718478503; c=relaxed/simple;
	bh=Wa00tV0UM6eaURQySrSwvBpnDTa22J9M2uWayIQzJ+s=;
	h=To:Subject:From:Message-Id:Date; b=UwcOQdgsd2Ke+axxZZPGrKQTL7z2bJuxBtvyt+3uoK1BpLV3grSwsTW2RF1lrUp0GFz1QVGZnCyzXOnroPyqGyB2zfExE9Lt18BSjs9C1vUhvmoBYpE6srBfzLLOJ2oiVTjuGKxtknbe37NQUH5rGVP0UdqB8cA0oS7z+b9/xSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP7TIoGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP7TIoGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8669C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718478502;
	bh=Wa00tV0UM6eaURQySrSwvBpnDTa22J9M2uWayIQzJ+s=;
	h=To:Subject:From:Date:From;
	b=RP7TIoGaT19W2U9zia50qLhhuY31RzARn48EYLUci5EgfFX8VAFK82RRAKQBKD3KW
	 b2tMwCrAx30Hf/XFbl8oFdGghyCm+GSiaqFEliXmrZeRszZLzG2b9gAlPHcNOlrMI5
	 MqaGUEW5qUi3v2QHuM0LvrdK8X/fplKlsDpdFX/c+XTTl36PWKJRrpPCLLofW49Y7u
	 muulnYDHLodi1TzzN2fbg8JRcNXAhxW6lNLubgakqWPK/yJjIGG4nvhn2bz5GA000s
	 Jan9DRIdW0z3sGAvPzZ1nj7OODbcWZwMeMU5yvVFq4XNSmOx3AkhYuBwy4qWTXXiyV
	 D1PN5O2l+hhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D5CC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847850278.32069.3340270614549207581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949e75b77fa9f5dfa016c5829d049c39a37bf74286c91aaec92844922f62b682
Date: Sat, 15 Jun 2024 19:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718478502

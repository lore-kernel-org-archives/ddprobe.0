Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452EF2F745D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770911694; cv=none; b=TJgv9RaMwIHQ4/DAyNp7GMXOo8OGTsxQT6aiMSfLMIVSNotsZV+IwF2z0wK2i9joHDHFReSds7+oqM27KBjc4svVWGHyuNfJcG6tslS22ppSGlRW7sWTNuIGZYDAYK/9vy8BmG/qIcwEmbmklqT9DY58jnHdu0gLG+XV8dv45Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770911694; c=relaxed/simple;
	bh=58T2Nw6RoWk52EQGPiXa4QC3iuabnQOZAazvjzsu2do=;
	h=To:Subject:From:Message-Id:Date; b=AnPf02UMP3KYwnQpaXi1PTJFUk024tIttMWs5hExS/HdQZFsKrjsuPOwSXGIwFfE5ZdbAFvoeRSPy6NbsWkVtE+lxdkOutVz3iQCDNeh0bR6fCFFHBiT1RRQluoW1941ETWvYLEkQwLQCSgStewt/Wr/jU5OC07KVQtyqS8f1/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rwb/IPs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rwb/IPs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43ACC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770911693;
	bh=58T2Nw6RoWk52EQGPiXa4QC3iuabnQOZAazvjzsu2do=;
	h=To:Subject:From:Date:From;
	b=Rwb/IPs616SsZMVbvjiYa6JwzQb/pxeW3XFriYvQj9DYwTC4sc90J5xX+idaOf/yM
	 5g4yJLZHVjvur2/IFUgTAbWFZw/33pqeKUtu8vHV3M/IBtU6CQitgAgA4Ctu2WS/xQ
	 GuvtBGyKfQZ664w4joJmZlXuZF7wuldfK+tHKOH/Wmp7pHJKXIqvdcrVVzf5xRgmqa
	 ZbLIuFxSLD1l+7D8NG/a6tcepOU/gXDyMi73qf2IQ9+nQn5vf3sOMkxBq2ecn20gWJ
	 AE5Zm9Kc/dBnNb/3twOdp5yregSoqvAZVNiaePBgs4S8YbMWgkbI+s1Wou6SzzsOVy
	 8FfvhUmdiqvxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A808EE369C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091169361.2120.14456099296713993528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de528d3cde47df42953a8e34a430cde662371f403a2efd6a16275f05f284cfb
Date: Thu, 12 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770911693

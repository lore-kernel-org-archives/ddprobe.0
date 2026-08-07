Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9C7442375
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786091434; cv=none; b=gbQBbTfxtVG7gzkS9eieqNxOnB2E3WcaUcbOlwJIr4bQLSlj9V4QrDHkx744MlwAaGYJwxj0STB2vUgS0Xl62zxsUWW8Tdhw3elSZqu3bXxM1RtLuQ3r/oTChobHp5uPb/GipJJBVUOa6l9G45WqefrMBnv3B91phtBijRji6s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786091434; c=relaxed/simple;
	bh=iFb3nVEwsveWjRRo/ixBJIyGsqG9OvguMBsc05UgdII=;
	h=To:Subject:From:Message-Id:Date; b=gE+ESCf3sNFKhleNKw4u8QGPHbcKrF8qSeasygrjnSSikhavsIk3wkFNO/XDP8jgvhs5rFSiXMa+GGVm5yLfgNKqR1wfVBjgHAc637ltMRl5B0uoV+e2wlp+27MSe7sDwr/RLxMKb3r1uoStvshVWrp12leyqkTOmbiQo9vGjzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Keuw1gXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Keuw1gXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7707C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786091433;
	bh=iFb3nVEwsveWjRRo/ixBJIyGsqG9OvguMBsc05UgdII=;
	h=To:Subject:From:Date:From;
	b=Keuw1gXHWMfw9Gf5vALJeQPQOR3IK/CpQP9+14vn0sRPhj+KQ88Vrhy4kzKQrZ/9f
	 6KWK0SaBv8vz63tmfDIcVCnrZC+h26NTLwPP2KKBsTqClP5OALBawS0v92GuGb42Pb
	 /tYq7SBKarhPM6YWKhbJ3/qCnNrlFu4OwU3NjtLEXe5c+2xpmiP6pX7F3SHnDdfPFi
	 JviZEoQ7VWZe9FVomEtKLWnZsSmCkFunvo+TD8C97rFrGdJHzKEPDnrEX2my1svCNY
	 7gSC+jP0+kVBJBhPlx7x9Lg6eZNdnXkVZHqVIVKuX3TY6zCV6oW8xkF2/298Lp+UF2
	 QByR2Ow5aRDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA3DC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609143370.9853.1000896037953021633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818973ea03939be6d0232aad2a3c5be0b34ed004e256afaf2a9dd8947c1aebd5
Date: Fri, 07 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786091433

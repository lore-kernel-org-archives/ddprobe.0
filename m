Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B90920E32F
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729313154; cv=none; b=kqFaF7Ahbr9PKJk0lzGbEBIbd5cIEthbbFuySp5lv87Gt8wZ7ylGpA0F5QlReQUEwt9RlaopmS/jGnXNTNXtM0a78ysMNKE9mp0sD8gD4oRn9XlTZ4cqpuRPG+deqIJlXlHlE3MMAnRsJtz1yMS1c+XCMiet8FSF3RUoiqrhuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729313154; c=relaxed/simple;
	bh=R57ghwoDXLwXD+KFXlKSpjHV8E8RAAH3VcY6I7IJjwg=;
	h=To:Subject:From:Message-Id:Date; b=F3KbO4wA70DGj4rbJ+MddsLDxH3EQjSYJl3mBjVMCL49h0L47jTu/1AEjOhCkL8iCEsdLOiWH9uzOtQz290Qd/ANKWo1G5JYyeavbVsLUY7PpF/m+G8C9Aj0FlujraNSR5hMqpgGEFWINsDWrxlOT+d4AiVXF3k5QxSj5ovimHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiuhIU7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiuhIU7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFEDC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729313153;
	bh=R57ghwoDXLwXD+KFXlKSpjHV8E8RAAH3VcY6I7IJjwg=;
	h=To:Subject:From:Date:From;
	b=oiuhIU7dJIt4gNMej8B0vn3Gjko8mZwRSkfr87InHS86q+Jg6vM7G7frVf06+aqkL
	 Xue3ZpytdkK4idPo6FdZm1Y5agXmQtnewWKHQeO5vbApUGh3UFkeu5RBjWymM+Cz7s
	 UFC3iM9TQ+MaAK424yg0TTrPp73Ku9xwva0ppu1fUsUG17NYXdHjxITDKjo/bZN5Ya
	 nsgB6YZoMoTmbHuhUn4+88G4fAD6WOOjst0tP9MkwuToWynH8Vu7FuqQ10ijvZyhzA
	 FLGFoDJ0UPZJVaiaiVDmlB8wJTTwQMmK3XDF6Z9NHPrFLQtEiBE23iXoQjzhw6YyP8
	 i5qrxhLO8lyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98CD3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931315358.3526.14524675418947923927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b3752165c39e2ba4ad5e8eff0730b470db6a587bf6131248594fcdc87aafd1
Date: Sat, 19 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729313153

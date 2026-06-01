Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D8237C904
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780302274; cv=none; b=k3ZmZTB3NtXrGN+5oeB4KNL9j2WAJswIpxVdMBKhk2OXPVM51Zpm8PhHNCKK3Y5oVTtj7u/Bb7WrfoAdjlv9EstyPCYovyDCb3WSsT3I1IIbZe/fYIuG0sKRijZVdKUegZ3KvSqAU8QTbkCQQ0k0q3KYY8VxfjIDF8FE5ms4+7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780302274; c=relaxed/simple;
	bh=2Q3foWJfFHzUN7nMGyaXw9hJ/kYpOANEnBvOULLx8ms=;
	h=To:Subject:From:Message-Id:Date; b=nhyVWqlS+ynYtJasaRKvC1b4sNC0xOJb2q42hbaKgd76+FdCSXYxaJrzB5S431foUEmfqOOrkutAyCxk6NxW0xg+4J2BCTUtrvoc/ZlFZPLh6EUwqYVpWmCaK4pQAmPOeG1NWNaNHK2NDmLceM+CYlwOCNhq1ITA9CIKr5fZwRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOVtpjfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOVtpjfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7956C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780302273;
	bh=2Q3foWJfFHzUN7nMGyaXw9hJ/kYpOANEnBvOULLx8ms=;
	h=To:Subject:From:Date:From;
	b=hOVtpjfH8Gy70s8fvDmHEffLMySp2LeKR/slZBEQOrbz/aOs9jS1jNCLjlYTmoJ7a
	 TOp73Npq+V8lM4/IqstwHdPSPX6SWW+zLTlfbIYycMFYab6ImZ5rZbR0k2gA9gYLTX
	 /g0P3R21nLEVxu3p9DGu5DFYiPs/0h9ogcZcx4rfbkyQnSfLinmKgVkrJF48/3ApN4
	 Wt07F8QiRsDJiZoIces/vkL0Faf/dR/7v+8aBip0pnBdXUVLTb7U9wK9fE2iYGVyc2
	 7mBy+XnNWe1WMM/GU0/EPsdDSvNK2avT6TsYHhbKLN4qg8/pYcqzdHSeMwQujB4LJC
	 /NvcjUb9sO7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8752CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030227371.19735.2315500112089285940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c90e94fe24b84953244c6ca84c6bf0eadead600dccfd8e4ec30fd53e46682d2
Date: Mon, 01 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780302273

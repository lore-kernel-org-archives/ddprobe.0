Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F651D63F8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749176994; cv=none; b=R93np++l8TNVyjUFEH3eb/opS1D8K8Lch2rttwuQWHGdtdhGGqhncPOgSGhYJRBGb6c+xDs9+NYyi4zOj+MsD9j5xf3zO2ktnC9i3JTnUIZyFDwFgrQjI3ixOMv2G8CRWfdfjBN9c6JCO6BIHK5sX1JkjyGk4Jt9E/ieUOBj/b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749176994; c=relaxed/simple;
	bh=lXDdRhdQws6nf7sJ7i5c8Ma3kMCLnGfN/xoCi6oIuAE=;
	h=To:Subject:From:Message-Id:Date; b=ZcjbkRQGRNMWuRmpCFFUdViafVm9ejByu54HbcpSOehUaWBmRUDCj/0QTaYoQi2FJ5rU1H85xb+QFed8pzTJJEiS2jukuts1pNixzY0OtuqDNEQelHPvVA0qll2PYfugJ+gtUguImx8md/B5gyHxUSiRsCee8eSu/oIUHt/HoCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKigYbJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKigYbJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF291C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749176993;
	bh=lXDdRhdQws6nf7sJ7i5c8Ma3kMCLnGfN/xoCi6oIuAE=;
	h=To:Subject:From:Date:From;
	b=RKigYbJ6/xpMgqc6pLftkk8Lq4II/5Os43s07LzqZfo1p3C+DNcrLT3UW3qWb0nEl
	 YA2Wqzg+j59YrbrRlT9g5aAK0lzyLnqqVNeE7nOk9ZiMEmv99BlyDu9h2re0VyTpvw
	 BjdrmK6kCWRxG7+gANz9qA4NOJT+vnWX/XKVzncbhzzC/ye6v1NYSc3gtHlpPyHq0e
	 JZqaxQb5sh3XtuntE5HINpfG6d+ycNTK7+btZCdVLLfh3qSm/Zdg//WS9dpVZP7gH+
	 H64M5vm9sc82fn3uj5CIrRhC5Sb6eSF0b52uHDTsCACHBDCzgGXDEomXA6xvEOpNoX
	 pXG2sYPcMdbfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C8C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917699362.32043.1628689954096812443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e372c0e777b126e1c9aafb81d4502c751292def3205b7a2c47b6c8631d847489
Date: Fri, 06 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749176993

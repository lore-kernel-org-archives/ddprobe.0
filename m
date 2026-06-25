Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A12F25F5
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782370054; cv=none; b=cWsWCqa0+NRIcR0OcbCyEhmH6zgA4BL3yJIg608RQWspKYGjTKmVLFp4rg+qEqPV/f24H8xVX8bgHwdGksyBly/q5a62kPCXNqgpYTPvi64eOTg0BfFptMZieeb+KFGkN+XVY5sPNRcjmDQOTu3fxkIHrHc2T3/n32hcJS8AZBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782370054; c=relaxed/simple;
	bh=h0dHhf7CCqQ2AQsfP3+GBWR22dlBrn/JmVJPwzWnjJw=;
	h=To:Subject:From:Message-Id:Date; b=sbd9reMImmqqakWYVSww+IbH60dI1WFndqvCD/Y0ikxDR/ofuHZkb8aYx0SD4lEPJKeVV3TFYFjO6oVibKIbHkY1hyX9Q3twi0hKN5NiiLZbo8V4wPQ50NSaGiFLFPOt+94axeikNnfoGMmXslXJS3jFHlXez/JSP5XWrIuRl50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTAdFqVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTAdFqVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36AFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782370053;
	bh=h0dHhf7CCqQ2AQsfP3+GBWR22dlBrn/JmVJPwzWnjJw=;
	h=To:Subject:From:Date:From;
	b=NTAdFqVmPiKHCKiif5n0a7o2mQeFXyF0T/BUJYp8vfygN/XdgaVGAOH8njHoR4Pud
	 8cEfnTuuH4dqC8snmdoJe8hJBopZ4G7qFnUHsw8nzhMq5okqdwfofi+887swLwYdZh
	 g+gY09lNEi/kCWcn5QaKVEHAGTBEi52sGFUCMjx7ml7Gg16oTcvyPQ7JZxO5KXSerW
	 INn3rV5z/sIs81Kwk0+R8YrXGhmJ2gbI221In0pcNPu9FbZuxltQpeSEN10xQw1FuI
	 MSxECYPf8g4H6l7zEBePqT/BESkSg2w4NPAjsEdX+M0OWuqHH8f7GqWIcThB71bSbX
	 qk3yvzTbWiWyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A87CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237005368.29489.4797729444349996417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2826927336e4384d4dc664e9b2db54cd7b848487d26d16896f5760152f45d26
Date: Thu, 25 Jun 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782370053

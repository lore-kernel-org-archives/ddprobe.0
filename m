Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3721B14E9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718902223; cv=none; b=Svpdn03tJHZrX1OnuB/e3e/nbBygYXOAMW7TSNTJZKK4FgssEPh/2DlZ7zbrjHNKm2i429+4iuLII15kVDSPmezkvjDN+zoftpgxnK/oI+MeVMofnt+HuNAk9jNkr0oHDftiLIaSXVo7kRm3BUp6Gh0ltCm+k3xXQfTTVLMBlIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718902223; c=relaxed/simple;
	bh=Xtd9NuG2JTe8eYMU7PEcABmF3EndkgiivbA5k1uHw/M=;
	h=To:Subject:From:Message-Id:Date; b=TbxlskVxoFdbyl6qp2KHiGPGbtnKq4CWYyfTtO/AdBtLAY3ugHtvvjimzJTT71+x2eIN3fY3NgMEp0a61ug0GXY3TWrDoOcqGlwFbzhEpAcIM+SrX/5TsiHMg1ff84QELa68vktwLtAZPvrQRT25utC+cEXFQ0yHsD1zJjPKMh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaaHrdvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaaHrdvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E69C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718902222;
	bh=Xtd9NuG2JTe8eYMU7PEcABmF3EndkgiivbA5k1uHw/M=;
	h=To:Subject:From:Date:From;
	b=LaaHrdvScP8yOZjvaBjF73Cvtqy/lNiAtqlGqIC0msojLwpHzKSZuP7wRxXC2ZVSA
	 vQVDDfI26jqGjxcq6lKW771jlIUa2N/ZTUdLgbbBzJIntWFmzco0X2+ap3HXZQTEbK
	 WMF0QcQ9oAu9VrKj2wdqsEWvkMSOj9g+65/MjGIcQZ7/q+30CUk0PMXX+ARq3y8Wjs
	 GUvw/TbKfMO0qlI01+xOmoKktbSz+DBnhdoJBxkyuNc8gTaaH41xFNnjhcZGHOTA/J
	 jXZ3c0bonyV7gMnPXRdq3aEu00lSv/RVbxMoCAA7R+kkLbn1Y8+PWxFI0yqhgCmcPe
	 aMYqI3fgyscBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB19C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890222277.15087.13981114290067480892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e2e97ca72d3e963092123398efb8abea64b2eba8740cd465ab24ec2a7f3e47
Date: Thu, 20 Jun 2024 16:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718902222

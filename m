Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDDE260565
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790358034; cv=none; b=LkSPLLkIVAGcM58uuHkG21K7fb9nZusYstH8lAZaCcDXzg0K798rc0XPRWpoPDMreumhnGZXgTkWHTn5fORI/bryu8F0bDVS0SRdNW6BOQ2yp/nuTOzhL6sAWHRsgscRZ9JYe+wJJtcsAtRB5QA6xC7y9fpozhgiV5caDaOybTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790358034; c=relaxed/simple;
	bh=7Hm0cvZubtnsabrXG/qgGL+9J+br2DJ0nNoNSOj4LXs=;
	h=To:Subject:From:Message-Id:Date; b=YSsHQBDlJvtc6RpCybjOcabyPhnstyEHW7P8kPDbNKWGbjFQlSbWm9gX369lAaVzaPNuN4VM+sVjlLV3A6+3NXuKpuptqigYLlnGroUS/CfVlE43/u10OPtU4JACIuGr5wSLmL6YTqAXLUM3xUcsLjKZn36it4W9984crT2T1cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPpzVSST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPpzVSST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D357FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790358033;
	bh=7Hm0cvZubtnsabrXG/qgGL+9J+br2DJ0nNoNSOj4LXs=;
	h=To:Subject:From:Date:From;
	b=UPpzVSSTnQeuU3xFe1K3Eck4UNcWG5OjUnuXPf1ualvOwJumh3cA7sf7PjZd3E1kL
	 ZbP2UHMYq7SWD5sPpWKa+GeY1r2hHJZocLrWMbDsvE6eawi91L7jHVzLjTVbMI6yae
	 AD+go7iEEFoXMyn6+iJQg+3auks9DJ1HMr3Ulf3zAfzPemdcyUFT8E4wLn8xYChUpE
	 Eu/FiA8XBfiDuWoKPyoG40UssUpIWOZsgv25mtFD0PCSmcUo43tcWdlTuvlQ4On8Zq
	 3ACWqCAncX32rpfre/Ra4eCrNmNBJMPG8bHNM1IoDeuRb+0rbkBWHqOA7Z/NPDKXRV
	 KBQ4GlNSs0t+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EBBC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035803368.24573.11172097579385179177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53d01ca2725d99c92dc4ad4fa28ad954b7644caed0068e9caf48a5ffc06e432
Date: Fri, 25 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790358033

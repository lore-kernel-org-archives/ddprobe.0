Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25ED49B458
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790839834; cv=none; b=XwzyHdfk7w1YU2/kQWR5SBVrvNVxpWeGCeahCcrgFERW4vsA5TRY3R2PbB6cEHV+EsoXG2LMR/jj38vUo3PcUPoe3Iq8mi34hw4yzVwUjWecj6wkOBAnP7LXCZAjtY6FCE/YCPVolhTUXa4xpQHdedQmGnmdAix8vaDJzagCfDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790839834; c=relaxed/simple;
	bh=2OelAZeNhJeYRlUo01W5zzYebEAzXNLZzlkGakSzR5E=;
	h=To:Subject:From:Message-Id:Date; b=Ek83KUN2gDo0QDC+OyOZiZJud85+rerox16BHzVNAgjdf10B5gaFRjpeFmqi00EsGxGHeTevvKVw5H7xsjF03Ipybeq+4yA0GarUlPonnqN8NEJZ54aglIq5aPecLLVzAWOpkGQTYtR0HdwFOMQQy7gP192HMfY1BR+7GBI81bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6Wu215L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6Wu215L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83ADC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790839833;
	bh=2OelAZeNhJeYRlUo01W5zzYebEAzXNLZzlkGakSzR5E=;
	h=To:Subject:From:Date:From;
	b=E6Wu215LxWA3ufWvWbB7uZ8SJBzsQ9XWcyDMzieIafckgzZx4JqfkIzHD/p2ZNdBg
	 hGfsXWwbOImEI+/g8Cz+Smx+TXS5Nquo5FO4u7gB8EErcIzt7T8a2Kndm36RSulUul
	 OklLgGvWJ1aZLczq8qVInJQ4JqdopZ1AuwfCaen0PJT+pr/0SxOLhBmLDuIwgxys7E
	 Bf2l3e6zPhH0zNbpm65HWBLzSR9bHDHTSQmjxHiWvkyDSAQ7VClnazhio/TdDer69g
	 ioahx0RPxUchbCyYyBqrV8FgDbyN4Mk1t+hSJaIXUO7vIPtTcXwcOZbP4K5LWlIpNw
	 Q4buAKN+igMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFC0CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083983369.6140.2786819075929531671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce7079dbdd960b8455a27f863f8179d4744049b23c2518389c46c0e6b7d6270
Date: Thu, 01 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790839833

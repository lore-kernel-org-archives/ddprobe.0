Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62994252D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788694834; cv=none; b=icwlFvbMQszHfAyUbqyIGIdl25saiRCZMid/NUcirft5rDHlcNUYOxbEiw6+sXB0LxmTVm9xvXXGxB1+QkSqUOKY/tPARkRz1FnUNq3gd/bbJAERHkYz2vIeUznVKJvG+vz+StNekMYN9Y1N2qYuaWfpFzb/XlTJxOv49oALmfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788694834; c=relaxed/simple;
	bh=Ny2qcv/5idIns6+0VIdhNXSncRiB78qi+8WNfijdcj8=;
	h=To:Subject:From:Message-Id:Date; b=TCubY/NohN/M68HGTz8CObUyc9cD0jXzJQEY3zLQXupEf8wyIDxvd94KkjgswLw43XdkENtKjmdg8wEiDSHuUDSR6Rf2KRRf6ptBRLqX95C8hnEXUJTPCRxSInZS9qUVtpNottq1dW1YGYLpvOsGEKy4bEb3UoHoosM6UxX8Xl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPgxWxUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPgxWxUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4ACC2BCFB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788694833;
	bh=Ny2qcv/5idIns6+0VIdhNXSncRiB78qi+8WNfijdcj8=;
	h=To:Subject:From:Date:From;
	b=YPgxWxUH1iaDjN5ytdfxGaB31u+ofATqxa7XBlOsbquGYSifUHA1u/dU4gdsQw0F2
	 LWgj3axraNVezd6wqU7QKTVfVThIrIgKnClcsmZKjylGXOJgITMgicAZTF0owTCQEN
	 k3c9lr3UnAz0TRCzj8lJQNERlZi/6qN5YNrznDK9HaqCL6nUURvrmD3TVZUAWVJy4J
	 7d3JSWHQzSehA0BqC83Hq6MEI4oAul+kueqlrkDamHat0IOUIfnez/1JvXARp8Y2xe
	 k22qqGV4ype7tQDplzuJJ3xQgSaqmGNbmC9I6oR04xkC/0qstb1p+LM0DmYlTWcphb
	 +MW1qPywfYKCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E4C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869483369.18993.3439046022896540526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2437f05b93e150f07fef363016a4f1fe6101f70bf2c67481b5c79410a43fee9d
Date: Sun, 06 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788694833

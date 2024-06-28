Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A12E1420DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719560663; cv=none; b=SNdF36mHkhCaN0WAEUQmTTz9dNc+a5Qc0HGOXbwCIK6XKlFSgQecaOIt7a8Wi/VpoaHJZX7CefvJiMAv/VK29WQGkzHh+bkoKyrU/7SNT0z6t000vkdh1KO6sAXJiw6J9JVzlC5FtgShSwmmg8oQSfCPCIdjmHX8XQV7sBgsGLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719560663; c=relaxed/simple;
	bh=4PIciOw3UJvFgKbQhZ1pmJUcK8ZvYQJULMzR2w/2cHA=;
	h=To:Subject:From:Message-Id:Date; b=NLUK8JmaFsNsZxZhHmOjOkX5ieqwgQ3Mz/Fd70WPdPH27fEO0cwHJiINPIp7PXdw+MRzilmniv+WLtFWSSRB79iC3KhTjcsZtAgr8P9di4TyzunJqu1xPtrFJCZy2eAYPlqMVMQZv7y9BASw1azP0riHVdKtsia1d1xY/L47H70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPnRmzHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPnRmzHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF59EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719560662;
	bh=4PIciOw3UJvFgKbQhZ1pmJUcK8ZvYQJULMzR2w/2cHA=;
	h=To:Subject:From:Date:From;
	b=OPnRmzHNMjWzQ4UO3tpGK7LC5usQA8abPL6CmfgLvhDgxDaO8VwmMN1xSCzssmSSh
	 gzWZY0EdmFDz65uT6bd9XAR5etqIX2zzxv15Yce6YSfXfNe2BOTJiANuv9opPxydE4
	 DmB8wC0VVoqhI7/58wu7WA5r41YI9QDnITn33/Uwrs3TO/NS6pLw2b/zCODZIL6D3P
	 SP83994BtkgoRQf3H1k++5seEYrcr4wOpGC3ubszYp5hk0TcuHXLdAZ4zXJiF0u9rk
	 ftu3T99hmr9LhVik8LcvfCJSpv/q5uqHHzcRi0JE+4xnA9RFO/VUbsH5ieXMqFcilk
	 k3p4pZSi+elhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0561C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956066279.29150.12011719189545359509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e514b7fc2aea9a9da5c72cb550db70cde52d51646b5e318c9ff51fe8fbf5af6
Date: Fri, 28 Jun 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719560662

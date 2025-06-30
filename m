Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB1E21A452
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751282993; cv=none; b=Fpn+cXelbWNoU16Gf1/VXXzzW+iplaLKQGO56l/eybyZ8qwZnrpnC+c1lUDHEx5/4sS+XmheKVxa+QgNAdS4t+FUyJOS8hNz5njqHEEMSY8TlWvidAsQKtHb9yfBlllaONh6mk6nOFKjOH/MlhIqKty8c9ji2RESEIvrig3kukg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751282993; c=relaxed/simple;
	bh=lqkFD1C3H3QvCZglvWRA8bZP7tZUmZaDblcml0iyiAs=;
	h=To:Subject:From:Message-Id:Date; b=AWS6Q+dGpH5vUkT9Tf+pTVy0dEY6Eg01ydKUBqAMn1crCU1/YlB7dxvoRF264RhjgGQZ+XYuOvZdk3pdZ+XceFQCxEV0E5ziYwMCH9mV81KG1AA8sX57cWDc8PMHUX1XbjqvCVmqtamdi7CncQ/z3BUfw20m8BXt9hn45Ysrs8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HodBlJXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HodBlJXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E37FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751282993;
	bh=lqkFD1C3H3QvCZglvWRA8bZP7tZUmZaDblcml0iyiAs=;
	h=To:Subject:From:Date:From;
	b=HodBlJXxAV2ztcUlN2EB3obBoieU+Br0x5IHqgqbByAvEqKIKn3njkKy8LOSJ9N+q
	 fpHOcOrDbuUJo1SPpD+F/xC0rmd8ZHuNGtJCuGa3pe2aZa8xSdiLCHb8nci1F//gbr
	 mT3K4GR4ZX+dy+fg/DcPoW1n9Jv9WSDnI90i0MxXUgL0cwYhYt5SfppR8v+zV7MSGq
	 IytxAy78p+ofVcsjqngNe5WCMJRvOg91FGgCt+0XxJvqim4dWh98H2wyLMhkhvVuJ/
	 bFGyk64DftscekZNbuojRLqDZchII4EUcEXFV5xDgZ32hHKRW9gxIecL5oGC3zTu1T
	 Fr0YH0paQ5zgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F249C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128299357.6861.9648588410548117170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72c8988782f32bfa8d9817c8050f9dbfa5005e4ef948dabe27ce4c1733bea31
Date: Mon, 30 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751282993

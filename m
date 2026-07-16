Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E933A8723
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784197714; cv=none; b=jvj0NfqvSzO0frk2rO3Dw/iICmIjRMLe8TVr9jZq/72SCWKnmlpIAURdmuLjyinzuyMSY+29HxEIMUWb1OzmH7iOkZD2GFqxZrUZTOmG6Vk+gPCm3poKDUErox7BuOWovfmmUL/TiXUdpYjj2c+Dg9h3+EyWguadI+G3fS2s1pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784197714; c=relaxed/simple;
	bh=1yXnlZcVt8VPVPnM4CqVAgt9yFjPD0MzNc7ky2XUyMs=;
	h=To:Subject:From:Message-Id:Date; b=scSxjzeFNcN/nay7JqXRUJW902zCoXokHV8Bmu32dDpza63xqjMs/FeD4epo5UsgJEPyLiHSTzgADLYJGj6K8nho2cxRQXNxehmMIrnyXdygdIt1WPI+g34GycPK/mW6o7Y8Akx2COUI5DLtbPUydahOdDXuFKV/OXLeGrC6UAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUAjdXFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUAjdXFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECABC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784197713;
	bh=1yXnlZcVt8VPVPnM4CqVAgt9yFjPD0MzNc7ky2XUyMs=;
	h=To:Subject:From:Date:From;
	b=dUAjdXFyRcn0WQdpcKkpYFOZXuYiCRJrwxPxqpmsPcKqzEXKw3CNCwBT5lYOek+OX
	 7l+Y6evt014Dsvw1Qirewq7XQi6ZgsI7y1/cg4t4XwSt6lFBd4aKVsldoWxagO5rVu
	 DgF948NjYJgy1f7QOcX3nCe7rmnRf4SbhPuxEL3+neU9MQgfSLS6BFKyluvWtyEAaC
	 AMSbI+AXAGuYFJU7w2/tT1C/1AUgXgYeNlE6OGouSnkAPk92t3lZqtXbaAnzTsGCFi
	 Y3mL5tfPCWKET8/BZZZcveYyAxSGYyqBnJeJeSHlNGvooYq6I8zaF7quKh8AG0Imih
	 im5eDqrQfIcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A794EC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419771367.5502.6523112657913521942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd36e61b9e60fd2e00f001955d6e7fb2548fa148655f9e206ff0752eeddb3fa
Date: Thu, 16 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784197713

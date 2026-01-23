Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A75238C3A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769192634; cv=none; b=Ea97jBtpJlolp+S1gWeX5BSJQuQPkAMEwTqA/Q2uuurVYG6hExujafkxtvYqO1v85AaUVqqznX9jdGaPJD3itiJ9+haTmXExPdqCCKCSvjtTQB5KYr8xVF5eC71d5bi76ODV84oQdTQHLyhgRgF/MecsVwNoKnWLhQ2eN5eEFU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769192634; c=relaxed/simple;
	bh=TYetIZ9ytCELdDOt4s50ttvHApanqeRTjZq3znQS0N8=;
	h=To:Subject:From:Message-Id:Date; b=GJ/S8IzF5Q//DJrlz1eDMc3GFNP5fxTf52Dbbqbb/pE36KWKbk6ruNRmGzR8it5QeFDUrZjjA81q3WUcR8O6g9xhvNCuYj+t7Wr72YiqtfvbwjnZdT0Zaaodc2cHhXUSD/uzmrut5HuTiOMDmNwOH1b+9H+pXQMe0INMetNZQCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV7qmNDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV7qmNDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A362EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769192633;
	bh=TYetIZ9ytCELdDOt4s50ttvHApanqeRTjZq3znQS0N8=;
	h=To:Subject:From:Date:From;
	b=KV7qmNDmQFe9kNVci/6Dy7iSexknOy6I7fizM1oFGSLFaTAxWK+4Yol8/FufbUCo/
	 C0v+PfhIHvWDZAXLYJRqNuUnaUyGn+e9mstNXlqiVM2ChVP4K7zJdG+ad7FvlzxvE/
	 WsPg4B7DO33B5bFM4PT8vNn9eBzJJaynf9v5sh+skkbymsw8jPRMTg9tZFS0TVc8+o
	 4H60xlVZWgUp8RcA46AwUHFyUTs+6a0NW0hFgKq+iWP9PIyk/9iB3anGZrQ+l3MOOC
	 9KcvBHEwyq4xxoBpUp8IEywYgQ+gXoIbj8VkW464DfkvVX4bazuyuFEhT9Ca+0/qkh
	 X1G2C35Xr8DpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167DD778AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919263358.1960.4256714574698672398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0173f65c8e007500f54ffaa38132c08502cb2330a2eb64f652dc141d47f16d
Date: Fri, 23 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769192633

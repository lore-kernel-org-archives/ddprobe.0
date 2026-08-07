Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62616373BF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786094434; cv=none; b=c2WRtmNos/VvadK4gPTdmFPUkvBUR5dKwwz8csEbxeMDVDaLRUxjE3xjJU3sok3CBXTfx+1BRwjY/Bsx01ZLkWifz6i6Klj171cAucTyTdlooun9t/LXcZxk4kTeIYA5LD9/XaGkU+9C37btFYPGjOHIB/rwZvTCoD395dM7TdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786094434; c=relaxed/simple;
	bh=ZNEAXBMqNTBiD28CSEaCVYoyYgEOLY1YHNkPKUp6o9I=;
	h=To:Subject:From:Message-Id:Date; b=gOCeH+CohJtLVVJoqYPcaRViA/D2lGPLuUavfC9Y1FolnWKz8se5MVhkyGA6rlnlGnU8qPSfNxVa9VBeKWXyXMEbqHFj/s+QQ4g8P8fIn8oZLpnxgLCeVpoP+Tzi2lUDIBF3iuZRlYr82oMLDp1uQa9HC5p728d7zRRpWmHktqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/Uz8UBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/Uz8UBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3EC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786094433;
	bh=ZNEAXBMqNTBiD28CSEaCVYoyYgEOLY1YHNkPKUp6o9I=;
	h=To:Subject:From:Date:From;
	b=P/Uz8UBnHRD24tg3gVjqGjFJEQTbZjBmVQ0acbwTYnXjY8q+ZyAvO6AyCADJqkEDc
	 RcXBW8hEbgDn9OX5V7Gf7LIs2J/dLWVSHDkzZR46AYacxWr6gadg5fnlKmjCzJ1Tmb
	 lZWcxiuWPhqLRBeS5IKFfehmPa5ob/+XUnPI0vx9KuZZHN/y5JDPV08QN+j6Bs8Q8Q
	 FiWcdUaNgyPAlumtBnYo9zS1TAzp7Bp+24UV71IVhzb4z2lRbXd9k2oHmAGuVkKrsI
	 fFxc1+l1e4faYViOkjWQ24y94x8qsPDvLE8+2T2RmpZ0h+psLQuA3q8OGX/PmgD+pD
	 ybf2mqBq0SRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE956C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609443370.387.4124956312639983948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1282b5f9704aa0985ec95603d7baa6a13b4e928add51316a229fa868e9edd229
Date: Fri, 07 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786094433

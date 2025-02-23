Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C4826AFB
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740322734; cv=none; b=q6MIhLEpcSjILp8s91dc6dI26vsSp1zaZJyPLxE21aJAXYqTCOKM/W0v9kCX5w13IidniUzOgCe/8EkgmqCnJZHr3NR3nDIzCgOjUAbYAecZFsG988eLn0IHjfqhEnRFHlPeqbse7nwt37iUIudyqSXTDGhll0ksbtUqYxVK2dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740322734; c=relaxed/simple;
	bh=alNJLXcM550nsgSSmH/4s87kn2MxJylcZWkxhEQpC60=;
	h=To:Subject:From:Message-Id:Date; b=i7mqJh/z0u4ZeOPDfkUAcTi8nrTZ5rQKnqMnm+LFnwODZb9g29xhBlU3woTVJraUdvqJmQnjMUPFD0MTgpmN9Ub44FIXz2m7X2BlE17YyBV7+Vf8fNXuHiic1vH8HrFMB6xdo3C+qMcxif4imIsoWKbTMYm7EV+jhDc5SUQKPAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dU6hwnp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dU6hwnp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B89C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740322733;
	bh=alNJLXcM550nsgSSmH/4s87kn2MxJylcZWkxhEQpC60=;
	h=To:Subject:From:Date:From;
	b=dU6hwnp3BudCTiX3uN97vT1KkVNxduVdDSPYMc71lG9NofVWdN2q8xq8zofow/14N
	 bBZsxAmPJfrUwc59ETyKETy1i8DDBv2LJvCoUSBXa5s5JpxwO2rzT/nrV575Zvr2Az
	 MwyAScAxgKH0F4CBEFeqO661Q3dvE7f+935Oxcf23LbrtsmrzESepC/w2gOJ+AXhDP
	 xfM2KFxMK+5A2AiMGXUKtSnHWtG8HzJHQsA6VGjd8mIdYXy9IY+X+BrgVhbj/CdE4k
	 iTeRwgITajPEwwSiPWyXeI+zg4jsyiaVqOjFOrtw/xYekZg3X5KKPyI5gCa33EJXep
	 Poc36osCNHjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E7C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032273360.29300.17709100672770871063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b43270b0f8631d4fdcb403bca380a722d17ed949998505d55f381fd4c616d6
Date: Sun, 23 Feb 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740322733

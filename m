Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200C72D46CA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755355794; cv=none; b=WKVZSyB+a5/7AnWpjF8KN4eqZorQB9htlya3zHnWBqvMOE+VA/+Hgq/WopOy4Cc3tb6JqbFmwJdtFrLBtm9pybGJdGueNFqq2YCM1o2BnS5IIG3eb1S+tKS08F5BuphEgElaCexFdiZHbr36vrJ2N9F0lFPEer6J/BspnCwkb7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755355794; c=relaxed/simple;
	bh=Y0Af6kEHVoU6VtD0C4iF4enliDIfaaOuEMCNZcfg8CI=;
	h=To:Subject:From:Message-Id:Date; b=QyBor+scQla9Tp0V1CuPEnRsiHWiN9fKSd1FXYfUvMZm/2oq1BoTrYXSKXLQzYU+yJYMI6h3AOmVUbMvBUegMGXRDexTBzHmOSVM7+vIz3Ex0ywoYn8e+azriq2Kv1AwBHVxVIRlbaJqKnvk9dakkcOwswAudaWqH6ERguIPLN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp+U/fWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp+U/fWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2505C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755355793;
	bh=Y0Af6kEHVoU6VtD0C4iF4enliDIfaaOuEMCNZcfg8CI=;
	h=To:Subject:From:Date:From;
	b=Wp+U/fWowp4OLh3FwJbsXONONX9emyLeezPKXXi5YspQ5DQoKmTHqWmY2nn1Q4MIO
	 gkheoOhdRCnvna5wAzjo/2ZIrnfZL8lypmWDrcco56XiLFicF7QbPZRr5oroHy+r3f
	 0ho3Ut4Nm1ytf2hKNNSml5XBN3zfR2Dc17nx/ydFQx0TtS8NV8woMazF5VeM/HL2yM
	 XURtIZk1Gx6/656QYddi6tlhoi1EgjPswgp6pEWaIJeYdO7RbXW3Y7pocHioFXtuts
	 pkf12VbI7PVrhAftI/kEx4Vp4511tw3uQ4IVhu3aVj6y98rlezrWttSTzDFsWaMMy5
	 HiiMdKiIZxlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921FDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535579357.7597.9104377269410231557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dac25deb90e6ae5fcdad4141fe6b63beb4a392eb37f3de60dbea9fcb6787618
Date: Sat, 16 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755355793

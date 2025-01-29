Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7CB14F6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738130754; cv=none; b=FwanHE/4rlr2Kvyjfj3JpPmTyo6lIKmzylO+rtIq5EKwxjQv6g5GTDISnkzPJDjuoqHlx9bsb5t90t3+YqTd3A2qS5Koo/4ZjwovfmXGyduDbyqduui/LGS9VpkKG2xKn3mrhl/DTgVmPYOHeQNt2373e49w4n8xP8W/FrNqULk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738130754; c=relaxed/simple;
	bh=FNkpbfhBHRcmMAbOyBgBBpzYQs8W1DSSrTzB6FbBDGo=;
	h=To:Subject:From:Message-Id:Date; b=GDp/ng8crSX47cLfuIPA+lFK8dXTPGpVA+06IMQz4Lvvx/pFh7ul3OQl6WUXy4ye8PfWHg9DdztV0zl/i1CSfofJ4wuOhVW1WpMgERtjDvu0PMEOZtiwTpWm+JuXcVDElXk0o5S0k2UrlmUSi1ezsVR132Nstpiu2AUuFPiAsaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg2/jsGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg2/jsGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB0EC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738130753;
	bh=FNkpbfhBHRcmMAbOyBgBBpzYQs8W1DSSrTzB6FbBDGo=;
	h=To:Subject:From:Date:From;
	b=Gg2/jsGnqfclT+ofaPp2C329eUf2c2O2xpzAQTk0A1B4VgQy1RVHst7KXqB6PB0tS
	 Dc/8aPmeIC2KOhl5uQ4VsqEcIHa4A1pgvEEtzUH64+P1j5AC79puxMO9BruUwU051u
	 ljverNXXZNSny00pypjyDbot245hS+dNNaZ6Zw1sgRkYZTnk8z5DHGG+usjHlRDw9N
	 4Kw/4vJe6n7FQNTHPcykswoeYX4Oi1hxrtT2qhQJyr7GExpb/8I7ELsrypdXx11oiC
	 t/lmxBZV38MCDCm+uIsonaVsfN/8gXFgneTlrK0eZ1WpWDoM/68ozPGZ3xSCfL1GKg
	 Df22hSE+/wPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93481C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813075359.18354.3075865680428829127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3951d187831884743d53d451e26a8416b228c123b403d0921c62ac962904a960
Date: Wed, 29 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738130753

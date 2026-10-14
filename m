Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AE72FFF89
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791941434; cv=none; b=QnEecObkmSL7qfm2z2/Ah5Bs9O3QDWb3xbbSCjMRM39K15rPv55GXWaslFb+FhJQtc3eJOv2Zp2vt3AXyn8WVWXkWpbvDHCWFbGir0fx6/xb+4EL68/3Osajch2OlqlOkp8/rUiPilCZqIZ/9md50FibotHc/9edYdcERJK+jsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791941434; c=relaxed/simple;
	bh=S5LLN7DhaKr4BB+eUWD2a8aeT1ksme8jDX+Hy+mtlPo=;
	h=To:Subject:From:Message-Id:Date; b=u6EBa6C/CXgjTc6+t8DU4VGOmr/YGfkHg8FuGV6qmfPlSFSy6IJ9kvw0ph+poTjFZKqklt0lo1iX0SWEB1UjBg/YjLIkBFt5UXim6ya8dMQ0+Y5V9C5Udo34jA6QsRXu9ZXg8UjpIrTCy8aMTJdGwwjRdtGeXoGgJl7PoZGLPtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT6T1E0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT6T1E0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A27C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791941433;
	bh=S5LLN7DhaKr4BB+eUWD2a8aeT1ksme8jDX+Hy+mtlPo=;
	h=To:Subject:From:Date:From;
	b=rT6T1E0hLXdsfQAmHDRNMRQhB3bqHRiBQTu+Y5iap2bIV8TdwjTJI22tS+4gZON9K
	 BEgD+EVKjXXa/QI7CFqJw+Ca8zlUU+RZ98nlrXGS/z8PKg793q4sjRXP/rrRjaeQcz
	 tRloJB0/JxH2wB3O6/wYlAn0wmhjZ1IIP4RiDflrlT4OMvI5Vg+S3MkoqREHnx8rT3
	 IgHKZKt+v00OdOhXI6NeFwsBlgRu+mJ/dzMXukxwGKxLV0TcjDd15XrRD6387hHjpA
	 TU6NUbNNzum9z0KvGcT1TEJu/lIw2NF/tPb3HhXqd0MdToSyJDBpD48rvmpTIUj8xD
	 jP1pgGaORdYkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC14CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194143370.13909.5621348741034885409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6389618be859016d3a18033430e18eaf202fc4feae50bb1f914a0c002a181504
Date: Wed, 14 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791941433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2269732D7FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775049934; cv=none; b=AToZ3UnX7DjVzKSHS71dlBZrj1YnOG7zKhaqnNsH8yia0noAk6Ej+uMtFG/raGMd9lbQldsgPUCW3XwYGThMygTqHjE6IsaE7/f4DH2lIurMwR9Pl9F1KKz+ge4ocj0wg/C82o0aU01zBWaYsBR9EUUpr9Jkl+ML5Q+eebkzEnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775049934; c=relaxed/simple;
	bh=SAj7eHXoF9KpV585BRs62dxVU+OyZvCfS/zZBSTDpCE=;
	h=To:Subject:From:Message-Id:Date; b=lCu0PPMXrWQco+v1XctgzatYpORnBYun2y+k+5mgXShq9KWbZuSxS7qM0kBd9KRCegro2xrwL28baBTWb9nCytDeCSfpiGcoACGDbwmor9vPvMYMkf0M/vD7UZq5BuVVwSdAxcgTqP5Q9v09xcSuSYoQU4bHTfr+QdT5eULO8BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PggmI23t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PggmI23t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C95C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775049933;
	bh=SAj7eHXoF9KpV585BRs62dxVU+OyZvCfS/zZBSTDpCE=;
	h=To:Subject:From:Date:From;
	b=PggmI23tplHlELlThaZqEqlbgTl6wu3qT9XwtJWsuf3GUZQrAJqt+kDEMANmNakvq
	 ZF5nsYcxhn2/2JIf2nlR0acTJC2Op7Kd/zkABzHPID/2yQGgHYf7H5Isgp4QGc4hgF
	 1dp8GtUfEcsYhu3wD4AHzuhE8Pz0a+qFkxNut8EpWOl8nIRfhy+N654g4PWkJAEsvP
	 c8gduNMO8qF81BtqHbOV6aFWkgENEjHhINeKU0q80PxfTj7s9GIVOWblMdTZq1IK/v
	 BC9eLDK1bUiTbowIftSw8jRop0tulM1L4ZhnPSISOdVFKcBQ1H2N9Xy7TQr/gYZiQt
	 wgkpVeopX3j8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07B4D3517D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504993371.18774.15291505183821205689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2f4f92e2c17c211c2ea5be60e8e576269a7275aabed295a3c84ec332992642
Date: Wed, 01 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775049933

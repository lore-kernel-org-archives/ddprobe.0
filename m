Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449FC331203
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784967034; cv=none; b=j1p3hXyYSM15+EoRfblicPtWyT1GvZzIfxG63kOBfIv3XmaIsfnZaSAdNPvWvxS6Zc7+x8vKV38v3PdkKiOLslv0qd/tJWXgkwTYroPOp9FhKRqjiB9b6/zt3rGnxM8c+0b+m/sGVIlBOG2o4I30dXzfcC5t/OEjFuTJuLtqYDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784967034; c=relaxed/simple;
	bh=zeBstg8+W9GpXZOJe6v5fV87RhMOOoz4+hm6mQ9tSjM=;
	h=To:Subject:From:Message-Id:Date; b=OeJ+q2CHaWDd8xRBb1FM/lRdlO/c2AAjMhiI/ch9mP3s2aKf3hhp/X55mGdU/wvp6eGlK1anjFs0tfOGvU2MZv+S25srWkNTgwYGYfote05DOhqFOLVQ/ucIH3ikwUIoW4exphw1TMqCLp8OvELJ1MsvR9v4evThWuVwqA3tzq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAmpYstM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAmpYstM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2C1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784967033;
	bh=zeBstg8+W9GpXZOJe6v5fV87RhMOOoz4+hm6mQ9tSjM=;
	h=To:Subject:From:Date:From;
	b=pAmpYstMe/1YbqzsKr+2j7w1S3s2HWpR41eHho8ku6c9BXIft2XoinNbKWYsEfEfD
	 VvRiltD4tqaFU1UK4c9PqbOWwX4Gq0dMXtbi3Ba55VLtvP7tmiexhTXkEuopUrzMYu
	 uyhmHljQKEvuHEUqX8UUy0Mu0Y19ftHbqSFktj+V1ifBvRhoQitQ5B2Crh3oHDDMRV
	 FS0ZMH09+tvAOjz7JLbNJVGuevX/WMxsJeaTL7Me5OYNtwrMUoawfCD6nGTBNK2fPc
	 nVO+xlq2ZbdetmiOpWar4/+M/IN4IQxvndxj7j0vUjw0E2g7jhouOabNVnk0E2vkCA
	 IM2Ruz1l0xEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9771C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496703368.821.876664377475035673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc8ecdff42c029ce2d4857117fb05556295b0e8689f1dbf251ffb55fbc436e2
Date: Sat, 25 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784967033

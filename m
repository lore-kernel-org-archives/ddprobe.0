Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAC51AAA1B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753247394; cv=none; b=Dh33D3WqL/0DsSb0LtoY4fHw00PY+DtUuDdp7VTnP1K3LSB+hI6UiyqCI30S0rG8bwTox0LVIjw3/ew56TJsMwlEGAz4awZJDmvwH5Gaw04aQPSPj/f563ISsadqupc4wR1l4IJJbzA1xcUzlLaXzYcEwSWuY3UIsUF63hDKk6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753247394; c=relaxed/simple;
	bh=mRsMWvJytqq8QY4vnHWRELUi0Be3z+ICw5mmpFQZzs4=;
	h=To:Subject:From:Message-Id:Date; b=nft3vga5ACmYowJbUbdEon+qBfBwieDsFCF7TMEhZuTARm0w7svLYwabz+bdXdSHuRwx/aeZKCxlBJG3nvZHy54AYR3aryTz37X04dKjw9TTjMIBcvBYT+kolDgx0CSTvzHHHfQUs4rZJI47mv8r1AJuE1bi7e3pj8vSsISXBas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lhj0ceCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lhj0ceCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D7FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753247393;
	bh=mRsMWvJytqq8QY4vnHWRELUi0Be3z+ICw5mmpFQZzs4=;
	h=To:Subject:From:Date:From;
	b=Lhj0ceCoVAcBy5EfKoe+tXcIcgEj61h0f/pEamMt+GH/r9qcj080pTTIxu8ZMmUcX
	 XH+MAnHjgjHQScepEG29AKa+izEAIDrJEwTUfJhMQLJGrcGoYUadPwENLR92Hki3YN
	 c8AslYipFPH5wWl09ARUd6MqRYsfuaSQ/cVQ7vj78MmdWzwy/RvNYntvOVI08+DTP2
	 dqIbksyrP9gd3zqMKD1QZTsJG9PvlGyLKaLpwe7SlhGlO1fAYX06pcNQsKJSUw4VzD
	 BMdqkG088eLOK1PNC3mYD8QbfMKxAEvB5Q1IGJVeyaolzIgwJx7kgH2Qe+avID9Rk2
	 CNWJp72iTDuow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E1CC83F34
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324739358.10020.2388865303638876901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6bbdb2841c38d54cd38a07fc540dce2a866d4cc5381bbca8d7258d91f74d52
Date: Wed, 23 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753247393

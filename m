Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6A03C7E17
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783320515; cv=none; b=lVT3/xi8UsnoGFZBqFkC/JQ6FNj5zjo0bjMxHDOI/blBGy7ZW2Ec+CMD9zpl33WcQA8AeMqZmYFXz7+iXB69NMf+WyotG6sv4snfxX1KSD/f/9loE5NIGPY5bC87Voy4Wt6gwaBljYJ6cn4QJln+AKv+NIz14btuVR7hPdOozKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783320515; c=relaxed/simple;
	bh=grmwZ93BEAqoJawunzx9zEPRgyZX3qsWudBfccMzUWk=;
	h=To:Subject:From:Message-Id:Date; b=adX0PoVDhRVqLdsvxHAsGzEBZyR0FgnAQldcB9vPGh3dNt7piv+hIo9aPMRFsDhCpRGQcazgLWH8NzsG0Zwp58GFHRAk09Y0fIHdZtnI1r5AY65QPZhZlAgIno3Yg6spmFu8q0tu4r6cKqviqN6/xunsuIyWTzX4MED4e1vUDck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lElop6QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lElop6QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB458C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783320513;
	bh=grmwZ93BEAqoJawunzx9zEPRgyZX3qsWudBfccMzUWk=;
	h=To:Subject:From:Date:From;
	b=lElop6QNvQoAViyMxgwwqnWG/nipjilxUTX53BJs0RTFS3ccLJozU0B/eV/4T4c0S
	 WJyU42L8+rtqs+B5iHD/nsk3KqZryM0IUP9HR2Sg4EDLJDsL9yfK6ONvVjvAYQPdlS
	 1df8umMXU1NalX3PLl3R5nho0M6QFMwRAdrDgzcKZmd+dVqvT05w6H6g/J0mT7rJW8
	 l+1cRsB/mUt1TcvJlIZGijrv/osMIq76dExn684DKEXGUuX9kNzQ/GS5D2UT07ZItw
	 ylqgzyJvn3C1zfMxkx2xvmjMNHBiPQ5OWBQpffPo3x5hhh4e+V/CaSPM4v7CnjBypa
	 oC7+Lfh6+X9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332051368.19805.13204176046526177359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3887c567b69e3b7d95659544d7ed222555561fb35f241a6dccf222504c9f80
Date: Mon, 06 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783320513

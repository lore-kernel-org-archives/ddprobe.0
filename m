Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF97350A0D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761758994; cv=none; b=M1qSASo6dp0oCZ1GDw9cjBZTKCI7kY6PYkiXiMU8+K5MvMD8a9uoc74t6cp1hll1dZ0MuTxZpJeqO98qQ5Wj1OxDFOGE4mtdT5VsjyEZMnpcZ9jrK3dhbJW0FGHrhvim+chZxvargW77PpyFpUGytwrXPXdAjFZ/ILWN6h1xOT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761758994; c=relaxed/simple;
	bh=keVH2SwCATNgqC+aQVKavMjviyAb+fRwC0cc49idPgM=;
	h=To:Subject:From:Message-Id:Date; b=IbzohFtpD1JXqY0EFa66UDI6FQIWzstG+c5cMFLoqpCD5Ce4vZT8CaFij9DL+2ihu2r+cWSzAOTjrUmHf1GGkD0ffSbj5ge42m427xqx2pEtzxiok2CqJWIht7dyny+oW4YHiT/4gTMl/ghXeGsIUNDGEo4QMcgxilnZV5+28mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNjLX+z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNjLX+z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E079C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761758993;
	bh=keVH2SwCATNgqC+aQVKavMjviyAb+fRwC0cc49idPgM=;
	h=To:Subject:From:Date:From;
	b=qNjLX+z+Cmj9oqR1t0I2xHG0tlFMBlOO1fvuAbVz+VmH/yWVehpsbemkQYtarRiVj
	 LsNG8pIEIRpS/7QM9Js/W4l8irR0WLCuJf3YVlSo/pJD3YQMY1/HfUmdyJMES48u61
	 iztcVbpX5mh3zuXBfVCCLxiomCZhGeFLSdAlSJBwyr/K4d4ErTlZ7TM3aHAPehrnRZ
	 qD73bzDulYCCl/8g9LFfJb+Nf4db3lm5kK2wws2P0dRJRWd9do1ysXf3o1eQNV3Ge2
	 lLNwaTvlqGOIR/y7cvIFINfHyEJlPAZvsbx5BoAlIXiZpJciJXDvrpX8LGcFckuTBz
	 9YsG982KcHetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96BCCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175899357.16847.17085469663444119280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ac198c3de5ed5a79c749e2c80b3d797d30ccfedb5095b0189d424a34da4840
Date: Wed, 29 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761758993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D9D14D716
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715077943; cv=none; b=S1eEoYKZCMymUInGv8li9BWy44kvktxhn1SUarXAmeTok0HmDn5qTxMYlCBmCph+NNJftaS8bDQ+p/nPnVFs1yuIgx5NXOzXcbiY8lZG22pu+hoGA48qkgpgOKiRAFeRUumN0szk0Dwo/gXKYCLCa2q+KGRSzm2T27N8j1eoFq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715077943; c=relaxed/simple;
	bh=mUxI7JQALyuWjrI9LVqMRhl0gJ5nwxFz1ld2EI67LT8=;
	h=To:Subject:From:Message-Id:Date; b=WmAFdHyCd8M3xaaL0YliGm8/o6qZ+qKzjxrDOhXsO609vZU8//FqkmR39+UiadbDtHfmlwQkG6JamBImuGI3dYjSa8o1elKGWyc+8hIbpUk0duO0pfvya9w0NmTuUDqQgXMJpVfw88lsUdGqEoeV/Y7vtLPMlQBllrZHnp/ukH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p79txyEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p79txyEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA14AC4AF67
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715077942;
	bh=mUxI7JQALyuWjrI9LVqMRhl0gJ5nwxFz1ld2EI67LT8=;
	h=To:Subject:From:Date:From;
	b=p79txyEc81G5GjnCXN/rRb2VaU7F8rfZihkUiJca+oaTODM8itMreNFQpEfB52uCN
	 4hQ/R8Pc0BlkwawD0mzV8mGpLAn8CtBD5tXgPhnoe2SKPFzqPs/bV0/1G0wx3HKh25
	 ELbUzap+POI0KPNRfcmoXiHWe+5012QAu08TEaTnQus1C19Rifmk76jZEvTnjyf8n+
	 /1hC9tuApHcO4cp8fcfFdwsfLnhU/vcghwjc10nyX7pl+2/wn+MUx/U098hBhGzZGI
	 UvBwcjoQzwcoD0pM2KE5QSgisNKBh9d14WxXvDh6f0bZlMrRvVdNHCzyMicWdF0KHQ
	 hmwCWMv0pUM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B1C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507794278.13057.7699148734870800120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1d9cfed2ad127e14a9ac878f5c788bfd1600a509e23aa49dd5c3c742cbbcdb
Date: Tue, 07 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715077942

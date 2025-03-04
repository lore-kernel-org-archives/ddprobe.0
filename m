Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6591F181F
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741063134; cv=none; b=lHkDhwGTad9XyQJCpXSRNDI8hmU1ENTNBGrUfyy/VRNkMtz6G5fVzESr7l0e2FWb+chkNiTGTwlHxJtbnz+nAIM0Em6/O4sJh6R0rPA64DZ+O8rWxZTYfTBaRvADJlLqVgWmN5q0WYL2+HMTEW37ulPm1XJezBkMlcdTU7/9fBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741063134; c=relaxed/simple;
	bh=9L5MAtN+YdE3ZlOBZL8DkP0QCSWgOpXGYvOiMcaC5mI=;
	h=To:Subject:From:Message-Id:Date; b=unFj/32GhaI/397CTpdngdEeXwztQImhgGgPgHzdu70SrewWw/pjOe17kqiRL+q7NR/bvusFfXkJ2ufUqzQsN88ip+KyUM1YbKKWH+WBSF6y0WYdC/gFo42dnHxP4oAEtIqbtcKB12DgwzGuT3BfclOGSjFc+RVGhcnmqJSdn5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD49A5HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD49A5HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A55C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741063133;
	bh=9L5MAtN+YdE3ZlOBZL8DkP0QCSWgOpXGYvOiMcaC5mI=;
	h=To:Subject:From:Date:From;
	b=iD49A5HEIrnwTXwMdEKlpr3tnRWAikxIGr43Icioa70+a/NYRkQfOKXGvznNXcOWU
	 EtjycCZ82pnuWuNGxteNVYkNXZfD3Q7/e1FZTEAwlC0UtfcBLy7MX/YhHGZrIwmgAH
	 HRPgZXbDSL7Pr+P1V+fatkOv8gjk9Nfc1HzqvTKmxM8YlPI2+meExYYBmSOd2SY75q
	 lOUQ0mx4GRNjFFfdQk4PPDkTBHw79e7wJnDybLRl9IcQ1DvKSUzeDcYoVtFiJCPoSe
	 H3Tj944erKwVpJ5ziET8LjhgIVtuGg1Jjq/hGEXwzI4gFV2qJ4ZjrDbB7K/zkzG0Fn
	 z6sjcWKsd9VBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A822C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106313362.17073.11667285990239679137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f47511cf6fe644d0166372b6de438c2a775b3db0a6cc35efb066a653e342b2
Date: Tue, 04 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741063133

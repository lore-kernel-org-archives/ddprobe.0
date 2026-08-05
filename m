Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F8F38A73F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785901834; cv=none; b=kK1EWwya3Rjyah0WN/S/NXDX6cYdSJ1zeRPHf9sPS4txWK7WSNXSz7WLBi4rq+vxNIGXoHXQgORTBOz9J7dBg2/HQkRGQ1k25qcGlVs1ifR6lZNcNKkjwDMLR189eWr0gVZuJ2yD8Muj9YLDZQ2MAGz8mxp0yH6iOxjB0U9wxFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785901834; c=relaxed/simple;
	bh=KugmI/vQbVR4hjdyAW5LaPH08sAc/Sq7rn9gZ/zzvxE=;
	h=To:Subject:From:Message-Id:Date; b=qAMfJpb853I2lqBifOmbA6R2UugVsMQq0jffM6qJxDgoecZvWC56PC7pnqooibWS3YX7cUQH7R62unUyGgDD/WlB53k8xwUrSk1ohpoTWYYVRVb6MolPkwU0lWpENTO0iUpELbDmgfa0nPzFSlSErmgtGT6WO+dzXnb5o9Okio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk4TVfi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk4TVfi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D319AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785901833;
	bh=KugmI/vQbVR4hjdyAW5LaPH08sAc/Sq7rn9gZ/zzvxE=;
	h=To:Subject:From:Date:From;
	b=Bk4TVfi7h6If/ErLM2ZaUxeVlJ2uzbyiNYoLff3/pQfSeij8ogEbHG2rdhQg9sYtf
	 XpovUcA7ZlvfHh4ZJu3bxbevXCpNM7sqmJuQjbme9puncJPruWYJef2DxRae0HILCd
	 EJ0rrfc4VFQ5jZm8DW3mjFkCTp+IpfXkXoSODDwJ9Ia1PM0dS8//zll9C1L7W4N1cC
	 6uHwdeJvXx8k0yrxn2EJgM7nkGlCQ3lEgGmzvTwGV54yvFMpsJ0HJBoPszp3FsG4En
	 Qb66lkY2n+J9jR4ZNLkqqmChvIR+XBQQzca5mllbsqi5AIEu82JBIutT5gyOko7NYY
	 LMOYoUXBxobZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74FC55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590183370.6891.299004271020907379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421fed6abb7f3252632badd4f35738c42c7137175ae640da83872ac7e5be2811
Date: Wed, 05 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785901833

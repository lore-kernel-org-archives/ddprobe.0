Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DA8F9E4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726602354; cv=none; b=FjvvwITdPqPODW+oYoAdrcsvNJtAzl38lkzFSx+O8uS0LaF1Er1iLVTV26JYQ0Olrc06BIM3le+4gAtF97plovt6vURIHwc/4OsG/8yphXSyP1BiBL1EA2MMtqH2piBTd9crCFcbWRIroRHuWIEBSAjKwEEtG8eR3vSpL4Xu1No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726602354; c=relaxed/simple;
	bh=qUuXMGsROwFj+X/CwUWqjxbb2WG9ih5TrlEoRW0ggj4=;
	h=To:Subject:From:Message-Id:Date; b=mQjPSeJ2UZLK9Cj/Tu5euYbI2MZAwlSXtQw6FoaEMHSjt+oyf7apk3D4WvxL9GanQEkG9w7F8MN5F/5PqLb1QB4r1lvFYyK4uzlhU1uXzOk0vVHr8nHYxBf6RVuosobz2l/JROLwQegiPKnw8SarEWL8pgiw9e3FZoqk53xOnWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpSNJgdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpSNJgdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE2AC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726602353;
	bh=qUuXMGsROwFj+X/CwUWqjxbb2WG9ih5TrlEoRW0ggj4=;
	h=To:Subject:From:Date:From;
	b=UpSNJgdUzTDe2fzven22BLveiN72fqodUlG3jMbEAXd4Hy0xY9XXRvTErPK8o+kkw
	 8LUnAP6SJQct19GaRb2ZA+NgOFZ8WHK68dYfzhz5fAZVN22SIGl5g4ueyLr0V+GXi/
	 A4hiejQSAurR3tsimCaJKKDMAyW193w3kmhnqUrXH/8yoj606zFcTjHnG2bo37sNn3
	 gDBdDiq1FWp1xX9sVFrh+iWpopcmqu56ZWKrNiKNHaLKQX9dQqBblDXyRN7vmGOqMD
	 kHCU1i6jdWYUKbTBkpf9jI18lflEa6YLAWhjfl4XJFtvZcAoYIY+99j4ij5urYOv+u
	 0uzuf/iN5276w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D5FCAC599
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660235361.29422.14885714342142955953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057b281c84ff004345dd2ac015857cc61dc8e256c7426af9091c00b5ee5c172a
Date: Tue, 17 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726602353

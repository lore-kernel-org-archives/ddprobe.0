Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADBC13957E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780540474; cv=none; b=BnpYeQR7d5JV73tJ5PxBFySwLs1QjCe/ec8DIUGSmHQZoKUaYodFokufXU/IJiGwN4+IdCyV51zSXJSuHM/o92DU/tL0kKyThVH/KiwdMn7RgCtorLLTJ0lvVzR4K9jCmTbryuJmNARsPGRe4J/gibZpX+vGBx4QHdBtLENIfl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780540474; c=relaxed/simple;
	bh=PuYfXdsYFB3VDyRvtP8/9F6WZCutspbqUIbNe1e7ij0=;
	h=To:Subject:From:Message-Id:Date; b=lYBkg6s8MM/dGYzBT0o1AFGdwxD5nJaVOGjBSnGWOZ1EfoVYHetnrm77b/+rkA6zizkjbkYCb3tiZnzKqwVR+Ihux0jEhPOipauw2pv1TpQzE06BxJUsiKRDedgEn/uPIyubxXxwurTcXrqvwzdLIUoxejVx5iuZ9A5jJ9VOjJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge+hSK/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge+hSK/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E09C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780540473;
	bh=PuYfXdsYFB3VDyRvtP8/9F6WZCutspbqUIbNe1e7ij0=;
	h=To:Subject:From:Date:From;
	b=ge+hSK/gSX2LefnmcQvBnzoTgIkraGgA2BPwLDhezCOD+owqOxe+pkNYZs5b5tNMQ
	 EXxf3WC/WJwINHwPccZV5K5rSSfT0HgDZ2i9eDMFELj5OPHoy5T2GOlh6Jwk74IuaC
	 hBBwlDp4VpECx4kiXqfkcpvJPBSZzyg7tsZ2WACMkin6HLUtTWSF4Yu5bhNwm2il7o
	 E+DB+i8s4w4Vh965JxThlUFeDd88mSWac2R6igXHcS+doe4gB8vn6iXPwKqNQrcwSK
	 95vEdDEGiygJOWr8aQx9T/QBI6utC0KgHWWJZLN+ruZeCp8tddEg8/ofs/4ZtgCjaK
	 7aJUbj4Pp9QsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE2CD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054047368.32607.2315089455726444497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b7d2a259ef5840e994e850964149226e185fee1dcde231d340c148a2279896
Date: Thu, 04 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780540473

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AF81C8FBA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753468194; cv=none; b=UrmDKXMNxS9ATUwHTtmkr+wCc4vLCJ2zbVEjgUCa6F334S1J9vpjQg6R++SihfOVeMWwWPhrXcTZd6F9/xjoRSGiMKhlLDgC38U7Z/M5zOHFj9TNTuQ8LkUzTVUWroV8Un8l4IgCX9wsfOxDUfpe/+4nQNUVoVqmVe3e2Q+x/8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753468194; c=relaxed/simple;
	bh=fEa9X2QwwKDRbNMPDq8OBJcdb1HzGs1qXZPpYHf/IpU=;
	h=To:Subject:From:Message-Id:Date; b=qf9ggcGJjaHGE2IBOENnedtuHueVD8+FI7LRUoD+x+JKVRp98FLTke4ZORtCQHUlJ+Mx541cqRXN1kp9dg6Qe1InwYekW71aqK3fGA24mCY/uDViAXq7blLjjAwkILlegJuUEanKnKO0LfqL48c4B0Nl9/BqjvjmRTNEkk4XfZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWNCBTIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWNCBTIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2909C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753468193;
	bh=fEa9X2QwwKDRbNMPDq8OBJcdb1HzGs1qXZPpYHf/IpU=;
	h=To:Subject:From:Date:From;
	b=iWNCBTIuTnjmZyFO6cvUyJxJRSLVkDqweINNTRxhrFUjdSDGw12xhXy+4wXYHGDun
	 T5hEMKQ4WigZG47SbaOM/QjFj6q7ZhGE7wtRRfoH9Zad6tPfEGf+9J4eKG5naUYBWZ
	 UWs+dh+j4kpETxNzCNCcwfeZ+Ywz93EcXZlKgtPgCM24CKWklnbHyqx1tlfE+jex+r
	 WGJqvPZn6Fz+5HWHYRcfmt0Ag/IcnEGY21kCJqLeCrrQm8e4dtFLHdaWa1DMiv4GPN
	 zPA3IGwBgrTMTcklg7jyqO+hbQdvzHsFtFAJxbRqd7XJ72VvBBswEUjjuIpQtCZpQe
	 epp/j0z8oYwDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92987C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346819358.15657.6667661245708994864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747315af17453b93a5af6c45f368de33a40ac469f028b37e3190ec6395b10e56
Date: Fri, 25 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753468193

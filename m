Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5514414900B
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740896934; cv=none; b=m60aogUgBaKti9UI7aVgSWkiSseGCoH6wf1sS5rQjQ4K+GqtQVtE+Bfy5oRSp6RHVi2+LIW6mReBENfRHXm4KA5u9tOSHz0eAN0ZmBcVh7E+SOxt2ofGMT9e619uMjSP4Jl0I/nfGQrwF3CZbEq5K3UvnaFLXlTTgt6AlMnbmiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740896934; c=relaxed/simple;
	bh=PClWSiRMaPCzEeX+1ciDheA5WI7sNNqIqdRoPBhwkmk=;
	h=To:Subject:From:Message-Id:Date; b=lwyAK2t4ya13cjyrD6U33JDF0ekm+DjY5QjVKrTc5cpAlb1ySZNZ9hA3uCb2w9uU8msQ3Myv91sZqXs5Act80U91OocE2ShCmM3OUvHtJxkqB1vCHbx7FT4ODejgO9LFQVMUVdPVRnLTRSXTrER2UqL0UAukprURTjF6dbCGHzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvIE5aCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvIE5aCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E7EC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740896933;
	bh=PClWSiRMaPCzEeX+1ciDheA5WI7sNNqIqdRoPBhwkmk=;
	h=To:Subject:From:Date:From;
	b=LvIE5aCxk0pU0ufSBqYRjla5u4TodVPkmB0DNThqzaQa+y0zIMZ5vPVQxln+nuBEC
	 O/BSjT37fkL9tD5GTQlsjNR89RKp+ICTyH18S8z3Nqvyahfr89vqaquINEtREW/RXV
	 nzBbuHsZRidcoyVrOhFmNqiMxCaxDoMtVRDhldWB5ta5UHkGyZyM4dRnVgsH+OcsF+
	 fQ/+ms2O9JDTiH2xiKp7LC8CV6NE478YpdXHCfn1cLLB8CERWQ0ropW4usyrX83ccp
	 pb7YaaQR8qrdOUFMi6VpgUK5aHUlhP9s16kTyUdZCuVZVePJUwn8OYX7Yglv+4su4a
	 bpMgrjjx5p06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97021C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089693359.9897.9222728083217896554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160b9204012ec7bea9f7eda05baa000e5bbd4d7ed6a1e676d6985782d22bb8fe
Date: Sun, 02 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740896933

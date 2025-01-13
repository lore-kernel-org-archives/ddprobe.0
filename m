Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C63A136353
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736795154; cv=none; b=JK+aLeojF8Efi+aYM5k1CsfX+3GdPA9fe0c+UWH7u9oVjzdQ4EzesPu9SFcFCC9lShBLXqypoxSvjkCt8YQYSKUspyST3e0A2JY6fKjKYLso8zZevmUi6UUNYzITPlDHwJPip91RBPgFmZikjKtlDrZKOYeM26DM5z6BXqnYKhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736795154; c=relaxed/simple;
	bh=zhyVEBtxU2KXsS3MHV7KWNK44yk3jbig59X+Lb+7yto=;
	h=To:Subject:From:Message-Id:Date; b=A06hU2fz5HqI7ndpzvLZVrBfkO8/M+koOoEiWsaMwA2UEvGMdBfbJTGed8IDDkE0jr6tDarDxjvXbVN39VZy8Ds9v+J9SM4oH6Yu+y3iQsd5rQgIFhavGeGVC1v9HDicKgzXb6oMO52Kf1UOg/wxLNsPG63i3L26jJm0/IUrEC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0YHaM2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0YHaM2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF783C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736795153;
	bh=zhyVEBtxU2KXsS3MHV7KWNK44yk3jbig59X+Lb+7yto=;
	h=To:Subject:From:Date:From;
	b=r0YHaM2gU44JCiF8QPUqaA2K97r59JZylqdhIK/kghJcYMQytgp1YWFXvr5lrfHgh
	 s1Bgpcj6hP84iAs361yXjJo+ktIY69JFb65aDGVGBJn94gXVsrIhEwcTxcxr0LzFhv
	 /eRpVrB/5+KT4K0Yc9ALyXcjqNSlaa6ezIuZm+BxfZOzPsJmWaqHUX70QdYFGc7cJ/
	 Hr3WAOhThbozxKEwx86GGT03pRS10PX8Rn0HOfnuer0eqtQdlvXP6o8Z62MaUDUMAU
	 ah9N0p6iXddZB939JNW1HqSZ7+EJEhJp9y9t8patNlCUheHNuXhNo97UZy12DpGWlw
	 gt8/gVYYCXNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B2C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679515362.11097.11153987735328425919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8da3ae973449e6a59062138f7a0b085326be9c6cbd4e8d1eb8a1db44897363
Date: Mon, 13 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736795153

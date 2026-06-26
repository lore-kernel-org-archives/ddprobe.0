Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FFC33BBBA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782511114; cv=none; b=nOhQgUd4JtmrYDax9WRMuSwyVlFpPyfDdyHN5HEJ/1I2+gu3Hfri7TOGP3q6PvGA1eVa1P2Rzpum4a1iGFeAY9x70VreJhqFIDoI4O8la15ToJJBIxZZUlYVzRIgOiHVH3/xoVs8/RFK+PUJ5vjXb1nXoBoElXGwG9d2O3ysLpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782511114; c=relaxed/simple;
	bh=cKbw3mvNO2U5bJrKTbq4wvCquSaNunPnnUfkjzO16yk=;
	h=To:Subject:From:Message-Id:Date; b=YXHFtw6KdEBegG/flwivAjCnJ6RR6rPwWmEMbZDREFCzqefiyoTMmDr7iL0/xykmnrsto5MNYaVgBPpq7Gt2pnwek/cphw//NjOYtKsIy4oHjXeGaHd50wKTRdDbjjWB3XY34lBAWYNWq/klAKtmW/57htfNK4LawhHOHXQkVOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g70jkl7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g70jkl7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9474C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782511113;
	bh=cKbw3mvNO2U5bJrKTbq4wvCquSaNunPnnUfkjzO16yk=;
	h=To:Subject:From:Date:From;
	b=g70jkl7af47NCenv/z2jueIQ0WboD7NEB2lNPRMXST+1TZqM90m54wGTmcnd+1RtB
	 2mKWAICUz4pS7a3on+Af/gbTAcWXF/fd6vhBkw8+iyYqUjXBLpn8URD/8u6hCWPgjk
	 wwDLns+q8VQc3Sidsw5A/hEFAfxlAcUdqS2yRNNkN/59WixKpE7PoR987eEg2J8ngV
	 PhrA+lbLq3a/LwdtUuKrL9Zg8Las9OVYVWCqyQfTyqdPJDC82Te4I7617752Ju2EmT
	 KRnRWdW53FD8TgMV/3XvY+hHPwGmUVWTYOi+Q5umkhLw/NOKSJ9obx/aoVPjrZsJON
	 mn0NaZ3xKjENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D0AC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251111371.3555.17012883698754690401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f18a73c1bec4d49f9e7f9b85d14e1bfb3b8f9e9957c16e10c0f51f6c017eac
Date: Fri, 26 Jun 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782511113

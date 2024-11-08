Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DFA3B7A8
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731044754; cv=none; b=kF5xJkmrQ+ZyOpgqwSSWZ0Gj3roujQ5niYFjq9U1uIOa7oqGguuyhefApJvJAUyxbX/Y70pBwaWAtv5ECP/AABZb8cQmuMauAEBPzQvD9x8ZmBi6qPc5IIcGDE9bP4QKqH+woNG9A/veKDteX74vXfFNsqQ6sR0043NEhk/V16E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731044754; c=relaxed/simple;
	bh=XVDbgFISI+67iWBKPvOJ+Q9MBM6SRPlrc/tDBc5xG1M=;
	h=To:Subject:From:Message-Id:Date; b=OGHehoypPd/jZrl0ep9/3onNdDg0rWprl+VLHs3mra0ebGdu5D2nXbMxO/Bb54rvlTKmBesIsKdJqd+vsARRHGXx1P5ubWcTM2TSaEdeBWV5d+OCv6++3Voe93HR2H8MSktFwBT7nnVfCl7O3URNql3AfJY5ayEfpHt+u7ISo+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf4Zy+EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf4Zy+EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F3C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731044753;
	bh=XVDbgFISI+67iWBKPvOJ+Q9MBM6SRPlrc/tDBc5xG1M=;
	h=To:Subject:From:Date:From;
	b=Cf4Zy+ENRlxZv9/iK/fqE9oiJSbtg5b5W1zf6pHov0Zq5ARjstBWqJvHPRf/itXXo
	 4c+Lp1Lpyh/7gFHpUXciK3K/1O9/KMBu5MW615txh88UQlwDEfiWAaUB1n25o+Ppb3
	 YDUXhOLbq1A0AUPwA6STxiYLICmBTet1LssiVrqrE5Vy3mjAnUgqQrI+b2MzeEFNHQ
	 Fy2p1waV4LnlGK6SLSIIsgK43Vm/sHn7/Rp+eaxGZvU9joxfw7fo7xymV10HDGF4G9
	 lWp7htFcZYtsF5/nHV2gkPOIxhLWgc0imy/v9vOawVaK4u+anZAc7HEi2E5ccyVvQP
	 0dsIX8OIvhUNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB38D5E132
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173104475360.29580.6572244768911972920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0a1ca2fc3d917f89f1c209b197f939de20f4f5018ec4feaf100cf6666b6d9f
Date: Fri, 08 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731044753

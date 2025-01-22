Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB742144C9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737564954; cv=none; b=P0e34c4bOw/lnagnRtqniQ88ygIN4rXlKp35Wg9kahOsbY3+Fm4zX+zLXVBuFAVI0ezIGBqi2Vqj3RplUgLlqwnXCt9cxCqtobAacKnFBSn7vlQCwPDi5/SM6DZjanwPF6/2jtKHV3ipdj13D9g+nSP6ABoPTyUrHQIFlRLgPVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737564954; c=relaxed/simple;
	bh=GiZ7n4l3bkNJIyT0PmQj9XeCewhOMgKytZn1PbVGOP0=;
	h=To:Subject:From:Message-Id:Date; b=BjdIXFl+BbWdJEGwN9iVFGtW/m7qU3eoRmoFfbuWh79qWgNJyREmVWCxkLYqYNzotno5ngCf3PeGOlGPGjNdFiYaBeMORVQvESC7I/WRp49zvLYKzXh/cZ0kd6heMHNM0YkZKC8xLbUaCRctjW+mPkvFKLQBKwHfec85r5ZdV2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU/mhvWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU/mhvWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE6C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737564953;
	bh=GiZ7n4l3bkNJIyT0PmQj9XeCewhOMgKytZn1PbVGOP0=;
	h=To:Subject:From:Date:From;
	b=nU/mhvWl1kcK01sOEOUCxkqXEA22NnnSWJqtj/Pd4QBZx1V3sWRQbycClAhQb8YSB
	 fnPSOpfsQrq6Uu+G+KKbVeUrW0Np62smIk9LC1w4ccWx4mkf0bp9IIBlnznLylL69q
	 aaj2AZ0StO6JC7mOD8DKRIbC3knv+Ni4ezuw9TR5FG2YiMJJvrJL+qA8zXRaDgftwd
	 1Y6Zrp1l5+2JLJILHyfYnGvPz3Unnbu8GBdaAl+ptIfuRjfjEmx+aoKGcLgy6wGjEA
	 YejA63zYmQ2weHie7GgWureEHt4U+QPmrx1ZF8qQeN0P/xTQ4IaD6mIPQ+Vp8Rfzia
	 ltm39Ydw6z1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F12C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756495358.27215.7719865451782243580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1b4af6c3043ef1617f0db21b811cd77e1bff0396c76f0c5e4a3440e9d87502
Date: Wed, 22 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737564953

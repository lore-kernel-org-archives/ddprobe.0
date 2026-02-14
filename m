Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125E28726A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771097694; cv=none; b=O9cpP/9Zhpi1TD0spB1zTKuuHm3kH9YCabQVQqw39ZCkWDsam87tF0UWDWCoZKa1RQZCDt7yQEjIvVDm0iKnsl7ff+/qRNBLl+5Kx7H+YifJWUo5jXoL+x/sK1eh/bjUenQ0ZJkJ3QcXDdrTZWcmXlAh5EIdO6TimxeHH1LR+EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771097694; c=relaxed/simple;
	bh=BDpc3Ag3VgJsojBiz1/ugxw+qM4ecPlyjUgZAngaMRk=;
	h=To:Subject:From:Message-Id:Date; b=FSb4itOO9tpN1dQrdLFuJ+3iX8BbqWLeqhfexa4YEMxDiZ2wxm8YYECwPXz+ZfRkXqViWyiMxDKQ+gDmmSbrHwKV4VF3oIUYepw7MjYGa0YpCtj/GejmrYIJ+gPNm8MOKGb3dv55RML0ZdtTXFkfdKEZ1D94EzvVa92X8n8ku8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh/WB/Jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh/WB/Jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E9EC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771097693;
	bh=BDpc3Ag3VgJsojBiz1/ugxw+qM4ecPlyjUgZAngaMRk=;
	h=To:Subject:From:Date:From;
	b=Xh/WB/Jl2hF/ecodbq6+b5GHrXmrwkjjs4LwKmHpITLyg4fyxUD/iZvdjgh4ZTj5B
	 cwDSL1OeixHKSlkUfhK7mYHx0YjlSNhfJ4i35wJUtT3DRx/4ew38ZpJWZ2+2oEANWp
	 H87jNP4XCh8w25ftaj3ITVVos8ikv5lRUoLEBmHlrxsBwl2mdgGRIGXIbu1SYzT27M
	 Da8aXw9gi32pIhuMVFEl+TTDnJwkUeEec33aICcrvjvK5iy94JGkQT8tBL+H5GhKkr
	 GoZRllarDwSMhOICPzOZOoUzWS2QH3YdqzmyfYMe67OTAwLhrXi+ha+q1Lw/k6MegA
	 NQi6CCAr99bmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB74EF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109769365.6294.3621274365888400568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00bd87edb2c30378445ffdf3f7a9a3617353173a295ff7325fa06aec0e97988
Date: Sat, 14 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771097693

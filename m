Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483F21E1024
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791016834; cv=none; b=GITPf1+wZD88gt4jDfGMOGC+/sYE2GiVRTZzU0l+6dBAc1/2RUzDVMfY9R0UjGX/L2TecbywWurtEqJdqgxK1KFURVsMF9pDedfICJiBjbbJl/Xy2z7B9awuNj1azHISQ+UmmZ+jjNSKXi+39+ojgSVnfyL4x7XRjmCyUYHhdD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791016834; c=relaxed/simple;
	bh=08qNUpVhGwL83Aqe1TvIJRD+tSYjr48l1WPfafYu9OY=;
	h=To:Subject:From:Message-Id:Date; b=R8mYp4E/L0lVT5eGqdOdNjtp6fyaCDoMKNyk0PERFDt1xwg00I+gWu/1Q1wlpUCPrk+KLawZPSlGIrWXLy5GF2hXlAWhtYPgI6VN1iP5SwztqQrAwmpVu8yureDe/MSn7IBP3qOPJQ+cEradsiE9yvF6wDejJxKhnWJ8W9APiao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewe2xFeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewe2xFeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0291C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791016833;
	bh=08qNUpVhGwL83Aqe1TvIJRD+tSYjr48l1WPfafYu9OY=;
	h=To:Subject:From:Date:From;
	b=Ewe2xFeL10pFS1Ro2YDxrDHSIT4RL/FGe6on5XCjf7duhRAipyUsS4TZ2hBTBJ5Bs
	 jaOpTJyKnELhFcRd4IaMKs+AZG3bDNkHTwFxEVRuPkZlPQGswVIw7kCeyOCOXhaSSf
	 sxL8naq8yva7Rk1DZ9T2vpKP1y3jakh39mvmgZDZaOliq6v0pYfirXj523hIpgxk8O
	 RXjYbbY6m1WVSoUrVCuWck/Bdg6oMWr8ijy8Hy9VGd4bvU4YV8ki0OUm15hcS98Q5c
	 NnAwmrjrdqlwe62GM/twPHE5KPuz9Zp6Rf+wWpRPiVCJb+LEkv9giWPZjq5/ikwv14
	 zMWkXUXCWl7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD4BCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101683368.7905.13113794229119013834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df16e48c3d142c0eb3f849dc0ef9d80d74baca267591d0ca1d6406fc1563c74
Date: Sat, 03 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791016833

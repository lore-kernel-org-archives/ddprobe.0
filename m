Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1603370E5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767712434; cv=none; b=sIIWpDcZZuiLqCMx5Y9qwPkWk2WQ0XdeJgDJVkcQ9ZwxE3le5AO8zSbEB3g9lBoe7tWw3hZ7PqA0O8wbtrQZMAfoLaMVsC3dhU0xU5JFpv2PshjclUowQ3iM0ZzozwJ92FxJRiACV7TkGN7hkj5xZSBi505Lbcn830uaJtFs/bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767712434; c=relaxed/simple;
	bh=7roLgEw7QYx6rQIPPlwKBkZjILJsZlzbOcCj5WPlQZE=;
	h=To:Subject:From:Message-Id:Date; b=p9r1DqQLNkK29B7qpoRQhQxrI8nkz4dKGPMVrKEJ3Kij1nsxYnhHgsOYV9AieVwX+uuYWCzdS2Oa35jp2ItBtbxbKflNHR896BXNEecaVcrXlDzgPNpOHY/JJFdbD+vM2uwdE/5A86d2bhCO/U6oboFAQh327nQ6D3gSdUx4Ez4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssCAIEDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssCAIEDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953B4C19423
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767712433;
	bh=7roLgEw7QYx6rQIPPlwKBkZjILJsZlzbOcCj5WPlQZE=;
	h=To:Subject:From:Date:From;
	b=ssCAIEDLsORp9XXLJ8jaHteBVJRIoQ67DcvOyrQA9DAXoFrfjwGYhkgJUfqT6ZVyu
	 lDI/JK08tmOTP3xNTe5pWZ+aOY+gupSxFC5mj/kekadSc88NZ2P377EMClq0AIRqr9
	 gHLHyJjDXnPio2o+95/TKdy37fYhGPLhyMZ5ZVxM7UUUpdb/U6qo7E6bomGoLKJbNp
	 K3LKQCC1GZqYJAV3ZckdN9b8zVmFJ7XDSxvidX1lqI/9OZNcExtGqCE/ivLWAJHDyY
	 aGRcWay+xzrtZGzwxSAtuP+YG2Rz1pd1hnUzGMs3+3NWFwHhuuIjVfsZHR2beqGpWF
	 Oyua3L/eCO/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F4CE9D47
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771243357.12186.13161780238943985725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0650c7e57ba9512d7d34e6b0d0612d043a98f4cfda542b2a5a72f3e3319ef202
Date: Tue, 06 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767712433

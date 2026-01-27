Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1184A35FF6C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526834; cv=none; b=aBcdSNFxAip5zpzMn4j39oWB1wbDI40a3/o9NV84OqKP1XpwxEOAruDuqzKgArWGNuDnSRvUA6FJ0AP32tu8QY0ym4mdJNRkp19sBeQpzsWJgdTdYMxYTDPCuyztQrLhBsuck8VGo2oSizFP0NskPV8k3ojQwG+ky+LUrmeQJWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526834; c=relaxed/simple;
	bh=Pjrntlx/qRQdDEZS0dFPsxDonU185ExYwRg+DOfditE=;
	h=To:Subject:From:Message-Id:Date; b=WNJEORo4zMfS4cxD5CUsVD8pfsREppWLPGtBkSFJyrB+8PbtcOaboeauAT0CgUmpM0HORBc8angve8MCP3qwnCAI9GCt9K8XI0MFcC8SD/rcqrWZ0zxIcrRBAChbCrx5mqhX9Ro7hpq0yiNXWuLK7E8ueWx4xh26uCBt7MHs8gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brgdPso/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brgdPso/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4326C116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769526833;
	bh=Pjrntlx/qRQdDEZS0dFPsxDonU185ExYwRg+DOfditE=;
	h=To:Subject:From:Date:From;
	b=brgdPso/jOMT+2v0U45HeODv5YJXd5+TCISJk/Ji0onwCAAfBaONDTmKAdvgOl6wt
	 Odk9rRL/fbVsQ9zZUQ6waRsrSRBE5to1CaEjbQKvpvU+yiW/dcn7Z2G1ZXbSzXeHXM
	 swNfWe6GdLx4fYjppxlKOykpJizc+v8pWR7b1QUCcVv/cYATHotL0wj+FdziIZ0iEd
	 W2WYtSUpGahzS7QQSRycTDmOx/gteKNxx4xlLl7VP/4QqYtaI7fsGy9uQyyc3dfgSH
	 YWgXr2wM2xgtoTICBOStJIr/FKBcWj04DOvCtp91uKKbMEOeArWk1wxKDlVlMnIoIq
	 D7FZA7ZhDrKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D4D25931
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952683358.12143.16387672449745556682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685f63ccc9843ded592d52ac83ab6b8dd6d0fce651292c2d3add9da8b805cbbc
Date: Tue, 27 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769526833

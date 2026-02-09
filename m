Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90331B4138
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770631433; cv=none; b=j+q2/ssS5CRsDSOZPAvfmcG/Ztx/fHAGeZ1xvkER2rf/12FG7wPWFP0mH5xXDWHWHmtG40kQAOvXzfXQzl6y3t0+xKOXH3DzlA0PCeQF0UZoX5pRVY1Lqe2K+y0PgjbCtDOxmC6U78ZxxuZr5y238Npf7oO30AFMIr15ZglKilM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770631433; c=relaxed/simple;
	bh=E7hZaSmgjCGeIeW+3dL+sK0ksRgNdHO+GQsW8BNOQNs=;
	h=To:Subject:From:Message-Id:Date; b=ISTJZamM77iP/b4zwxhxie3DClLP5wpnP4GCi+sOtvVD41Rgq23Ax7t+0P9v9EfvZ0PP2gaeuhehODqmjrgqWp7atyvnEEB/3brdvGvjXzfcTI7nsnGH5JAXqBgYwV6e28nfNWFG+HntB0Cw7ceVB7KzZKbeotOWWwi5GwopLqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN+Xgara; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN+Xgara"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD47CC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770631433;
	bh=E7hZaSmgjCGeIeW+3dL+sK0ksRgNdHO+GQsW8BNOQNs=;
	h=To:Subject:From:Date:From;
	b=VN+XgaraUJD5etu8vZ2vu/DIsSHJUVz9coDmLyMpC3GU0AyCYoL93V4ozq6gPj7YR
	 0TFKC2tWJYxeFbENj6F2agwFDYEWJUxjAtsStb0bnhayUfdc4JL5w+7+L92IupuHDG
	 eE2FrPeIjsSxy4fTiw3w3PclWK0UOaRcM92R+c/o/X7Pux0VhbXlJJ+Hhju0dhmV1O
	 FyleYIGZ3/JhgWO5lvXx4oNxeOdtb6hRy9Of2KRm4HsO1WpDRM+B8U5JzIxADJFaHF
	 MUljjfmJCpZmhhZwnewjxetutRs2OaLLYz4t7s7qua1yZnWnJXpx1svbVzUn7WNcyQ
	 WKK/+YRgOQT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98408E7E0BB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063143361.15734.8022230814826597620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf79832530d0c21523dd1ad2a956ea4ed77a8b7d864d3aed44d665298f9467c3
Date: Mon, 09 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770631433

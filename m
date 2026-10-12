Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBBE389100
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791768634; cv=none; b=OPF9unjdSVXCU6sxH6w/PHmouXVlKQsxQbbHrLfP00zu4RPNykBL3vyspXRIOCVNcthVAyCULKjB/abgTcaUFOZBwAmF2ZlBNS4Em6X/wzHjJ6OGuKAb0F6mnFpKi+s7bMnnSb3Csy/uworXJixOi7qmC+O/+pmhMS9zBlusi/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791768634; c=relaxed/simple;
	bh=DvY4awph2lEqAuyNpjFyD4khEzXKEs5/ehjsWUZoljo=;
	h=To:Subject:From:Message-Id:Date; b=pnYcLaMXhJ6TRoNBfL5hLF12qDeeWfClTA1Nl9yiVlOuXngSln7a1GhVSu8ndjAVSqxcvy6X91yDYhNX/kmop3AXDfjT/TsLs1qf8HbHJdrQ2oEUYD1Mb6Y9FBHPVWX0lDMSM6WIRVx4WuxqHPp9PO3ViHvM6eyQkkEMg0dhWzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZFTnknh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZFTnknh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD35C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791768633;
	bh=DvY4awph2lEqAuyNpjFyD4khEzXKEs5/ehjsWUZoljo=;
	h=To:Subject:From:Date:From;
	b=SZFTnknhS3Ep0vy282PSQfRfdFNQrqHzN2cWpJvQVDLWTG3880e6IPYPN4GLeUksD
	 f5PbSzb8d3hEGkZa2mK/hcgl07WZBdorj4EtzZfAfHoIj9+7g3lQt8k0yycBMUIwGC
	 HO1B8YBvpwRUG2mZ8l5p4BF861hQR13y3RVUOIAJZRCMPo5PNT6KhRLKV53peI0Zkr
	 TDz7oNfSyudlHWysFekDMWb563SnTs6rbabiLV1PyVDX+vHwdx4pRzXvuerKlyf78b
	 JY/gh8bVYC7w4hQ9dBrKEnFpdvnOKJC4JO6vR+AlysAxwu62nxOA1ZDJmCB1+zbOGD
	 PrpgA2xfHRTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E94CA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176863368.24789.17457877199427588092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b331b9e04e33852a22885404475675998f476510fd23e47e5bafc8e6e31de236
Date: Mon, 12 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791768633

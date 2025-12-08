Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2319F23D7FF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765171374; cv=none; b=ZYbq6nE80Ck7ZILdvlwlAdIoIxNpL9rR85Hexu+G0p25nebPQM/ajmy/H/Qm+Ov6UtbGYhtL55nW//Udr05lF15RjUHbWBzDN900vYT9Ggmrd8TGnHKMIPfmt8a3IicSmE9WzIw1xFtpN6kOkyJi6HA+4s+5FuEafL60c8+1cu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765171374; c=relaxed/simple;
	bh=encQ/L5b29s9bhMe6MS4f9Bu+l5Ly7b5OwT0Dz3MpCA=;
	h=To:Subject:From:Message-Id:Date; b=Ba8USmVv13OpIFpX/oNNujXYrK3mOx5Rtm3x+Rk07WP4/peqQoDJ62ltJdwC298GH6eSjLJcBNa15K48Xd7RODO3WFnm2hsibldIvk27Mdkk8sAqeGBBLSvkJDAVNzFw3qEaQSDUIP/4ZjeuHFkPqSH3rXwX+LCHiGrTGDthrDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rwbp9Fcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rwbp9Fcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93C9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765171373;
	bh=encQ/L5b29s9bhMe6MS4f9Bu+l5Ly7b5OwT0Dz3MpCA=;
	h=To:Subject:From:Date:From;
	b=Rwbp9FcdI9T/C4huF9z1IlcESMzPgaGYwBAI9PPGwReB73w6lw2vQVdpyTX1Ivbz4
	 57h7LjUm/nDdz+EtvZDnsxsW3wQh7SX1fBn5radCPHfSXSy/FKOT8pS+9IHH1UFZkd
	 BWAT9YWMaOLZeByfiJVxYPIJQn8mP0eZeAva3g/jlIZLN1+fBOOi8pnFormKMM8VYL
	 2Bltg84Rht3yw7HGiFWHv68etxPcif75FxTNH7j42zdWdVzt5t42mhetKs8iS1fUdW
	 twVqy152/j92Ry8Thk2ueY/eymkB8lS0z18ZPebIDZsKF8cLh0RoBI4be8+VvmwOSV
	 hO7kNdu2tupcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EDD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517137358.18844.6338868302288299342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c70661dacf50bb08c12947ed2073599b1f315f53ce8080aba9178525d4d83b
Date: Mon, 08 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765171373

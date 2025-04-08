Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4205623CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744135794; cv=none; b=azhWhk1pXzzwO+2a+5hpBYZvZ/BjM1r0+9/Ta4VsE5OdNXj88Q6NN+xy0R/AqnMGUtOu4u73fogZvpwSiOkMxGBNCotSxaw7nvA3K2nv7vYgGW7pTcrFTe++Hxlt9J/Q+BBX1ICmBCJR++zq4ojMjuUPJVY2oBo44F73SCHjUmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744135794; c=relaxed/simple;
	bh=4sSCqipe7b0Ea+6z1D6SjipXfjbowWTea8G7L2c1Ffk=;
	h=To:Subject:From:Message-Id:Date; b=XjmZtdrmQo8gZrBzH8aL1VHOQHQEMJIo9DwlH/clT8H2sjxFVQPHTWhIwYRxcjow0wK88rt9Q0PQYHRsS5TWsmduErGtxHNJUuKxou+8asP0KkRLZqPLOpyy0u7PfxOiXl+K3vU0gk4tbHsxEMgCxb+NaPr/lHJRZiLHAvj+xWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTYwVpe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTYwVpe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3769C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744135793;
	bh=4sSCqipe7b0Ea+6z1D6SjipXfjbowWTea8G7L2c1Ffk=;
	h=To:Subject:From:Date:From;
	b=OTYwVpe/uWrhGU/6wPKe+uiWKeC2TbQCYi0QdcWQUwD4X8WsWQW4EIXbiTZbWqT9h
	 uOvTQ2U3Ayph33pCNkLvJ5b/A65hF7PP3xJZ5CWdzIJMchwoVPp4lnPMALdsGuSojY
	 GVxZb8ITScAvWOtyJ1/WmMviYTacSpRW1VZVcvi5XBNCBAwtq8wGJCOX+ZSQblcTAM
	 9GXBF4/AQmr7H58GiSrN6pBI79fs937Es//IA6tDPoX3yCYgGxmOLlRVTaeWpvEenz
	 GtpXzpBuTYltzKKJdYSBb8ucYDBh8pAwY2b614z48FbQnGfDiP23J2SwzyxM+dTjgL
	 3hdAfDdY8QJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935BCC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413579359.19920.7415090859423087428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33e8e05e020904bfe061882b2a246cc388aec6da3d6716eac99866931cd8309
Date: Tue, 08 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744135793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEF369D2B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714846343; cv=none; b=Iz7eBnmQ/6EeJDF4KCdt+Nk5vSJKymjUwTlnRorg1deONjWqwETUy9jEVraqAymWv8uZRe2oK2Quisy0yii9Le1CecNYDnVJd0V0gcyOua/wNm5T+8Y8rRydmJHgsJEZZT40BvFKF5DoKvuxuTSWhGNcBiWwBwq5JWQauvd9W2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714846343; c=relaxed/simple;
	bh=vKMNw1NQep5Qnfgz0nXM2xes8sF87hrQPtVhnCav3N0=;
	h=To:Subject:From:Message-Id:Date; b=EiuqRTjyzH/tN7v91WAQUu05RSuF4oJx/LtHTdnpFNY8TUomlQ7PbB56xnMkZX4/VHSR7db9cnmXfJbMiDd8slSJywPIjtVBLaJWCLBEJvN7lGuXmAz9zdWRAG+YfpnjbudLvZvviYAOLSunUoXqsPzJRsqG+NIUBO/3FmmE18U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBRe/QJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBRe/QJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4FDC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714846342;
	bh=vKMNw1NQep5Qnfgz0nXM2xes8sF87hrQPtVhnCav3N0=;
	h=To:Subject:From:Date:From;
	b=vBRe/QJgR7m57XWBQYMvsIccShspWJqsb30fc07Aq/lli/1kxTqiYoKeYVgG0Sc1p
	 7eCxk/wspVK6Q5/uN83L/GKVA0aIDUtqpOU6hClP7+rwiGY6pE3fdBipyVSeM1c8SH
	 Vq9dxAV0iI4yXfvy8C8C4qrIzIJ4O1IrRKOKzoU/qLXup3eyiQWmDSf03pQRse3L0u
	 re+1e7HgwZKJbb+ZrZH5vXK90dm8xnzRYmi+XPKMoKEe8DahedZYAFgDPrcfNAqziV
	 IiVjXk+gDEm01LZy+vyGwFA9ztn1mmvHE1L4k0SS/UY9wsVShZdNJ1cLWiuO8bJlCS
	 Ym0km9+tMWO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4557C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484634277.28725.7158310955024391901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a84407a18e9b82174b774b1480954eb45467c74918ced50bfd314013bf16a8
Date: Sat, 04 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714846342

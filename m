Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEBF17A2EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748844594; cv=none; b=mnWLWaWqoB4as7URyv6QSjYqGGvNeb67AGrk4SSCPCm4WPPG4Nhvc1z4EndhL18K+vEAQUF6uFeoQ61rSpc+P0rmvk62uthBpomZMxQK4RHj/riKWRp1kZquWsIR2mnQzvXcwJghbonwEdEksDsSp0yqipLhh9NF7JYQ9jEzQsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748844594; c=relaxed/simple;
	bh=MUg0s4WUO30gggT8BkB2N+KEmQ59BJvpTbNkOdXwem4=;
	h=To:Subject:From:Message-Id:Date; b=DGVmIV8Ltd/n9CePhKFGuTbl/7IJGNuRXsKUUG08fsAZ2xTXW2u9kTzAlOGQbFPakcuSFU0dT9tDrA/Rrd04sDJPKWd7sh1YBtCRR5pJq+BU5P2cKJggEej8+NPMenX3AK7jj263+gyZsflj8Qs+Bt285Qw/EC0JZJkctO4HbBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drQJh/uW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drQJh/uW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AECC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748844593;
	bh=MUg0s4WUO30gggT8BkB2N+KEmQ59BJvpTbNkOdXwem4=;
	h=To:Subject:From:Date:From;
	b=drQJh/uWXVv/Rt2uhPPcV/O2ueGMEpbpK/fDqyMcU/7dX2/4YkOsUniypODiql3hu
	 hDMQFjhVqh30CizyZBHqKMEHhFy2qph3LPgv6TbMeOjq4+Lh3+q5EHrXVfJEVQK9Ga
	 Ws6k78N9gn/eL2Dzqe2FxBenZRfDhmW51OXXuM1teP+3vl2JpEantzDv9ywPTkq99y
	 JOAZgNkzVuvxcEVPRQG+U8uDAXziWgkVMW9o/AOFnZ9vGvomfPSNTqGOCjGtnuWwnW
	 EI3jtmups4twHsSbuLfY3rw9Lvcho7AuBa/0xldB44Jx5MVyrTS/M98nqzrTHT+jTc
	 OYvGTzl2iaNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95582C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884459360.3390.1631667558070788266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7536a558f41c2c1d0d0fa2042c670bf6fc25ee7248b79848e36ae69799a5623d
Date: Mon, 02 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748844593

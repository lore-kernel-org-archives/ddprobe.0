Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6A82D6E58
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788571834; cv=none; b=RhLlCrc0LePeY9VxCKPFs2789ko5QSmofpBUBOAkCmcguvLSVWe/qDslYO2ZQYv6O/x0vaE9C+ZYg/nGfE9f+FFX8IusSku1FsiTJZhiUh6YkiolHCQjziFzH3GNItw3rmoZjZdToIDQfYTQHyoPWCMYUjSZHQ++b4QksJW/zDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788571834; c=relaxed/simple;
	bh=zKLYB6f774A96zvkdxvxhRREPIr+Odpo2x8h9JukDTQ=;
	h=To:Subject:From:Message-Id:Date; b=l7Wno4x25Gq5fWQKgPMUbJXLdZyfmPqWtcQkiLYYiucbBkaXrcWHHOOhxwZI6Abe1kowI7U7CfibSv0RvSfwOpHLBxi5WvOpbQ5XKn7gqCveBIzzut3b/LQom6gWH9EDmFTQ1VGMeo0oSIYKHNHSK/v/BhE5eEdbkrj01sDvXgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsNJx1i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsNJx1i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D368FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788571833;
	bh=zKLYB6f774A96zvkdxvxhRREPIr+Odpo2x8h9JukDTQ=;
	h=To:Subject:From:Date:From;
	b=EsNJx1i5EUQ5RWxpnNPf1XdCyHroNhsVLOpyknGln7FgDFPVXzFy3mxlD6gDWMv0D
	 4bpmwoLFezeQerqAupX+wfl3z7kjYz4E1O7XQDngBoM1xV1rBloRN78Np+u+KP00m8
	 Kgr+9WycvGYCSlX9yNit4/R16my8LVVYsX71NSpFTSTFUlfVzD4LoK+XmoAr4JCIH/
	 qn4Klbup0Km3JmxHKfYPApmR95Ef4Na/gf07FWTbI/GoRWmMaT8u2TFTbVwBfv9kr5
	 zT4LknuF4gfkub4TuRM8ii4uAEo+iBcntFmKGEX/AzUcMiVWLBsuc43NcIFgQPUKrC
	 4E6BjOScRCxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD866C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857183368.15727.10593923539206134867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad5dd32b2f786cb1a0542fec2bddf3c080fdec768602ae6469e24c72c2fb9ed
Date: Sat, 05 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788571833

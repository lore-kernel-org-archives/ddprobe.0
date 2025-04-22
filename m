Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408AF139D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745283594; cv=none; b=t+LzDwXGTuvp0Z5aeXIqaUkoBdzrMKrgDqxuGqviu1SS56krrXcnoQVcbAjXBgNSdFW3JuZn9LBzMpuNMnFS4DbzXAVJ5z/llWc/ZZpcnL/WFjMzecGF2O1MvPXH6lF13qXC4CRtz5Y7xazcRQ5stvA/QN9GD1bnnA0QZO6W7f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745283594; c=relaxed/simple;
	bh=zeRAInrNuTkUGY9tdBv4UMToyr4qx+f/SlVgwRSPHL4=;
	h=To:Subject:From:Message-Id:Date; b=HBItJCC/hIQDDK2ft8HqWBNAwhR1quzgGq5aDKY1+eejJFjvhMYVfRjMSEDmNiMRXME23KT08ENgC0j/lNRa8RyShXrnrd6bHTBlV5nVAsuDRDq/5B705T7yHMSVBbjkvdZrUutfLLZF4Wdx58sUX6ovZA0MqkaeHWmS0BJs9Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCWcsFoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCWcsFoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745283593;
	bh=zeRAInrNuTkUGY9tdBv4UMToyr4qx+f/SlVgwRSPHL4=;
	h=To:Subject:From:Date:From;
	b=hCWcsFoS+fAkSrO4nNfDrjipJZjaal/Vun9PWMfINDQOVb82DGnkwOqfWr/Urqmzw
	 hh4z7fUcFs8MwcCS9Tb1WeQtx0aEPCOQCLfwFjUgvbE+t+AdcPXWN2EdhU80iTOhM3
	 Zgg59Eovzx0jYS6vkwyHzlIKzFKEfWZjM/RisHnotMOIQz4UAPtWAcYdNDv+BaxL4l
	 4bv9okCG4ZW+dBvnzIH7i/645Z8qleJ6X0vPv33P7z9EkN3zRJ7rGxYeoGL7e82Y2N
	 Yocz27whV0N/JtFvDuuifRTTAZDGjF/qymoscm+vh3Xyium8Bed4PJ/VdwregGQ0t5
	 bnJEfpbkVq1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528359360.14739.11260471873628578653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dee774255b8ddbf64ed4d59e259fe0081f297ead4bfd56fc2d3497ec43df23
Date: Tue, 22 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745283593

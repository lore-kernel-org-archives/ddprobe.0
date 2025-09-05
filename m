Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0F26FA5E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757099995; cv=none; b=nei9HEY5cZdZfGEgJtUaasZtiCNKvt1o/4AaXZUofZatG9CIR/W89jQeEQfIIJNJQjyUW5JsAf5QsoUN0ZVD0tZaM3rUwfYCCgewIvYzoMUqfPGnaxW0crio2fptqgJcPhT0/VGFFtS+e8rWlljqEzGKj/+BvhfIT0cXEujIpjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757099995; c=relaxed/simple;
	bh=I/tIyDvBY4enGOFwpaMhp+X+ganQcjUnCi+KrkrOvD8=;
	h=To:Subject:From:Message-Id:Date; b=hMuf15zNpuzGgRojTwg4wAUS3Ypkz2hBu/gLV5XRUptjJFWW/mibYrysUZC42UfdRgykRFI2M31O5Al0tpR/BN28Tb14TPRdUzXc82ppicDSyjM++z/aLX9av7cmPjIWWu75Q58Bkx7efQFJZAhP7E3OBjorEZbIGb6hbu1Ppc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5p19m0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5p19m0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7232C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757099993;
	bh=I/tIyDvBY4enGOFwpaMhp+X+ganQcjUnCi+KrkrOvD8=;
	h=To:Subject:From:Date:From;
	b=A5p19m0oUYw4DPavrVtGKPUDC/0X4jBIYIEur9lqr45rmNCfR8kNJidMr2n76euUo
	 OG/yReBmdFFvk+bm3KmpTiEi/LSrLLc3n2x2qLVcEx8lFb8shoHiV3B2+GvGGQuj6v
	 w4PK0dNBoYo8IeVAY4pD/XydAagz7fmcRNNxmml3b5nXVngWO/PyNoT11vntWTFC19
	 tj4jDgiHa72sJfkIcrBjHSWbfpkn83Dt1h8JRTNgdFum1L4RKbScZG1pqL/YFiLeSx
	 D2SH7Euq3HiLamVHyxWFLFEUxI3/UTYhbK8HHjY48t8h4icx+DDxeMNSQGrHbKc4R3
	 hmNgtLuBysiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93271CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709999359.23526.1067145527342617937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7739ac2d9250bad425eec3119f926eb4eee17b7bae87ab39677f3f3a9c45a9
Date: Fri, 05 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757099993

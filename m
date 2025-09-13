Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8182E7BDB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757757595; cv=none; b=SCSX+Qk2LTU2sQ7zcxqwcxbcpElmWgv0o4nkAhpywIaTZeLQ0ijE3gfoK/VYAR8XV3Dh6x5SwRrpBQ8QWptNi5AqYEzh+IbfmPIuF/YP11qJCHiNDBF7dDA4Jcdz+gYRsE2TpfyyeAjel6nuQv+TL0yVa9dHAb9d1EKNs7MjQME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757757595; c=relaxed/simple;
	bh=4MIHBPNgT3yIyGUuO+hjfSKY9ZoufCKAWeVN6lfsY5M=;
	h=To:Subject:From:Message-Id:Date; b=BPf0Ts40cwr3rjPsWLJN2IJQ0BrCg/+OcUrxX2GorcH+zp2Okhy4O/nGYNM2vnDdLQcxBCNhWKnpvKeGGQNf3eM3iA2G4s1oWykQ7LbekcciFlRz83oc1Q/M4jCkHRMLU5JiA3INQSOc9ZImgLZPCddd0RTAP1h33wOTt1Ak0c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NALchNdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NALchNdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757757593;
	bh=4MIHBPNgT3yIyGUuO+hjfSKY9ZoufCKAWeVN6lfsY5M=;
	h=To:Subject:From:Date:From;
	b=NALchNdiSFKWbOq4JG/wAAboI5JFDxTWQ/imd8AZCLEG600ODt58nGN6+8Z+phxnq
	 zwkcn7QUU+kb6WYYvlJKqxoHN6vKn+P0wQ1z3h1Z/GwLBytDHHE+EA/ZmDi/6yym5m
	 fC7ioQbsEjt5qETNaj2lZppJSMAnsEkbcPcK4j4DsT8x+cm19feGfEIogcBAB3vfhb
	 Akoq1ILUpztq82H3w/IVmH6OCLZbDyFzruf/n1WdJ7Tx/8+5KwAvlyw2D7rz1Gprr7
	 pUTRs7r8JPc2+OwvGxLHGgAU9Zbq6hywe5PNl1Bu8IILCVoV3wJBM9AXMiy6XdlJJZ
	 BlW0CVzVOTfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D3CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775759358.1060.1246008756950924426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa1de9f95a2a3d369ee65be5016b6b4df2ba690cc94369a7ab836ec0b203989
Date: Sat, 13 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757757593

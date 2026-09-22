Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548FE3B8950
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790052634; cv=none; b=L2547IEDYPUfA5DQfS/VI/05mHf1RZAK7M6tfTqQCq+jiEcLuFkWcUwTWBmn7D3z75Ex0c8e3xX+xaaEJRMRdGmwsTyqvON9MoL0TSKz6pzodoeoAu8WQeYwncr3q7gXPsjOROhnNKL/ChvsUYHPYKoiHaSu5wEFy0X2+JKWj6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790052634; c=relaxed/simple;
	bh=pNPVdPu+569bHm3Tee1dyGwLxHizbfHVRanqDHK0+Sw=;
	h=To:Subject:From:Message-Id:Date; b=A322TlV2kSg/CdBkr10R8vgFQ+SvhIaZDwqF0oT3jCKafTjXArHN/IJIyuWIYoHJbJbZBD9l5mUsZEtTP09HUknMMbYAE/ZSDIvGYZC0SMItOu9d+eda05Ru5k/BpxJ4im5u08wiwU8oMUmY6uKyQDdKG163Xh3Bu9f9XbzZL7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBHJ/rea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBHJ/rea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD9AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790052633;
	bh=pNPVdPu+569bHm3Tee1dyGwLxHizbfHVRanqDHK0+Sw=;
	h=To:Subject:From:Date:From;
	b=nBHJ/reaQt3EZcJG7rY8k+GtVSZoi0S1PYZTQDA6cPaZ3Ffehab+OAH2vZcRJelrB
	 zvIdIVVKD8cj5GZcQ0OWcLYZricvzBkOy5AZP4yxyMCIYxC5xFUZhhSxFW9izO6/jg
	 o6wLvmnz+JmratX+QhpQESie35PUQig1A0TVGsPbIfWofYz4bixduvI4ExujTNPnC0
	 410GDJUNqN/2HXHH2y6W0W2zglDMME3SixMqi4+YgD0yiXRMUnW/XyowT+vjbaJeBN
	 A5UmPRp1zFgiSvo1sPolpwPtaotMSxVs0QKTDs7mUI2cIYC0vdQP5qmCj5o+qku0hP
	 tDOET5haf/Z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949BC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005263368.6424.135577783262727661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ecce5fa369decbd90df48799a413e1fc2d905580aa3cd85fa0a57ee6e35587
Date: Tue, 22 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790052633

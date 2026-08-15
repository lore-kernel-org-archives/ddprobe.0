Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6891E98EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786811434; cv=none; b=DYdjlbitO5sRbx+WJcU/Oud/gRsaYaGaclCxZw+NdqDDFEt36P5GIHQHCWVNufi1HY0/Uwy2XnOCKRu7GZ2NNCIw170OYTcWvaMNqUpJ6nh7dZQcGMIjVDhPJbCIjXEnnUefi5CwjkBNnvCGtgTFZ+lAyIGQOCBheoWZ6g2bgzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786811434; c=relaxed/simple;
	bh=vw+27kMmA+wLuggJYSQjeLEMcWrxfVZbGHwgpk3rEMw=;
	h=To:Subject:From:Message-Id:Date; b=D84zKJlvXtJsF/RlaPkM354Yo0OmWZZXp4t0+iP3VU7T3cYas2RfVZLEKipOkLJkRwVds5R2WutaHftm9F2wjSkLN5zNLY9+efhJQ6s1ur8FHPgTJvbv3gwOzXb8sQiz2G0yEcX3iY99bzRH/QDl8ibdTRRVUQOknd2cdEwfQ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiIm8p2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiIm8p2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61DDC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786811433;
	bh=vw+27kMmA+wLuggJYSQjeLEMcWrxfVZbGHwgpk3rEMw=;
	h=To:Subject:From:Date:From;
	b=JiIm8p2m3Rn4ZgxS1t+eO8pVy/lkrf0q3HYDaMHrZEIHy5d5WC/s8+riMPhQd6lR6
	 swziPPHMc8iwUM5BBCJe8XQcM3es7kB9ZH7hIQb1bj2QHy7rdUBtfOhwslfiQZGNbd
	 JhrrUY6FBboe0xLnISNjoDjsxhVdYYwREcRGuEbJDlFKh9BsljkexVxEoozANZT9z6
	 i3oAUrEgEt93txlUPMnrSSpmbA6L7JaAIrQszZWHyofzO/AvB7tlZHWqL7xY3lV7Xt
	 5Px8rDWOWqVTLMXC4wf9/1QSjTNtd7GNI1ugH5hCsTu56bAcnB4ChdSDi05OHzOtPK
	 8oNntcV7rdtQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DBC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681143369.5682.7475867966983150013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff25c4ea3849486301c9562007f357f0394b060875b5a2fc0d5e393fdb20f9bb
Date: Sat, 15 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786811433

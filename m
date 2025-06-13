Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3123915530C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749821394; cv=none; b=VwRMk/K7TpkdkljBr3dza2+LBlJbIy2ERaKZ+qNHCXIdIqY2ALc+mDt0n0jELT6+S+392WlTFffFX3jlPmXIBtvFQjRnLlf/zEmMblC3SItz5aeASeLifETGqiUPI6lLNnFLLeGmRWeLhf0goCM6mZvlu7USeX5uaCnzeuWBlIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749821394; c=relaxed/simple;
	bh=uIFAZd7vGZFr6CAgkI2lpKKmXYlgQ3DtUcKVbXhi0w4=;
	h=To:Subject:From:Message-Id:Date; b=ZE1Ef7GaAd00jOMkzY+5VdN1mAKxgBbo5ZvW0L5llBEzBhe4wrA1An5Wk+uZ3+SpnG8NQ214Cl5WN/HPCqWutro8zzsNtqO+m+BtJmWAWVyBiUVUjCmf7MiY9XXTKbH4OQtPNLs3q8o5ANT8ZgMWyAJGo8JNll4j/WChSzRxzNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US9pk7CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US9pk7CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749821393;
	bh=uIFAZd7vGZFr6CAgkI2lpKKmXYlgQ3DtUcKVbXhi0w4=;
	h=To:Subject:From:Date:From;
	b=US9pk7CRRK3cUBSY+753hgaFEmN/SwPI6uPMvAZUDjbDsSEpywPYHzQV0DVxw4K2C
	 uQ8/ty4TKv0Bved8p3TrQia570JzV3eUbGbkL/JoYyCa2IajiNgvsU2GdtANTuWSyj
	 /i3QigoeYa/PS0dS1ty8tlHLQFQPfi0EFWDf0BQS+uQGzX4yQOoUjScXUBAe+52QYl
	 7fuUNQ+78f6kKFigs2D1Spi1YUkLUAN15+w+seYuNkAIcp+VKUL2K9cXyWUbx46hFz
	 ojtIg8rlNmjsDBOG7nujR+D1vk3B6+LaE4creLc/rhbhOXeXGqjAoGQ4yzHW++nYiy
	 QSVSLSrve23mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB45C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982139358.4328.9182523973104254088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b390d5857d8fb159ee78f9ec31b7bdb6adff1e624be5d3071c38d331bbb4857b
Date: Fri, 13 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749821393

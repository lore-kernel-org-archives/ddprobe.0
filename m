Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586C318FDBE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785043234; cv=none; b=iXkL62j+p+bYiCLHhRHwT3wO08S1GmPkVMcV204hyZECDsdy0MJawB4OL4YCtrBUoPUBO9m0si/F+0VoGBpC5AxHzTjVlq/dgXK7kzEBMtl4xhN6vqA74cN0c2xr4o6Chs9RwwIDezk878YRi2erKjyM1CzvWoBc9KOqtdtuBas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785043234; c=relaxed/simple;
	bh=+OIFYZAH0AwwYYCxXM7oHkJjkhWk3q8H3OeMuY8Gssw=;
	h=To:Subject:From:Message-Id:Date; b=CGzYP+WU+cR9B+/g0o3HQBPjTsgVbBo8IVXVwvCPUf/fqxq8bAaU1pTAZ39Kzv1KbzNk38eVqrNbkT0KM1yh5D94ONiabqOw6GKaigJBSEbtYOY7yTaUsa45udX6GsKA+s1s9jKWT+BGf/SxV7VMpjUDXZaclDSBMV97LeHEbAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpWtUCQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpWtUCQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC25C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785043233;
	bh=+OIFYZAH0AwwYYCxXM7oHkJjkhWk3q8H3OeMuY8Gssw=;
	h=To:Subject:From:Date:From;
	b=bpWtUCQAY3FkR/cfZEfmPDJpHh4NNjhgFXJORa8HevuNInt3Bo33mYb0qjso6v8B6
	 GV7BypL66q1+vWvWETWOzWviVjOM+wXYYYQj0F0TUfsfW4Sv/NvXXg0GNYznZ6aLyW
	 QGr6YnD2ZRRwyme7li6LEV9nRnTsd1GogEk2rdGQiVNozOMj8D+03CRzBKaS4O3MQj
	 BGIblaEnM5KYGlafZlbVjEke0ltumSP+PApofhoNwc9ty92d5sl8ueq37GsuPC5us/
	 cWH6EEXBpg0Reh/3PInD34ITykDcLKStObbafnMqMs6jomd4DyMLZ+DRPQ/DTV6xlR
	 r6kreEo+bXa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D71C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504323367.8133.10779857724292438226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2411d821cd75a97e400c1a34c799717d86fe04292364219aedc89d5b85765a2
Date: Sun, 26 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785043233

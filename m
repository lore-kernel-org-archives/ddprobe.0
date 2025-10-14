Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340F31D8E1A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760405394; cv=none; b=bp3+s9x8d7/9OQOCfeVmFQNZQujOMM28SMf05WiuSeEP/POmsBcWHzlpZqsbxm6cPYd/y/XaLCaWaI81g5eV5RESha+8NdQOsgk+fCEDfdU3uTKepVpDCxjufUkZ/x3JfxrJYNWuKFJpxVpxFlnS1jQZLxPrjYtT8dYcjicpzUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760405394; c=relaxed/simple;
	bh=rNCa+fd2sjsfEXTmKON5Olhvr6jVzCGRjsfMGTVYzyg=;
	h=To:Subject:From:Message-Id:Date; b=IxSGU/+J99i9GZoGmvbmSJ0e3ujnuVjcT37mGPvUHCTrDz7nkAQfxITmzJoN3fNoPg2Ibt3vo1po2iQEFGXc2WfI3087OSsp5iEIksDhVayUeEn7iD+UlVqwGCOjXEGU2vCzb5VrJguP4cmdLmK7+sqocz8wZB/dBW9YI1lj1eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qc1POgIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qc1POgIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE270C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760405393;
	bh=rNCa+fd2sjsfEXTmKON5Olhvr6jVzCGRjsfMGTVYzyg=;
	h=To:Subject:From:Date:From;
	b=qc1POgIwkUhxRxyTzIHcMv8LuKqvMI2APsywVvm1JNP+R6pT4WkF7TI2ZkzPXeLSR
	 Dzs0GLddeEHxeNeaJvsZeY1DsyimSrLbkRJ76rSV3L25G9YM6huhCTeQVVkiK5F6UH
	 D4X6GKmqB+8asRFnmCQuxjlhgWsRQwD75D7Jp+3SkSibWWkZSqqMV0+LP6WRhfLtFn
	 cxHk4dMGS7e1zxq4OoWBuUgDWAlmp5XQe4HGwxzJ9dwajL/gQH+9iKZhykXTqQ9Uuf
	 sy7PuiswEyzlmBU24/J6SYKOt84+e9tWa0R3jtPOJJdXo3GglPQSklo7UXPF9vKQUf
	 iwMtji1QwN5vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85ACCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040539359.26690.16357639732102988725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26665ecff78ea200f507b7e5ad10a7e3241095243eaa06a6f1917d840e7695b3
Date: Tue, 14 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760405393

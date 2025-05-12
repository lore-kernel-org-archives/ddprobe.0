Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9921FC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747091394; cv=none; b=JldfKCe4v9p/pkMwjBk+Cf8CVzlRrVcq9M2k93C+Lgje7aa1ifX8o9+WHEQxTAsZgaXdTUJGUVJDkm7ZwMIz2SlHW+UfymBEjyVYBJGJZJ05F6wfmVAKZWZeUvDhWd0HVkUMgl2STMl4ae/mhQHAza4nVAw0qTWYiNX1zGySvfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747091394; c=relaxed/simple;
	bh=Nbf909gDVFNSwwzZ6N+KlB9LW5U7AGiVNGvEkpEMt3c=;
	h=To:Subject:From:Message-Id:Date; b=pVeyKeXBeQdFQUskVjjeLolxAnGugXv7IoEqsBemnqUqyrdsKUldoDqwpfdnrpzkwIPzi5uj4MMp8WT3t8Tpfw5i/vbYRlCc7jiYl7XUtsM9OefE0/T2aeTFHSEPqdfgOGeJBMtbjU1cqWIRbbtFGKHR0Dn5nSDWWTKM/jRdGeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3MdngRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3MdngRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747091393;
	bh=Nbf909gDVFNSwwzZ6N+KlB9LW5U7AGiVNGvEkpEMt3c=;
	h=To:Subject:From:Date:From;
	b=Q3MdngRyTRjnFxettLS3+Myxov64zqsZ8CeR1Yb59moQh07mAxY9jxP/GRasiKgry
	 G5JAaqyqoRDpPm9+YCAf9kdqP5re3TImB8kgkaHqy+Q43Sg4U3t//7pm3VoOsCMwh2
	 btERat90qW3eGNfT/zdCGCf5GFOMUR1/n5Qf/ihpRCLe2uWdLPyppfgcnONDJepQnx
	 DKdmMuKQ5KLHy/AjZKtTz+J3mpFVsOFssDaUyOkljnL1zJW1YM8f0Fka9Cd2RyIGlE
	 t4vErGsFqNPS7HIt2zcMS03vEJxQvc88SK0QcV921vkNvcISVgXtL1uvy4nusd0kyV
	 sI4lkU95d1DBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46BC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709139357.12497.10634882071939541606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85210a2329675372019b5747aaa381d60bffd063d5a95a46dbe232584cc2ec25
Date: Mon, 12 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747091393

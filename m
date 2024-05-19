Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609D9748F
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716111143; cv=none; b=MmLXYSsxbGGqLlqssmickZa5PvibSFlzWUpGlljuCjhQye/YAnKD88NI+JOyiZbWaSHm/N5gDsroAjIqYSFXZ5XgWWEeVyh17onRDqc7W9gJz/ilYveTHM87I8cDCTwDRubdDS8SE9I3sMbDmh+FmUMWoxYQAwlaMlqH+Ru728c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716111143; c=relaxed/simple;
	bh=sjff7SHEcKTd/jzCFQPveBoOlgAx//SPPHTagTTYU34=;
	h=To:Subject:From:Message-Id:Date; b=rkdKt0FQt2zzL6uLdft73dYXYND9G8Rnrv2f9HPgV/ugqBaBRdli3fGv3ec9Z34RdUT9H375W8rQVQ0xfmVFYibGVPLy0+NHtYC8E48TTPOk66moR/YHUFI8yqxgq1G9FhJA2xz8wqPzgtLEgpgGPlId28clBGMaI3i/aUvG+RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM1RjTpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM1RjTpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E31C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716111142;
	bh=sjff7SHEcKTd/jzCFQPveBoOlgAx//SPPHTagTTYU34=;
	h=To:Subject:From:Date:From;
	b=ZM1RjTpAeZFaH/OL5N3JwIuzjgq21Mcb7SzR9YvtbYIe2ZI5tsp7KfaudLPQEzGH3
	 lkuhPUXD+8JRK1OpFotzNSdciMsgv+NadjZp8OdjbHZluJicY17ULicfif6myOJiA3
	 YSS5PY74SQhR1wroH2rXEpCwKs/JgAB0sQf83RYpsp9euveJrBN4NWPjSWRozUas5C
	 pxmtZex5BepqXi7YTtBhD73pq3WC3Kp7PxzfPkwY6eY7z74qJfVseEQisqVAbbWwSN
	 fdHL7H/KQzcUuszl3rTn/8ZhGAp8PZHdnsZiYaGk5TiNxVq+s+JTsth4XQjSLv2sHe
	 yRF69iKF/aggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC90CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611114278.26732.3767029410052695756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f4e661efe3eb2cfb7399903fa9e2bce29051f23b45e06339c1a885c2a0126b
Date: Sun, 19 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716111142

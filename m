Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554DB8F44
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720657643; cv=none; b=NzTKum3xw6QgzOsR5dg4crntRqUJUrFecj0D2JcZGyo8iSgMgkWLBtGZHkpV60vt8bm+3YuoyFxB9u75wMXuX39iADfMwixvFkAzJPFy8hr8kDoAyzNffXePYJCi/6FjXFyjo1FPI7GcP4Lfef70WM3iDEbT8aLkrBRFq8QuT9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720657643; c=relaxed/simple;
	bh=1tNiE6WH3t05cgqbB92a88REOjE7t7sPM5PVhajpG8E=;
	h=To:Subject:From:Message-Id:Date; b=CXXjUWaD3k6cMjchCUI0ETM5K0caRNc1Wk4uxSQ5q4JI5phMEZlwiZhy3Ns1yuOcFlWQSTNNp7SUxFL0LFrp0CUarZ5nIO6Zkft/8ZzbDxNy7Qm2L4zLXDAMsqvV25SqVfw62D2giTKergrAJougdmwFtIgyrQCmIOyq8/8aFDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6Urtzd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6Urtzd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7AC32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720657642;
	bh=1tNiE6WH3t05cgqbB92a88REOjE7t7sPM5PVhajpG8E=;
	h=To:Subject:From:Date:From;
	b=s6Urtzd7d/R37yODhkv/Wthi4FbP7F9VAnGfPFEG7gEViNaWPXRr9omyOukVandNt
	 ZDS9AU9NVBnqib5ZZExqL5X0UkgettPfBHfVappl+L22YmjG/EYHwied8ADI5YNN3R
	 i4FbKyligAVtx0ejMGcKw3m9JoXbPvKa78H7Wzpca9IfZgxbrTgLxkMCJE0rXv0+08
	 dKBgAWNTUzQpWYshMPpss1yqT80b0miUYpKM7DSLJ+IduhWG2cWd6ZglDyiNiqNKh7
	 WI27yNQs32jvJETgkgXAox8i0VMzqCJLBbIirhJkHkx9EsRU6pyzsT6f7m57pVYKec
	 Wd68+G5FeSnuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7164C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065764276.2559.10444744315241264127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf5d72e968ed5f3ab31a4baf1b4863555340be75cb7f4b41db0be12f1a1ab26
Date: Thu, 11 Jul 2024 00:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720657642

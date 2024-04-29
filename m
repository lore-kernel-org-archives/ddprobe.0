Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBE28BE2
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714369343; cv=none; b=dwAdoJ0JxlAEbYkwXstrHVSFP6XAbQAery420vj3s/j9oVAwdkOYU35qKEkdciE0N/vZeMYJp5sbfKOvUsPYleiMwxNat+EB8ZdOuT67CSKiSAar7DVff5OKETB5/kYss3LV5y7b3/kdQazyo6xkR0IBzlBdfEdgFMfL5Y4BruQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714369343; c=relaxed/simple;
	bh=FTzJerGBQyN+n3/DQ5Gn1f2XxUpOfqf4ICTRJj/xBJU=;
	h=To:Subject:From:Message-Id:Date; b=kie73CHOkOZDp3af/jFimiqiffoQiaxqSEkIIhykYk1co9Hb4oTLaGFpa+3hYOznSv5RorpMO9cJz64U4Sji9KJiFEy9PvkdMFTbe6Jky7zH7dC6051Gc/zQhwHaMphGsHC4xIWvI6Hur5QQlQmyCtbW73Yzbm515FZ1wCRnELo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOZq2Bu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOZq2Bu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E004BC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714369342;
	bh=FTzJerGBQyN+n3/DQ5Gn1f2XxUpOfqf4ICTRJj/xBJU=;
	h=To:Subject:From:Date:From;
	b=qOZq2Bu8dbpRn8B9OZ/Aya/2QSG2qSKy25fgXxMZV6anJJZKkcXumPProcDePvV5M
	 65zBjZVW1LbXzrqZvVTotbunRqKtGMaVTIHM9pgI0IRlj9ai0cuh12My9Fqr0da2De
	 OUWWRdGGMcwzdoi91V0b7cXCCkGxr/lWOj4vrM+NhPIV3uPgCw+VgXMeCL97qmfjbE
	 7Qv1hNUCUsjfPu0ZSAE577r3zrwQCT//raEJ7d6/V5DM3mDVZ+yFGbpV+1pehUhbKY
	 2b0REpQJ7/tDwuZeBYda2IydL+hNxj96S8iRnnaEpsrjpL+TxtfH8ZyhVraXrLi7dg
	 QcJwiU8PcFkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FF7C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436934280.9108.14487512815491050201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142188e5f37937c4aa390f646c6166ca77c5da218c9ae6e7328ced2a65846e79
Date: Mon, 29 Apr 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714369342

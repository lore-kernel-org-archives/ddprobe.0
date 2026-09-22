Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8AF4E9C1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790112638; cv=none; b=TATah5DG/DMyrEfBmLIc7nHs1IS39lJ2eT12wCsZ2lKNbd/oMpLtRVo5he+tOLli4d7jbLDHvljfdqHea8996J8pbXFPYd0TJD5vpaouaI2LpAZPSF1Za8YTwQ9OdD5O/mNPgFvNOf3DT8hOlpiy6DoBJZ5DRAb2jxss2Xij/o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790112638; c=relaxed/simple;
	bh=RvgZYFdhUcSO5rl8BkgQqPPa6qZiARVFW40fzlPA5K4=;
	h=To:Subject:From:Message-Id:Date; b=msecaWfNgwq0w+EU4PhVllTRXftCCEtVnIKRkuVSOObJlWnMc76eQq/287BSwX6sTpuuNQKNi3KuHDyRMDWD9tuIYbkra792FIzBFwBfHn1E6+aphN9ddpaALfPiL4ty9ct508j9gmUrV9+TU62KGXC8qVFjVWndP8NlDszFKMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcDHNdFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcDHNdFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CD4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790112633;
	bh=RvgZYFdhUcSO5rl8BkgQqPPa6qZiARVFW40fzlPA5K4=;
	h=To:Subject:From:Date:From;
	b=bcDHNdFQn7jEeFIrF8JLFsdnWGf0Dz3ltXMJavdXnvT1Ql+12MEo9XPxwe/ArHu1q
	 tc8ruBH/y1KEEXxEEfRu3JEVfNq+WAwg+jWuUX5xNQYJb229+MnUsqXuVMohpN/wh0
	 /sanZVhyrzGGru3uj3KNRoAPmxJeQM9kDrrtCWMwdFnGJqWpDrpSAKWFlpGxjF4f9b
	 xQvPd1/Y+24DnG6sukVUBmOJK1WG7U2M2qNDJLLqZxbVNrjdN/1Sic+h+L6Dhxg8gn
	 SBItMz/AvWAn0x/ZLgkqjyDJzRVwjOVKfRteW+3sMfSgusJhFJ/r4pDep+nFYqpAZF
	 VvivS7lNJqz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA947C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011263375.31441.6433993726046196272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc024f5a7a62f3ce8828eb427514729ce56fa01253d2e88cf46592feb82c55ec
Date: Tue, 22 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790112633

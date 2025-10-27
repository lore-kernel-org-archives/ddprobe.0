Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599DE313E26
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761580194; cv=none; b=Rc5FJTOkEbAy537+yJndzDsEmNjNvqXCLfeh66vOCUb73WERl/K90P8QcXEellhzuUfvaxtkcZShgMzPLgLOt4YSxBnzAA05pxsjXP6YMiSi3XNaPkLT+7t9LIIAEWYZ4iJlqG0kTkQ3YxREX8THK7DGh0PDp8H1Umfugs/G6M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761580194; c=relaxed/simple;
	bh=dgNc/K02Rgwqlq3/DZ8pfJB9w2LLdbSvYgvkWJrNk2A=;
	h=To:Subject:From:Message-Id:Date; b=ThgHJ0ygk0Qdv3+DFXzcJQV6jWxdJFhWi2dz7S7zjY/BPAmLLGy9OqdfHA3Om+b+HogawHe04oizOK2aht5nWd+0eIMfTODs3srPQ6D5KErTt+UiPE+j568DIzd1+ZnR4ZGKmda2V1Nlg6v5/j0Rx4HJl4dT7M6Fd0JA9YPli6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+BRRTqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+BRRTqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFEEC113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761580193;
	bh=dgNc/K02Rgwqlq3/DZ8pfJB9w2LLdbSvYgvkWJrNk2A=;
	h=To:Subject:From:Date:From;
	b=s+BRRTquFtSXJpPtS9heqa/DxkrwxldZ4Kbq2Nato4DuwqrBNGq5+m5uWFlBtF8f6
	 HZEGQLIdBkG0V59RpRtA4fHEcMAk9B8tmamuBSEM6ABhLBYdXCiB06f9+pVWDKW2FK
	 Jk4BXPhZBnsgD5K5o8cnlqfAPecIxqiCKIiVyNxxyXORIL3SGAjsVgYqhlDlTBbk3t
	 jXfazpDWfTSuUUpVPNZdcqY1MSpeXIITzUcrxX9lLy4VZfL1QURH110AxPyLRNAccj
	 0LryRsRqfz9PSEN0ik5spInW23G+2Vk723A/ANuudPlhySltgyNxTICLoGoBxTn5u5
	 aFL/KH+ki8++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB82CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158019361.8811.13178890813692514759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b4be5aed965076707061d031df92a46277f8b5d881dba4210a8119e35cd412
Date: Mon, 27 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761580193

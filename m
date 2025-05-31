Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D22CD299
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748711994; cv=none; b=dLP54v9bNv0+Kz5Ill8l7433sMqia39zytFTNuxOn77Pheg2ZMRllaNCxQ8D7R5xKhEWJJ91ycqtOZw95pYF0Hr54Aa9kDb2Gg1hzp4EmXAWAlRdLJxw4SdJXBfXkvavIqkM2lkS1rTsiUdjBXdh86aiokg3oQBFtkZHSfSfTSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748711994; c=relaxed/simple;
	bh=G+W6VtKW3eywJsX1dQYc3RGGJSW9D22WttMV8FQQuSo=;
	h=To:Subject:From:Message-Id:Date; b=qmiV+BtVs0oFHajyyHFKxm+u+GVNrLdV3KRnM2cZO0Yy6jCjDZyxrzJ10hgmy0NVPfkrqBCVVch7h3weiTHLx5OOYsnJ+XMMsHzOaESvW/mAg0CdZfpW1n1wdKH+e5il36LfWl7DINO2gvkH6BH0oLF93+gTxMRtPis1xkW+5iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyWTo2V6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyWTo2V6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E08C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748711993;
	bh=G+W6VtKW3eywJsX1dQYc3RGGJSW9D22WttMV8FQQuSo=;
	h=To:Subject:From:Date:From;
	b=CyWTo2V617xICzUO2DhJ7M+jgGsHVTIYldNbd4NqDvKXZDAZZi9svTnmQFqqhigus
	 SKXgDwaqCUSoZTuBxSBMCJv46dFwb3mrj7MyPHeTWQ9dpsR7eQNMepEfCSM+R+JqI0
	 qBK+vI5LDSz2FnYhHeWybhjzt7Fdudu7CjkM4HFodEysOY1lCF4dnD9AlJQOuCarAC
	 GVbFGELKiunNODjlV8VuH9fQbk1F7XXmMjmvk7oVMkRMCPO4ec5IinFrlJuiPqTO7T
	 ANcUpTJv725VAwhF4j72onfteJp47j5e3GYOujmijgKFJPmzJFbzzLktvTKChR+05q
	 9iGYTmzm1gVYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90284C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871199358.20876.11457843180521433760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b2b2ebee7ebb653650c5885557df5a0ee89f52bad7063d663177655dddb6ec
Date: Sat, 31 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748711993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AC236B072
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762883994; cv=none; b=tGqlmK4FQkWaxYHOGvRwDTsU0QYogCUep98v3ghVX4aZAPsUQUI949SeQJ8l0pcQtLAfti3yWBV6brK4tFhgiVs/nWEvRKuP08h1b8GikCJEwGYAaA3DCjT54Hd6x/g5+8xG8XnLH4J1deSSzlabrqK+c9Z/RFCJ5rptSV2YV3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762883994; c=relaxed/simple;
	bh=YE0ieX7DCm0rQ1nR7+YYDFVtBqI++oNk/yCKk4MT6pk=;
	h=To:Subject:From:Message-Id:Date; b=EY0YVrJnf/hP/nVNpS/oPttrYeCtX1nFqyE60DibcW8J3PUSIYQn1gx25MISnuoT2IRYIMAXdmW/EHdA5krKPqmHVN5/Wf4mscq+0QSmY3gmilfXoEvtFd/rzONkWWJv3wytvT2NnSqqtDAZkS3tTPzN9CAUR3wnbpeDlWsGDos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9hTecNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9hTecNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF93BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762883993;
	bh=YE0ieX7DCm0rQ1nR7+YYDFVtBqI++oNk/yCKk4MT6pk=;
	h=To:Subject:From:Date:From;
	b=e9hTecNpsl4JaFQtJvGb+l/mkbvOfVyaLul+rjJX0c+a6UWI37+QsmWSMyiPxUYfh
	 wt8zLDhLUwZ1mmAJMZKqwJJvUPjO+FXeeyE/9evscq6Rje6Cy5Fu7sCagK+/kLsjpv
	 Jp3NF7uvhR040k/BKn5PlmO7ZoEXbIHM7esCYsv4gFPAdWX1RP1Xo4ngQgzKRe/1P9
	 EmIFh43wPanE0vbgADo+wSjo5EBz3KmLxe+CUKimzTkNvEhG5KGBDxFR8tIuurZRcm
	 GJgGV4W+ezOTwoxKa2OUz/E/bQR5N68HAdf5NVoNjPiQYUNPRLp3+Ajj77OUxtKsm/
	 rQKAKjQe0tr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FDCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288399358.9343.12648103644679657907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ca0f5b24a76c66e399937a38ceca30cf541c59ac1413063f3a0e8bde1c5b65
Date: Tue, 11 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762883993

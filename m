Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65875305691
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785880234; cv=none; b=JJyDSgQI7W9TogmhP2nCKxlnC3qbb+tlgJzipg7+InooF3112TBroyNK/Fuz5F4nJ5eZ3YmdjZCr/DPT83jlNWMge+swb632mrsN+0qMsmrSHW8cjSPzgoTFfkhP7w/fdSY/mrX5QpqU1k6/exWO3xOBU7eE74mATbWfHhCGDik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785880234; c=relaxed/simple;
	bh=gaHKSY/WkjY4e8kimpOqshEd+cE0jmL+OCyUjHfoVqw=;
	h=To:Subject:From:Message-Id:Date; b=XL9uAiW8eVK65qhjB9Pn5LIhuIRhZ7Sp1yCGO8yshgKn+JosYuWfiNyH7Kyi0E9j5o022AGSc9CupO0QjtzY/SNx21LDzEopj24C8eXd7FfDAwgEOSMEGirtVpD7R27RZLMpwhlj2JbVt1F9zxnrpxJvJKPdMV+xDFU0D2vfFwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F89i5bx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F89i5bx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86ECC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785880233;
	bh=gaHKSY/WkjY4e8kimpOqshEd+cE0jmL+OCyUjHfoVqw=;
	h=To:Subject:From:Date:From;
	b=F89i5bx6Yw6drD+7R0YAJEsjPvxKS/DSS58k8RC6hQgdx/LEZDo+IfM+mQ8pRwd0j
	 YozA0dctw84atRUK1lmupLcpU/jy5sLQ9y3xbN+IKsOqU6Wykh8hvipEsHN12nydKr
	 zBXB1NDF2kR4cmM6PHlO78JUsA8/14QiuLjr2cYVP9MmWZi1pTPUIBmr8ws5DtP3QN
	 vvOqiqKIPHfcmi5e1WefOXPFbvX/eghs08orUYBINvFk0Uxaywfm4rqf2hAn7qsJlX
	 /DdazP67oiscdF5FocDBa+ia5ZQVUpKg59yO/HRlDOv3wSEnbYoSlSUqFMESaJBbN7
	 q9doDoebiGyfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1043C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588023369.19219.7024023473941373934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467846363d90158195ff20c75d6c7eaad6a3316c4fa27da5ee63dbb969aab16f
Date: Tue, 04 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785880233

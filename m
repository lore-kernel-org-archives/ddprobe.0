Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D43C171A7
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730649354; cv=none; b=d/gyVDdur1tRsocUG4tR1CXfXR07hkfQD/B9OOZdSHr7XGtgkpWWpuuL15iHEEud6z5adTfT7qZsmksnhDWinV33BmcHAq0zSFJaFv9pJT6fneURDo3k/VDliR9owVE9qAoEZ+yLn/cS2EmoUMWb6Qci+hwfPAJEsLmSBJyuvtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730649354; c=relaxed/simple;
	bh=9cFXbrZsRheyYH+K8xSUELn5aNDf6O74xipO1a3QVWg=;
	h=To:Subject:From:Message-Id:Date; b=KSoSyoCLuWxDhBCBpxCqaK+oP3ZHpVg9WiFWGGyHPaY8n+8nGi4DIFSFWfLBnu0WJY7yhYpihjqma4j+e5JiodsNEDg4kVDbMDtEDf5OkpFcDhJI9eXxAJDVGObDmq6k1HM64e8uUe6yixyRxRWscn2lsOfwTXcSNED7ydxQK+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZfTqDYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZfTqDYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A976DC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730649353;
	bh=9cFXbrZsRheyYH+K8xSUELn5aNDf6O74xipO1a3QVWg=;
	h=To:Subject:From:Date:From;
	b=sZfTqDYTH2p2QT4BnoVmYi9vhhSn473DOwQvrj0g+s8XWVeTVGJUM37+Ebyd8zXXK
	 jOTMa2lhO5RaNKQnoXV+nfRe45AvKiEiZaHHPB8fjm5ypozA02n5N2/gFHeD51BX5/
	 J/5S6M2xyLp/7FX7O0DldUxr7Z+wgPlpKPpE9pej1gh2XxY5thVtfnAnFuP5hqvPwO
	 XTBKCdIek4K7uLX/18RIcy1aiHS3ryJnw2mdHzZETb8uqkO9Ej89ndoSQS96ShIWPK
	 rFVncf3KBypAsvc3jaCsVrWrqNrpdwtNQyLqcY22tZmL3+WT/2asxbb0pQYbAv4OSZ
	 OYdpBMeLCW9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC1D11141
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064935358.24363.7644986642763879275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c82a48582f40d629ae3d0262d4ec099ccbbc0771c1f5cf265adafe31be57bb5
Date: Sun, 03 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730649353

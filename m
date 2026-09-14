Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92483D5221
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789394436; cv=none; b=uigm/evo6U7p/cTsV/tE5xXIcTuFZH7ERmzVICGNstXlZiq41atSwURMrs3SFVOkhIkIkelnJFRZj467owmKvUmj3ZjZ/ze9PbdK61EmbZjjRS3R/kHrq/Ul0Frl2dc1tKhzIXmm13G9mOZoDAmYjIqYgztYuP2JgaAAMkUpF/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789394436; c=relaxed/simple;
	bh=FuiKIMkmFNrf79E/LkeOQSyx+dPtT9QP66Ma2GRxr6c=;
	h=To:Subject:From:Message-Id:Date; b=FTuDJ8wjhxWg4svZucxuRj9fq9ddIScQaSxa2qeh8spQ6BBjOY/0Q6LcLLm/jNRxpkhZgIm3aJr1Qbkg7bcRdrofUM8md4Q5H4+0PiRJVlDKQAdSggSbYBOfK23F+22LJAohxCPDrvfxoW2S4OQA0NsDrJLcyp5v3kP2f1dmuB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsxL9DBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsxL9DBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8535C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789394433;
	bh=FuiKIMkmFNrf79E/LkeOQSyx+dPtT9QP66Ma2GRxr6c=;
	h=To:Subject:From:Date:From;
	b=NsxL9DBCYmqT3bN1hMqDZ9LhqNDpE5XTrW+SPa/+Dt4yXzpKZPdF8Rtv2QFzVD6zK
	 yiO2gb5QJgCBkBjVJpKXwMuaCp+zLpPwbMftYUFMmFu8tAqP/45uTenYgLWSRTQRNF
	 N4qNMOhXsf8Gd7BQ6P23kn5r/Lnh9iC3U2Qd+Y2y7/JWrbfOckxsyQVVxdqMlci2/A
	 +ox0g7w5562xNM0WnGofov9sPVK2QAiQ4NehNtYGGFUg5fH2oVUlHFjc8IA5A0rSBg
	 6HSAL8823wAcxKkqJfnXi+fSV73qvyHILokODQa9RBWKujQ3se6tSaiJX+XbnLW+xJ
	 qTe/125WMiSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0ABC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939443370.23138.11892699120756140605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7012d61ef2c4e23615950083fd52b4ab7f3d106e219f60fbb9b56834cf1883
Date: Mon, 14 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789394433

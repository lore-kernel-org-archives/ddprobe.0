Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226881DE3B8
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732649154; cv=none; b=LKVvt+CtYEw3l/LUCbiJFtwkQztMqjjbsuWFsLTh8ELHbwb/Yp14YJxkwcqN4yLIm4yzWIYd618SR7OKE/wNvzjeYFFEQ4IbplcxLyyz92g6TOSfxeR7hMHrCNag2bS88aVAuW3yo0UbFnwPlXZAX4OMo9a0zQm1MR3xl1kWggU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732649154; c=relaxed/simple;
	bh=RsuEIMUQCPhX4hR+NxvejM5Jat5leSaY2LEKFyrqYUY=;
	h=To:Subject:From:Message-Id:Date; b=mKPMwuzHG4HqmgVeo4iCKfytlGLMH6gaObELjjkYI1WDQPyIBfq69WJxjPKwU0yJEyBr65QwwjEWmJayXJxvPE9ltSDoryvUSmvyEQ0H1ExAWubqgsyXH6mdgeErcIWZ5GRN5Q5tBB8I6l6FRtW76Y4ZRODTe9kPPXHBkoFuuSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfXHz8KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfXHz8KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB7C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732649153;
	bh=RsuEIMUQCPhX4hR+NxvejM5Jat5leSaY2LEKFyrqYUY=;
	h=To:Subject:From:Date:From;
	b=RfXHz8KWrbQ6Hp7cDssUTKvPyU23zefZXdX2SB6I5mZOf4f45o0gpDF8hPmRY52jq
	 v7e/73zqA/+CTnX/JjDuccqiMvb/t9w+L6m7XLscmtorDUBew4iGsjd7m8QijFzfsH
	 G9Gdwf3uoGYPZ46LnKxrwQRykQExHtweLeGyWKaYaif6E9ugC/2VutPyCJhWUC8sOM
	 M9Y2mNnf4ZkzaRW8NjHg4z8g8jlrJ0dFaepIs+3gyQQcqKoWoGaWzqKsObsAr8LD6I
	 PbV1zjN1UrdafXB+3o85WEfEMNZdkDSrG4FlEmGwqH0dgOk6PIQcvs9xEObWjLHsHQ
	 6Bkl4nBe8llww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA0D6554C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264915358.24336.7497434405792242358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c235d5bedd9a1c60ebd69a2ca1bcec1ee2359cb7212449a1f1b0b99a2917e47
Date: Tue, 26 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732649153

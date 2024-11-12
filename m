Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C919EED4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731392754; cv=none; b=Uu8UIbiE098IGulK1a0VAnNDJx5HifKa5zoqoP503WigXxrmMwOaSl5YKuR/IiGxU9P3BWnOCUy8ddk5upQmRt17zIIhB4eti1480PQLhonM6ogkZ+4ocVyQ1YwYjDzNj+v7CDvZftmD0LrRaOAt3yfz1omRepK4V7ljYtaPyIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731392754; c=relaxed/simple;
	bh=O/VgQXP+yXNy131UQo86cOBJbpwUk1b4+SZo6VAbBFE=;
	h=To:Subject:From:Message-Id:Date; b=jvW8bsu5mBKm4LlEOj7I10gtjOSysPfKAMyaxtEoQMpXX8ZeZnClF3rSqBBWBmUN6ZuJRSPlGDRMES9Yt35MZKABpGdQXTyGreC6EVTQdukD8xcZkpo+OHDuZ3WDtYLMt+PCa09Jxk7n1Lca/SDFsjGBJofxTI126AuTzCzIjCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjrcAJYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjrcAJYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B05C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731392753;
	bh=O/VgQXP+yXNy131UQo86cOBJbpwUk1b4+SZo6VAbBFE=;
	h=To:Subject:From:Date:From;
	b=ZjrcAJYOpWFvzc57fMlIlrPWYXMLAerwVio5DV2CKUxRanM7cfxwUGU1Y45uuFLAu
	 Ejl3Cimg7O0PZJOtJeKsGE4JUH3T8E2dThsg9rctKrYtVCOlknwyrMrQwzx8S33YTS
	 JXcbEMBmcJKPmn572z0QBHWM642lppSi8IHpGAvrUa1x6DbBzvXfy/WvQm1B9pAI3w
	 3ZOP13wTiAhUE7sOWruyaHLPMtuiuZVcPG2I6iVd6buEa5AeeDpcB+jZBq1Rt0MLrk
	 lUZsfhjnO6UVyQgA2M0R2AFBRXuQ95SZHp+AvwI8Rj1oQUe23cBJE0lDFDr5XMvui5
	 0Snc+7OcV3YXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B03D41D5E
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139275364.17072.13679525262011568172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6ce0f7f1d3ef0f998ab717939f7f01e867cf580e2d8b4cca3fbc81440df1b4
Date: Tue, 12 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731392753

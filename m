Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE101DC9B5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780809274; cv=none; b=FXGf9dpUVBQ73zLWxcRDJ+xlYs5ikXEYbWrfGEpF3e2SLG8tJqgx79Rcq77wXf0V+msRnuA6uIRzY9EuR9Tl4i5dU+wk8pR0JjTMKKylQ1KBstKCVh0NSWqkU2eA1KbMqpK5YJ53cM97A3E7B9KBjkuMzwREnGnmtoFHTbPDm/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780809274; c=relaxed/simple;
	bh=eo2nJgQFVwUkbA7mi2P+l3DcV4MStZoE+eTStVzZ4Ik=;
	h=To:Subject:From:Message-Id:Date; b=DaVaVvrNGqYxUNfjI2NmbhMScXyqz0s37o9+AZVXEkzvOvi+ruMXEWLf7FHV1VP8PysrpVfMAxDgiApkNP7f+sQGIm5rzbptUwtBmiFYkIKane8O5nfqbIz/r3AhEAQOjJAtMOcuxvs+7bPLK8x3LUv52/lS3Fu5b6FBMaFAtQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQWd3uSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQWd3uSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C49C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780809273;
	bh=eo2nJgQFVwUkbA7mi2P+l3DcV4MStZoE+eTStVzZ4Ik=;
	h=To:Subject:From:Date:From;
	b=mQWd3uSjaQhVok0zvoJbO2L9Fh+9flbBgvet8D00bQwxW3ipSgtW4rSBe82ZkkId3
	 W0Up2nSSiFneanFk9Jquq1fbic8mhUDOo+gqa0bo9qwYEvOGPpoZ0/6MZefuw7LMET
	 4SVJydKLm9sCDDSD0088ES27X8K0J+Jv5r/T9fzuJLDvyDxkXAlR6WaZUDBARUqrLC
	 +UP7ezCkJlc8rNBEbeST1+gYHG9roW9Zd9RIzse1Sf6WIdA9zeV+iWdq5cjyfuPM2a
	 iilu8BHbMvOEP79SXTZoAYtxq2t9G9yGyTphfYqjAHFQJcwKJb3/IuAq8H4vwmxYq1
	 GFKpxyUdDIcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D82CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080927369.27551.8077954465893495114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac44c72b6edc842b24fdd5b0d5a86f2457599ae5212699e897c1dcc48afe7edd
Date: Sun, 07 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780809273

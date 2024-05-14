Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51517B657
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715657543; cv=none; b=OMktepsoXakWj31DwEA9JZCX5tMiQJX/QdVJB8fDaQ/yr3VbzAbl/2JT52VLx2J9TFMqHx995uduzq0gQdOevYcHAqijCFr2ncIkexiPUylNKRXzVIAQCvW4vopf3mL1BrGuglzCTFGONfgxvr3c2xEC5Hh7qTcd8qSMKqAAPIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715657543; c=relaxed/simple;
	bh=ANX3dqR5wIqTOyvxs/Z6o3M72Mq2OWQUtl2CdfoEgA0=;
	h=To:Subject:From:Message-Id:Date; b=WyDNIoq8mzKz30k/iiwjt5GnEz+PuFPgE2G6UGul5CHRmljsNodp3S+M5Ucx+ddIo/H5bMiFbQt95Ddc1OYAkcZ0DdHyPUfjK1SIaTD/XbWnMPLTk9VTWGl9Y1Ph+ts45oHxHOfdwJuKw/D6tzH38Z6mvY1CvR9DLUvRmzg4c3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glde3EBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glde3EBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06C2C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715657542;
	bh=ANX3dqR5wIqTOyvxs/Z6o3M72Mq2OWQUtl2CdfoEgA0=;
	h=To:Subject:From:Date:From;
	b=glde3EBo3WspkeYdDuaUbnPwlXWvPhwJGCgX16GKA+mM7uc+iMMM71l25liYdfETQ
	 jM9uBZyRWwLYj1kOZ9TNGYFQyeDuDnJL1LAczqaI+tR+k92QXo0Bic0NJkquunQS+w
	 hWqSqjbSZxGCXsOjJXLwaLtVnq8a9kFHBh0GC91CNk+PV/K7QyErmvSkpfV20R6k8O
	 wjtsVGjwch/CO4oThNg/ErScB9SJs+xI2uKOwhhJl6ycIJSMoGxeyuuCkvv3ACWdB4
	 Yjoh9JKSxaQxByL+6sYNPL6m1AZ5hA6y/oqr7A2iYS2EW3O9i3NugWPxJznVw1KSiX
	 TFb2WGmWROp4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFDAC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565754276.11590.8157633617888770220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b77b8f4204c54a8addf64e19fc63c68c3aba07edf8d5ef5950bf759f6f7dc9
Date: Tue, 14 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715657542

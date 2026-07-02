Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F30370AD7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783031914; cv=none; b=KnXRYtYMoiGWhJgxf2+d120ANlj08ZhLAEPND9PPwzL0SygsmKec1O1Lgln3JnCGJIpVc5l7pxeifK3u3AFG4l7YFw+Z//BBqhvBUgJe+RhuBvgZhEi5g5mgDCUIixb42ATiXRg1Qj6+hEX5vvGNLGbgYPunKRFvE8oGSGHVX1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783031914; c=relaxed/simple;
	bh=gofeA2ROnyguFxWf6Jpct46AzHbRxzaxise4tqorPig=;
	h=To:Subject:From:Message-Id:Date; b=nolAx4NYSBW3iI5mzZkCCV+ltv4qyaNlPZ06nQ3NibXxYkS6BowzyJ2OWUtILvW4IQvcVSB4r34SoLj7/1RtpbceTzno6vNo5Ah+r+48w2kEa8GhPvvU81Hc32umR1x+FqxmYLSHV7Rpb9YLpcEUPH6+1XAcRVwjC9C7LPs4ZUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHs5ZsL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHs5ZsL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAA0C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783031913;
	bh=gofeA2ROnyguFxWf6Jpct46AzHbRxzaxise4tqorPig=;
	h=To:Subject:From:Date:From;
	b=FHs5ZsL0RXAHq8YEuGwOllkdDiWYZ7O8La8uEPsmy9JCepGDD+BU6hr7kYOraHL3i
	 fvjTSXaWaChTlXHE/W7Ew42o/jeslM1kvVhjItbTtv2STzY7axASFmQMbgQ06WiX58
	 4LquhLU/szQdbFtoj4eh9+/B7aNJbeHTvLX0Bfea/igVRquHK/AaAfbxB+JQZr/wHk
	 mYjJdPfVgAb+cFCG7S1OT9H5YleUomSY9IGeXQ6OEiYz2fzDrrrsXYv7SbFf0MTd4H
	 aDE6qdEov/9OrcO5RyWk3+Db/PbEjHQm2IREWfrR616XTls2hmNjwWXwIWWXWhMUJZ
	 phNA2E4He4DMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBDC43602
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303191368.16040.306176062288048915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e28151c8257d6d77fa4e2438835c198ac85e29791b00d52278c49a13f12626
Date: Thu, 02 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783031913

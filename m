Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB418641
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746085796; cv=none; b=j5tIqV2ZJ+rIvxekGYn5rLv2mmAQsGmZx8za6GkuGHk9F7AwkMPdbzKUf8vBML1WeBSIHzrMh6lzTbQUZpx1XDU9vgj3m/rQ4l3l0ognLX/l6D32lcXfQRWNvQFWNyfq2xTn5EEf1EwIBZ3WK22rDzmGUjTBD1aPf1RPbWYD9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746085796; c=relaxed/simple;
	bh=n0yb0pqLax3aBqHvcAnurQaHorrl9Xz9cwkZ2tcICNo=;
	h=To:Subject:From:Message-Id:Date; b=p8eCTLj/JagsK9lR5YxVgSHXaNdDQ4QwnrpZBnqcIes0Ko5gDIkVvKvc4v2RFfAOh9tVFapW+T/jTmi86TZyGb20IA0n21RcWGtRN8oYvvO76zFiGM8rMxcyNLxehEaWKk/zwTbInIfarp/pvmGJI/S57LOpAB4lhQ8KXKkTQRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzvYxlbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzvYxlbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4CBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746085793;
	bh=n0yb0pqLax3aBqHvcAnurQaHorrl9Xz9cwkZ2tcICNo=;
	h=To:Subject:From:Date:From;
	b=KzvYxlbvR2FRSyiDjWsu1HPRFL/Nq+dvTczbtwxvjSL8c84mSeUwJI8WXJYLZxr8Y
	 Yf3Gn55ITpdFcOqGwSW7iEDn1p1koviP7M1VbfJMNcY7xZBnQYcWxuwRTm5B4pgFkC
	 6CBvLJDDh2px/9a8/gcsuaXfhGv23jRCPz8U14L6SQa1DJ22G7U69mWHtjh9LtKlrM
	 rzxQBIQTRmUMJnjs2wHLm2F0smEC1iHijyipdbxYxgILEvDQhQmpuz0E2PqGi6kveG
	 RrR+kJVrAx7BwaKv7OYwii9HbdAtCutMWnrc4WowLGBudOT8k800/dA38snjy/XhGF
	 g++QY8N8duW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAADC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608579357.2179.15437179259089383148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c571fd7e8b93829d8237a073fa0a1724e162af2b6c68f4e61e57a6b3c59f7710
Date: Thu, 01 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746085793

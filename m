Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE48082899
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764500573; cv=none; b=Owcn/iH1xTackjdW/62Sy7T5wfdds59n+wrwL6wtMjxyJGexjJncwACTqRVUqtLVywLwkMUVxZMWCBFu3JxEfCn4xXQY0mPl4uXcmQ30LCudmS3tSHst/UmzhYunzeoK0Ovln7ID8WG8iAdydQL8UPmncIMQNXntwsdV4EiXvr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764500573; c=relaxed/simple;
	bh=oermgYfLlAF7mHwqhf3hVxs7XBICmzBWgK06YuPIdqU=;
	h=To:Subject:From:Message-Id:Date; b=G9H/BxYQxtMF1S3ZL5UJ2RkFXoJo8aN5N48sOXET6PAZNUNHV4kBr38mlRXz/iGx3edLnZ0SH5oKOTya/niJTzm1zXdgK1cpY5CeAhNdiYG30IM/xBndsquuvg6cN/NLeRjXYWPS7aaUFerSfvJtPWlemai/xZiR6lQ5/1L61fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlo86Icr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlo86Icr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C3C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764500573;
	bh=oermgYfLlAF7mHwqhf3hVxs7XBICmzBWgK06YuPIdqU=;
	h=To:Subject:From:Date:From;
	b=nlo86IcrohLVLDGNa3mfK8ZcZ5oPkLWgPMGg7AhGo1fRUOGMvKMjoM6sNMvz16UjG
	 9K27UaI4WgONgXWfuRXbNO5+DfdC7CrvY7mtGsDLyq1YFr+rWbN+8XhWaIFubI1aaP
	 DzmoUB4dAxx+stj/ehF96W/uFhJrYPkThCotJVLfO6k2f7xhf35nB4Mhe2ydC/l7up
	 s1Sg1cEEaYA19MgRAu8fkQ9g5OYIq/ZRCWXaQiZTKxHJs4bqCm0AL3TWf5mGmqrITF
	 wQxOJz1h+7EuMC8UPiuNXQ0BBCxXH8Oz3YXVK00cL0d3Ch9jGIHKiOHrpXLcxv0tfd
	 TD0rtRJMhYLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C15D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450057358.25133.9939705787137431254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d5d85485e3977e6375f787bde730057356fe2d40cc03b8c95fa6a712d82451
Date: Sun, 30 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764500573

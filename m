Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D1A39A070
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780426474; cv=none; b=kuYXNWJEYNffp4SFHcdDox0rls3waqDPHXds9IF1HNDAdU1IA5reKFgBY9zU+v1XPQBo0buK31GWDm5+emTf2qAnxNrDtCBG4KReeMuhZ9H99mXJFy0EqanTUmj49Rcy+KaAApOCwT8H4jkhiYvGXBATRWOiSlTqNNdB7/tk8Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780426474; c=relaxed/simple;
	bh=KoVJ2eNgzresQfzaDOCpynShGLbwzWv0yCvH0rfNjwg=;
	h=To:Subject:From:Message-Id:Date; b=hsDvtRz77r+ldM1gk6pPxYWV/ZPnFiDj+kWEbkUHcb//Sy5AU5r+U3F7c5YSb9ybILfZgUw4qftXuiG2NgOUAZXSPavAVrgoN8BjgKUKLst5eqL+grKqwj/aQLxd+Mqn5OsxcOx3x8Tz80KJHaQ43jHqfZhwoI9LETzSTA5MWcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt+s9Th/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt+s9Th/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A1CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780426473;
	bh=KoVJ2eNgzresQfzaDOCpynShGLbwzWv0yCvH0rfNjwg=;
	h=To:Subject:From:Date:From;
	b=mt+s9Th/7TBjEMOZF6iKDfh+OqdLKZiF7hY4xuA/hCf16Abo7hugnKvjBmtxWhXwi
	 eQPJfzFgp0RZrO7dPjfBBt2j5uaYKZjvMAp1B9pN0Y+lPcniFTHvX74+CBdUqE6P9q
	 72Q7vOObGs1267h/XPLc0hH8Hg7XCHEcIRdAVP8N8lHoeA8uETJg89PjV71Rq4aKkM
	 ZzlEqlYIHoEw9dRstLFqLuTrxWkKRsJkkUVXsvS81pwZ3NvALZmLsLmj0I5lULzw+Q
	 +wSJXjq4qGCyjs4rUetlIYOjzt0jO5keA8UG3Pt6d8YkptGVRIoC6oBYWD4f95pfpC
	 SE/9n1E7FXYpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A7ECD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042647368.25839.13540019585425884789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e05eb02329e8a7bd0d6e184d31b8aedafc16d58f6abcdaa6a92839041649d2a
Date: Tue, 02 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780426473

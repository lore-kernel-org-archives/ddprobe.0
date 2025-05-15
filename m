Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C691A5BAB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747320594; cv=none; b=ZV86CA0LPM2ZSWH7Z8Flu95bTQSMeW9klynC5UhQjyTSBPujiDIIJ151QHpHfHY3ES92L07PIOTSCZcB75wqHshk+98ThSccTU0r7yVRWe1GUdBS9mmRtR2n/41fMpH62L5Fsv94JHVdDZo+IvkdOLpSR/+K7C3glAFLFI+9X9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747320594; c=relaxed/simple;
	bh=1X/4Ykeu/31by5q4a0vprShah2ULUXWnuafPBPHZDOg=;
	h=To:Subject:From:Message-Id:Date; b=LzG0XN4kqfR7XO+PdJfQlrvyXzOTnXvlNzhQt9IeDv4OeIZr0ChgRZ57SVkzuTPBJQpxM610gO1vJspA+WTzdHTxlniWnDcDZszpYfsUH/TO+ikCJu9oeMzpB9ry2GFnK0ljCMuu1JZCflwSjNHUxDM7TMtu8WnkbuuHfcB+lMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFUGNnNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFUGNnNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5688C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747320593;
	bh=1X/4Ykeu/31by5q4a0vprShah2ULUXWnuafPBPHZDOg=;
	h=To:Subject:From:Date:From;
	b=HFUGNnNNMiZgRgsQsGHaHTZA4JgXV+1kuuKIXmPzrj2wbAAl6S3qcvJZOmiA3kyL/
	 d8mTidMeSDJr/QmZMAetpKmHijJUGU00sdsjDSJmhWdgwkUnZvsioHyeoVsnw+Ek4k
	 EecDzFGpd/PPrN+4bFQ6MoX5pGkrLyS/qLW2nhfv6fVDGyS4T7Ix7JIhzLitSU1KP5
	 JeKgC7Jl75XB8CAeDkhNTqVkr+q74EFfHGwvV6ZhdyeKfSjGelgb5AAn2WGudbPFQZ
	 nc5lhdfc+9SDkVWvUjfiDRZsJcsv414n8Vbu0WJC2ke8jLvh7ANHUjkqcKnyIbb2Qe
	 lb73mjKKdOW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90027C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732059358.28344.16321648537924252454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b69ab0e8b8b90a0106c178499ae8df96f9ca09fe58ec632b1b2ad88b0cf3f4c
Date: Thu, 15 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747320593

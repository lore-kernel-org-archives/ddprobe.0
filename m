Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20529DF4D
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708917497; cv=none; b=KVg7/xxsMAiPCDKf8zxyOV+jYdeGOGWsV4+HEn60NZOoX8qcf3EKN+q4CMxxtbkrqoVoTdg939CJYYR+Qw0YxMAa313xsr69i5b4BVtP6eOgYozhjPlvdpwzQjYAtONzvVwDz6C3QEeP1JW5uCyF5txqpgm/jN8fYlgP0m0IMDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708917497; c=relaxed/simple;
	bh=PQmiQo6kHNiqEHSQP3jvYvYg6VRc0P7EuzThG5zhAkQ=;
	h=To:Subject:From:Message-Id:Date; b=ccfovhIfgZTQafiqHEd2dvM6GhEReKXN18CnHLEyYSN1JzCpmzTheVQD7cULSTRHOLkk5qdqQwX/wy5gpeXnvK4lA0d+wbDzYS0HrUdetW1QvhXfLQ2bGnD+yW1dgjJwEfVjo+YJhTc7SJ83AQ+Txdgd4QCSw+FLzEJTiKGPs0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhxJPxSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhxJPxSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DD0C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708917496;
	bh=PQmiQo6kHNiqEHSQP3jvYvYg6VRc0P7EuzThG5zhAkQ=;
	h=To:Subject:From:Date:From;
	b=VhxJPxSzB8VZkEJG6OVyzaq4nRv24E7zce0FX3gF0b39pBOMhc74LPX5jHDMUsiFZ
	 YCVQHp1RGSohaK0HyEi9T8bNTj6BXkTR1O0w9yMiCIcLqqFEysz9Lv99vCzblcbBT+
	 /AN3z9FBeTedd67GO10Qe8VA+x4+Y1mJ28hMOJiCGqqBXZ0N51eurgxRXKNEtYQ0aw
	 amFjSMV0Esf/eP2RDLpzrTGKn/YolXTnIVlbiXvSTdJl2s+1e/z3hmxps9BdjnZjyL
	 gRtYwnhF0VVkXXGZXqW51fBolMq/NPo35X2erjGq+VkcdA75A9TvLdXHqLZLdjFkme
	 Qb6vJQBH6EO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66253C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170891749637.31796.3147150312024872486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440c1b0b8e336a1c440c9fe528cbdd669c2a5c9d97e4974ba70396f27328eb13
Date: Mon, 26 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708917496

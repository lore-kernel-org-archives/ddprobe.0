Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09D13A872C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778585433; cv=none; b=h/YbEGT8ta/YBeenw5U55PbJVOl04LV/8Ww0QbgOJv7HhTK2iGbe/0ukRcVng2fDH8R/26l0swJJ+Q/q21+QEu3D/WAMcuK2p2U0ldOJXwbl7SZYRmbeM4DvTTqHM65dGvnNutWN7Rr1VlgTckoEEwj/kAgaLyVqSpeB85vm4GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778585433; c=relaxed/simple;
	bh=nh1d0SdXm8+aE87Zj+/Yitl93mWtGRd4RbUgOm78ZnY=;
	h=To:Subject:From:Message-Id:Date; b=IaDJrbcKzwd5hIHkPi3jRlsLLsG0wPXHE76lao3bhXRVHSqb0cFpZALQwKk7N8gVLOF92HOZd3zjIh55Mj+iVyJKucZoVsZczpa7ZtTj8j3zdqr+BHodNYdAcooh/CavPSjgxD2T/UVmDsgaoi+Jz5APhc44LNB9k2CRfQ4FxEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvV+T2yU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvV+T2yU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3884C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778585433;
	bh=nh1d0SdXm8+aE87Zj+/Yitl93mWtGRd4RbUgOm78ZnY=;
	h=To:Subject:From:Date:From;
	b=bvV+T2yUCIS3XugBTJbhLQI2DKIHjeMKMLKArKd1043INn7qdPB+l3pgDuZ/QDABd
	 C0zJ/dW/W7+Ov4FcJU7tmAehNBSgbg25OMbjpOsvx9HzDNC4h5QJbnqPEu/vLBSMzf
	 dEeOi7fQWvv4hzrN/OFpzmVQJd3crnKVDyEsMQLhWz0ePMhVP3LzxL1tr0TUH/Z/06
	 82PCRXBVZ9obVs2ecmPL4qTzVD7axQzycFHUNBGxZrkjkYRZNmmI3H9d+LyWVrYWIz
	 fqc2ABshqlWPJfiQlhGwH0dAZsYiAFiLpVNIGlfhAbm5JRxYwCePVRfIAJHYIL3zfI
	 IlpbKYybJfcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15ACD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858543368.2888.2504328315638490237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4e263e98f85b342b357f4e79e2f25d5af7a4c1aafb0f5983fbfa1d12b05c1b
Date: Tue, 12 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778585433

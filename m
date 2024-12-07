Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE1C1F602
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733611554; cv=none; b=Gb3ahmSZX5soQCOLExzh349TTd2WLzD83Th3Ev2eI5MoVg4ji+UDkFpLIld529GthTElDhL2KzTRdSKFMSSeGIGTRhu784h+BCJ0ohdtqrAA7mKm7pKARLl5e0eJXJUA21EpfjcotrfFoxGcTE2zntarzj2WMkdZNNb9xX95aHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733611554; c=relaxed/simple;
	bh=GckQiupAp1sh+ZndoWHY8wbKIPTmFnKkaV+KYuoKOOc=;
	h=To:Subject:From:Message-Id:Date; b=qs04Bgz+id7ax/ZIEpa7Mk2TS3ztCrjJLR9WBr9ZLMStubyQ3pbFm7nEdXRgHJmCoO7l2xL/EXjVnR+DtDHih8xkgKtVHX9V7Uv06oell7jk9Q7T6aILFifGPul8jl0wTWJbs76eRKtbKvqoZ7FP6ikhPSe2bpMf48iPY42R1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR5+JcPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR5+JcPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59DEC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733611553;
	bh=GckQiupAp1sh+ZndoWHY8wbKIPTmFnKkaV+KYuoKOOc=;
	h=To:Subject:From:Date:From;
	b=VR5+JcPVdxY3ML8HKduDzAD4ZEErHLAQ0IWL66A9ry5pu9d6cFFrcZN5RsG3Bbj95
	 /NEYvBNDgzfSFWBWYsutIUVXgutV5yCZ98FLmFYna5gMaExDCCeGKpO2b09/umsBO+
	 4t4H59nBq52895DXuX/1wCvCPgOYeJfBbblT5gUwD7gvpPfb21lUj9b8EpX9jMKeDX
	 mTULtirANi2I5lEzaS4KhDaqgRMJo67h5qJ7czuktovT7OqvuPUuaeMnVfB82qdLj2
	 LTR0tzMirgExHVVLfA1DeGuUAvpvot/90JeQw9sjQ0K+3vyfnAz7Z8S1AaBtQlpbhw
	 qyq67zJ+/huAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B231E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361155360.18145.8966062643583077801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398d55c413309986ed261652690c421912b5f69a5af543e2f3931b9da69eccb5
Date: Sat, 07 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733611553

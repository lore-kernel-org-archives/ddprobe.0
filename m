Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B823626AB
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708422497; cv=none; b=OFyNhiIe+3PMlo5PgQM9HZ3MYjq98ik/qA9852XFfSoMKvg0FznzXPCm+UujCZpZv9v0uTuZJafhGgD2xF4p9okt98mJW6qUoLRJtYXFMDjWZ1av06H332ERIfvA68OadqzwOlO/KeoRJmo+61kX3wfWizbQ/j3RfgKMCF7APxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708422497; c=relaxed/simple;
	bh=KC3vsT5gs+Fm0SSDc0Iv2hKKVUnEnjh5GnMTROc1RYk=;
	h=To:Subject:From:Message-Id:Date; b=GdWeNQO9svPqgWFYEqQ9Fm7DUTnB+hU3+F+v8VrnRK8+uH9jDh8/MJTKEgJD2ABK9mCI4gDAonINsEFSW/n0RjR9iHvhapz5S+EHbfY844sPHsI5ggtZuhUWg5K2HIRi/uVH5heaf/rDguHMdhUH1cqGW7rpeJzB0DJX3Mcdj0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8ja/x4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8ja/x4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D940C43394
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708422496;
	bh=KC3vsT5gs+Fm0SSDc0Iv2hKKVUnEnjh5GnMTROc1RYk=;
	h=To:Subject:From:Date:From;
	b=D8ja/x4IVYnW1VApUKIAE7EGuxsWcejE3k+858GKN6LPmbImf/SijL26OiIFoufVE
	 wFFdxlR/IB7p/CIGtVRtKyIbxC+HgxQ3i9cUMCIhABwADFuVs8AIwx6FfFyAeo2v4R
	 R8h8vkV8OiNj/jNFcxgfGrhUGsYP17Cs18zowR8x9H3ScRGMHKjet6H47zJcgjOo9k
	 eM2j/+HoUSmcv51axDyYa3PwY5XmitLwlYDbcCvDpbZ9jP1TCDRQokelLFXJ68bjVw
	 /0/lS1pNV+mnyAet4NkDuKGGoT4seoYrfQD4HkAumFr3FLTn0nFFZxo8GDTTanEt6Y
	 RgfLZrsHqPyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81B01C48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170842249645.17499.9197289303135925044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f95768701ccf517bc2f49f5a3d4c4863e3bf60a33d5ceb35454b4542735933
Date: Tue, 20 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708422496

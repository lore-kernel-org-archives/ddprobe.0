Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C52A253355
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755672594; cv=none; b=qt9gep/3GvKiONrdgb3+1ioMcaTETmnPKBavaalkRDFZ74IT45LZs4TuhXmq+7nck4djUhG2620PmAo4ESrDARfoTCqKSymneG5VaHIIgbB+W/bV9vlfO5WxQRQ/JZSjnVpFrtrt7+w/nOkdhKkzU8fAjDogD+J0xRJSLBHg+Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755672594; c=relaxed/simple;
	bh=P4BePQw+2aj/i5teTmVNptxr9we0zh6LBefFre7bOag=;
	h=To:Subject:From:Message-Id:Date; b=B8z3d7OA86M8cwvM+be4Yo4Hh+LaZSPDElKYbevC8vbbDC2dmvkm6nIOsQyvZRPSkvSB6c3dUkL5h3gZKpFilVFjjLqF1mDxxk+ZxBtal+JB1KVRAGI2FHkemtij4r8AMlW+CrDH7YtTO2hcXDqzMkGrWZj+0g46Ovkh9rhwFzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHJ83YdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHJ83YdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755672593;
	bh=P4BePQw+2aj/i5teTmVNptxr9we0zh6LBefFre7bOag=;
	h=To:Subject:From:Date:From;
	b=WHJ83YdSLAorkjbwdlhv7vW4C/DDhW5reQ/V0Iokt1kL5OvfgE2zxqOBiFzbbBCkv
	 n/O+eLHiZQG//wxI3/6qX5ywtJ88jV6UD9lfW7L4TCombIq0WRz+DYssnzHRSkqbbk
	 is7orNqgZvED6nGZQRzkcyt+W0IGCqUlP+9LoR6kgJSsTl09hwlQWLeQjOn7KjDK+2
	 4C7vQ3tgJBCM4QPGpLSLbQbv4iPKmcdUlpybopzIcBUU1Wt9NfolJFkR3D/nff1kvl
	 y+5Zvn4j7C0s9vGsgGJ5XwJeIemX9HQKqi2DkOQSW+qcw18hd+MCdQL023SFv9um25
	 /qT4N/NHBjLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E304CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567259357.23440.14140745928466410664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403cc0888b459c84f73e12acbff645ff217119a3489579da7e930558ce54d9de
Date: Wed, 20 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755672593

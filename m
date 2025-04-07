Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DEB36B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743985194; cv=none; b=TDwqYSy76U0lpSMQuB/7ht2yHdFgGLnmyGhJebf6Ru8ApqHqU1+lIbqWNJmkN/8jDgRbYU8N6ZKr6Z/223exkLy8I1qsBwPDe6eTAYZGRQUmh6Tj4+R7LQGWRWi7k4QN05XTjO7nEQ+HC4viGPGrjwo7x9ppoD5vyzXabRSet9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743985194; c=relaxed/simple;
	bh=wVBEFKKz3uDLR+bOqoDmUbJaOew5NVIzj+l/OpDmfnE=;
	h=To:Subject:From:Message-Id:Date; b=tkuSqd1XgwGwRFJn8+OhdX9lknDPZUsDbtv1sGh4NHW+wbByaxLvAx69/kKauhDhUSwMZVKhsHJhsyiQp+lkEOPyd+0zsclvgB4r1nouc6LnIQ77Ir2+peXncrpSDmvnobxDdNyU3sA0lcXjJG/1zYVQWfN6jhAcUHCc6LV3+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQvAJATA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQvAJATA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A887EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743985193;
	bh=wVBEFKKz3uDLR+bOqoDmUbJaOew5NVIzj+l/OpDmfnE=;
	h=To:Subject:From:Date:From;
	b=gQvAJATAwbwCbTvkonkhr3w4cdF6XaYsmvqCYyW3pK/AmpWyPqf2kVMayHdzgFL6D
	 Yi3K6c9saXzHTqSwqrGTnYXtZ/e5FjBBOVPz3DjBzZIk1jDxEGV4XGHJzqkXmdU63e
	 ZkquJaPRSM45Ncvea+Mt6oV29unfFjalGSMQHdHGSf9zEyZFmraf5ITgtYZktkk4A/
	 7xVBuEgkqb0Qot7godg1nJS6rQ6A0IEsTf94WebfO72dksZUpZteEfl0Y81O2F/ICG
	 /uKikXbvirsq6SX4tDWYvGSZVRfa5ocGT7Jjz3592ALGkjkUuHn8dglAmv9cSoQWu+
	 dyWyhUXxdSyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D5C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398519359.32612.4423023359138068993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2727b36e48d0f4bd0949fd15d2c2780245b1caa4f0854bf2ae94d4f9ef2af6
Date: Mon, 07 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743985193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33743359A6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777502254; cv=none; b=H4LR1azPOaPsBuCbp4GsQ9KJPXcEaVs6NnVv1jPi2te9DG//tj7S152skTvjzopEsQUT1odkorvYNYsC9yQ3Jhvlrms3MKlKdSOE6Rl9ftVkz86Bme5/YpOZdzJWF/yRgwXzOIxuKU4B46PeLKCxgCAXc0NpoxYJHRBSs8BILHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777502254; c=relaxed/simple;
	bh=668D2ky2GQO3HmlYXMZih/uba8fHGsAxuHLfDWjz4NE=;
	h=To:Subject:From:Message-Id:Date; b=tMhmtkBx9IytIWzD8esgWUjQA5qypiVaUxlFpj7pmidpaMMl6B3zeMbz4QlRzbyejqtk+PIP0HaA2QW570L4h8pKTcimPFt8Yxf9qFPCPk//0E9/hkE7+kjDRGwPEHLbXnyqRkh6u4O360+8/OFtw9JzOzEXOWjZFMWD5y9bC6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhfyuO7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhfyuO7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2BFC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777502253;
	bh=668D2ky2GQO3HmlYXMZih/uba8fHGsAxuHLfDWjz4NE=;
	h=To:Subject:From:Date:From;
	b=dhfyuO7H4YGfMubJ5QgwzdPAhGgpM3fdX2YabtUa+yz4+qj5dd8q25t2NFNXXCqll
	 GPqBk8vAPZ34g/+QvFviR5+5DuO6L9CGc3sWXr5OW4rOCObRFNj9pbj2DlgS/Susf5
	 q3GWWuC4NPnBoLEwDcD1TuW0LIU3/SnfMMM9HgGQEyuZVgo15gjKdIEzHWn1zVpdPw
	 rFun9PY9JcowrqVvqhbVRr379zuXbzgjQFU9gF4dXUJ7AXzwOVWIzDZocojkUro6hV
	 s+bC7hanVK75Zc+2f5gVu9lxXpeESMf2+JNIRo4SwrMJbY/fb3LcJaZEDd7P9N84rh
	 SrLskwQeASvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD51FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750225368.8976.7914508925316426622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c262bd48c3a77eae582252ed284dba725f6991ba75fe1e4ca38bffc347698125
Date: Wed, 29 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777502253

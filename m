Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CA12163BD
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754339394; cv=none; b=hi4hWaFdBJk5yz6U9vlwqQeqgXH8D9xG3rzyz26+1NJwHu4L6CpRmtuSWkWvn5MKSAY9wyWF0Xo66zq2AygG2sxIemhxTj3iHVR58Ex+Yi1yU3yU/joUqXofC9bbTO+BNEcV3So/mnAKmzCjZ5Tsy/WisEHKBshhLeVFZeoDSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754339394; c=relaxed/simple;
	bh=SNq27HwyNfpXU1K9dUIWcukPxoH2YadivwitJ3U4GG0=;
	h=To:Subject:From:Message-Id:Date; b=BGX6mHnHzng24qY8rGNbw5+EhQfBWlesAu5INOwRDcCk6mzz+iZd5SRKVETZpQUOuQ8Y8tnZZyca+/EMeY7j2hE2vhzlK69Fvof9fLu+AQJoXyPtZ8LZuekGAmLxW0DkBDc3S7YVWefi+r//t9/56gyoYhI4ImRIfKy3MsessRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/fV8mEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/fV8mEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFEAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754339393;
	bh=SNq27HwyNfpXU1K9dUIWcukPxoH2YadivwitJ3U4GG0=;
	h=To:Subject:From:Date:From;
	b=A/fV8mEXNBTEYU85XDluRvrEKleqVPYDYypKInHS/2hdWM0zpGLgNGFG7aVK3rhZ1
	 Omgt2E79x/yMhRBadFG/MRbFmV7ucBwR089JbQsURxbCsnxPymxjaii8NsCC4VGJey
	 mQFt0dZb/aFFANzD8wXjzft7AeFz2YKJOT4XOxuvgJctKcNsqP00XDHiX8FxoYpFf4
	 b6hJBW/E9+tOOqS9tXb73vAoAdnodd3QF8tiUio+lczu11Ijcf0Zxhk9ivWTUZU2CK
	 RMjrAz3Am8UD/NhNRfG7NbAw1xU3LhRjuPSMeX7+VFOxP6O5mvxWLKHDokOse8p1/m
	 pFaBLzzmCbXmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB11C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433939358.31271.5446993277565261276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfaf0f9cad1b298762926e25288ef64c516932fa058e171660c64b41e2ff1b52
Date: Mon, 04 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754339393

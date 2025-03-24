Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311DE26156F
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742831994; cv=none; b=aLPgdI0PaZV7cgbNKUNuab9NCR5UczdFOvnQRPJXb+KVfrc0j5hdSTH522Apc1wn/zeJoP4HejbaKlZbh+GDpqa0j6H3LAL1xfiuXsOqT0pBTJQ7HSBVMQZBV04MHFE3rHBCud7s+cGOcQyYasragIb/rQ88SY+naD6RwZQhl3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742831994; c=relaxed/simple;
	bh=yQKfxCIdBVpW7BrSD+PW4b/mWTHzr9aymTpL1BlCq2E=;
	h=To:Subject:From:Message-Id:Date; b=QHaa4DePXCyY6zVQA0aRNzrbjwui0z1LKejW/Qv6lL0zwvrgqP0kOEl0EZ9Iojg6yhCCNCeNMnD3aIHRcP/O4SS8Nqp5h6U+IOV6U//nGKa+XvIJcqiI05XEEs1CsSI79DrFYhTwzH6bxOrREtVRvX1NeROWK4tXH0I7YkIt9v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTxvxmYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTxvxmYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC371C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742831993;
	bh=yQKfxCIdBVpW7BrSD+PW4b/mWTHzr9aymTpL1BlCq2E=;
	h=To:Subject:From:Date:From;
	b=MTxvxmYhFSxvDmFhV2PywSV2Dy5lcpVtxZORJfGr6oGestlRKuyIovZp8jMSYa/kw
	 S0UPn9lVAJyu7ueMouXZDQhvucHio2F4EnK2zB2VSpTXYyzZs4kaKF+/4VuOpqKDSr
	 eOzF4XTUGka1e+w6zN7vnHmHHmn98fd2khwll+jYBJ6X9JM7l/p3PdoWaqMDGjN+H+
	 XZZq/kJWmKdyqjr+YKtS96axMjgfsx4gnCZZUNCkkUwAqSMYbOr8FcOuy+Y8XFOjgQ
	 r4TGpcQkhoxlc4mSELTTzzwS0HMhidHsXoUrvHhzcPr5ml2KbJcmjNV2lUA9sS4wHw
	 4meABaEv23grw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FF0C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283199361.15660.9934296788580043566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4bed94c5c47e208f1732fdcb3f78ab3aee1523fd795349624ea2a8541a6400
Date: Mon, 24 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742831993

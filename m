Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA40C233933
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789612835; cv=none; b=jZMhWUbcjB6jY6BdsxO6+dYiA3A+mQov0xzZEaOEh0LKRXgGkV2tmuGfu1tVwmu0bR+ztzXgF0Bd3V8n8jWucMrZ5ZSss4robl02BDnbdNJbkcTc+T2Uh1ggnDZ7JF06iZbwlX8IF4fxudUxcLGeCvLva2dOyjG3LVYM23JZZO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789612835; c=relaxed/simple;
	bh=vePmn4WJwCDAyV20WLLeZSUEMcyiVXMekDqaxqRc8nc=;
	h=To:Subject:From:Message-Id:Date; b=Qlsrx8tBbj9dz72qdY+A2UvQWXgE+euqC7os1eSxQQ2JmwMW60NJ2Xv8P5zgJnkleQhYPXNvoZXwHklRLoO0nYjNgudsCrVEjdeG0eZSbwgwC4TZJ6cImG9qBtYaQngNv6YdGpb2yrc3tfB4Wjauiq4OvBZVNHQioqyGrE5ND5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir/RBPTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir/RBPTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13A1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789612833;
	bh=vePmn4WJwCDAyV20WLLeZSUEMcyiVXMekDqaxqRc8nc=;
	h=To:Subject:From:Date:From;
	b=ir/RBPTjrazjxdTT4g3GR9ynkSGJ6UodR3SsTrJfM4+YQhMFSC6Hlnkrr6KWvUTuK
	 C/PAqXZid/M27WYRsHMTnAK/CWBluqw+HH3nvMNUNqOpmXT2Dp6XXHV5RthYl/rBtx
	 J14jL0qb45LIr58NszOqF82+rudQKRubOQnjzeLFkUkIEzquoNprhYg3PCNvQrPlkO
	 UErYbi7VHCRCY9bPKMEb9xJKyagvelH+PzKOn/WBAcM4arB4ixWFF+nlzvN27fVDiw
	 7mP41ri2q//k4qBZV8o48YKV+F3HoZJSnJAiDkhK17edMMH5BSbkoPaYVlNItUY3cR
	 MrOL3m24nl2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40EAC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961283370.17434.14415087093683435925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e52ea45d0b1eaf95bab094fbbfa1bb5f84bce2ba2fea9ee3efb74d4da136422
Date: Thu, 17 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789612833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138F0277CA5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766908434; cv=none; b=DC0lq/9ADJ4yH+0Sjez4KpJu13mwae8+Ot5glzNr4KWaIguNxKGnXMhJ7maj7lQTzuYPbHxoCqegbvJ8O/9DPbkYsMvogWZ9eU8wTNDRw5BUtZrYEhd6n2wO5LzgsttW7wYcLZcZSv2IonQZ7x2UqTL35O4Fw1fYRKMSQpnQYb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766908434; c=relaxed/simple;
	bh=CAGWhKOupsxgJ6PhyjTSdtEH9erILXPzk04m2VGIEOE=;
	h=To:Subject:From:Message-Id:Date; b=Pc/Q93NPHlSd04c6hXPrbH/vwvSXtTCYbv+VBh9LgI5yKyJaGJ3jGrzN/IRKEdD4O3gHjI0gYRrSu2JY/68nadhQMkuqsTFTb7o9vP1sUpokYiyH6ZzZ5TDnhjNbDXW9+CGKxB4tc97zkGZX5WF7R9mOW0JVl9QNJXVxuhJuVOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLAn4xSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLAn4xSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA07DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766908433;
	bh=CAGWhKOupsxgJ6PhyjTSdtEH9erILXPzk04m2VGIEOE=;
	h=To:Subject:From:Date:From;
	b=vLAn4xSV3wQd7KYvVyyF5rkYPJkMtQ3/ayYcCd+yEDMPWwx6vb/Jjvhj7r2A6Vfj0
	 XRwvzJkp6zLtq/N3ygeMfe2/dzn/iMPvSnerP5nfYmjFnG2i8FWE8pfXGgjdpqEvF1
	 I0xUkHeHXLvuM/my/Yxtkwv7M6PJs9m0DmSvD9uSTHXPen/wMm29jqXQ11pK59kK96
	 cjXULez7fotKl8K3ahBVN+QlKmdCQOvnI29HFsQhKoxz+anVIeJGOR+sK2XiuEBTSy
	 qrbXof/1oW9KpylYjSzCOPaVautM0+E8NGqdXIkLUwpkQTNZlkD0hknQUps4cxAjEE
	 JOpmGWOMK+2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94442E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690843359.28046.11772901941889566687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcf773751b814ceb01f330331a9cc3aab74123fce73a3f7e4bafe82a7e94dc5
Date: Sun, 28 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766908433

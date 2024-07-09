Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AA617B04B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720543583; cv=none; b=SEQg6mfC5QsZB4sEU35O7BRRZDzjmjlWRQAKQq2TpvUlKgs2kXaveuL52XcWLfHX5COhCUfGt223XDD/BtAQxI3/eD4bv7/S8mn1+xesZEhqfDc8brUnyHMiJ2aFJ7e7YSlt0Y9CNfLk/IUoqAnoWgbtJfwnELqBgjBlDhaU14I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720543583; c=relaxed/simple;
	bh=+rI98RaLpN/c7yWrBNzthoE9eFsT5Xd14fvM8m4oToo=;
	h=To:Subject:From:Message-Id:Date; b=U3UiPSNARyCCcp8KzbkfQdUqR4cqjNXH3wTfT0tU5UHGyw9ke8FVuXP7wT3WfWiAvcbIz6JlekIY30pKeKVB4DL8FrGPAWLCSFh2krVxx1RoFH2/ZQVabYbYLwqFrH07nWpQzW24wE49yTkSjqM7qAQrsDS3aLQRYpL591gbxX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGQeN/fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGQeN/fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE896C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720543582;
	bh=+rI98RaLpN/c7yWrBNzthoE9eFsT5Xd14fvM8m4oToo=;
	h=To:Subject:From:Date:From;
	b=YGQeN/fWHb2xaieX87jkg07j6Y04SLQoAvqv+lW99o26YQdDR7J1mACAJUcMjXTRq
	 aFwgiJN+FIeAwW+2qliR0aoRBvlD9X23PWE37tE2wlVJQ6QSayfTVnipTTwfA4Bnhy
	 d99OyuS8/u9kJj3RWkEjVXBVdtHO81xjPZf+HVGjTBlA+6SSeTbiaUsSSWqRMqPrY4
	 HY/sXUoap+U2VUkyE7IPisgnyl7Wd1sooHwpMZsrIKWtUFsIYLZNO7+gitvM4ePEAi
	 s4Fn99SO39j3yRm0I0AwvW3nvWVj3/40BWAKaFdiJu7jcVs7YAvlQ7urcki/fmE5Bo
	 bNAkN0OCa4Xng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D95C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054358277.13706.2882931403244835970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e525b5c0826d1d08bbd67c6dfd9b88b595606f57bb4c0912708531be253d34e1
Date: Tue, 09 Jul 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720543582

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDB1DED4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749377394; cv=none; b=N6KwgvytH9JsCWzr7r80rjzs2rzfvOpwfN0GdY/5+ntDueFpGUHU3+Wgoz4q4qBTM+BNzDIgIm72+a5tUHtdqbtfkwxV1mX20Xqt8ktMJcWz/bmXd3efXjdLYvCsLw+EzDOOSlXC2EDlLQOKfQfWrw0nBx7ZvJCyR9Yr+WwPNho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749377394; c=relaxed/simple;
	bh=Qc/HKB3wvrUb4xx7NEcMVPDmtvTGAFVnmKbuJrKteHI=;
	h=To:Subject:From:Message-Id:Date; b=NU97LNlUjCuMqlSqyXZ5psRj/C5ROCafC3lWP2St2C8lYTZIRlL7ARRxR8WQeR+Aychelp4IqDge3I6vy7BskNXTH/9iWRnPGlMtbs7R+A/j12CFyYxn1vijNnNmZqYz8Ji0mbtKKafZ8EqPyrm1cz8m3jM7C6IQnQIycGSsypU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWCIS6zZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWCIS6zZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3513C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749377393;
	bh=Qc/HKB3wvrUb4xx7NEcMVPDmtvTGAFVnmKbuJrKteHI=;
	h=To:Subject:From:Date:From;
	b=GWCIS6zZ7gzIZDtg9uGlsAcKR3h60dvVG2J0bEbMSB4HeILsvHFvYgCK588kfN+7B
	 UGNNGdKIuna5Ezrr3dcYC4bkmTea7Rk6QzsneOdYNyVJjD9bU73cyvq9rgktrdorqJ
	 lXXKUceAqeLf+DsTa5BM1CYhvf8cGfsoKV4VF3eypU1JdWXxvuGZyFr3DgDBJH8rlm
	 XpqzY2OSwQ09BfzLSGFbqaYyMzwNhVfFpMUaoym3iCLAnxbTKEJCxXOTpPJJ2ATsee
	 +T6SunG3apY24j7OFNauczdzSdjEJctOYOuuOiGc4zQ1oSByAiS2TBl0lmv4CQFl/z
	 SoArjiTs6ws+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055CC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937739358.17248.12824318265425077227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274ab0d483b91af73109fba8384ab18f673b8e7b33f36771e5a6c6dc120812aa
Date: Sun, 08 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749377393

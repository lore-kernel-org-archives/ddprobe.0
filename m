Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C65214A8B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769272434; cv=none; b=lGu2V76cF7Rey6GNAtI0C88Js28erF4U1vC6fFr/5Lh5UwyKIlFz2ccrsp3y9h+tgqs3pAm9QKVZ9AYn5nk8tW6wIb2BPK2rFkFcnayMV9AKlBXQFtU+zdtYZvcVNqe8JAYmHxaGIG+dXRLMoVJY7p9O3AZlKh0YQpND/tazSvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769272434; c=relaxed/simple;
	bh=q3p5fWGxcKJ63TQ92wyqolpqssRHr4XqL0UZRwbsQXA=;
	h=To:Subject:From:Message-Id:Date; b=I8HmuGpEP+WDQAKJMKnGPTlyQmSbX4JF2Tb3T5dps1ocN/Cl9hYPZw58Jvqo/RLJft0IAhYXAU+HrhzAVUDOJqmbR7zoi6O9+Y+czuqIZMWki9VHATnAV8g+WBD06BsMwYt+8K9ow7URGANG4egzBSC6FpxLTSmQ4LzTvE0GnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYPpMfGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYPpMfGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC60C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769272433;
	bh=q3p5fWGxcKJ63TQ92wyqolpqssRHr4XqL0UZRwbsQXA=;
	h=To:Subject:From:Date:From;
	b=lYPpMfGAIC2b5Nm5wKhAj5gOTHnid74izUYqaOcVtwHhwF4liicxapX7R7X4nSRUm
	 hf2gITf3AdG0Mw1dalA+Ps6FnSBMEwHx+ddA9UWEz2A4D1Z1yzmu4aFagKm947O7Fp
	 lSUjgsuRc0MXqtDJDzZiObhyiAnxrAm9R+DrCRBeIRwFVGkjqpzYVCMkO5Naq8xxEr
	 jbK0uDuprvgTYjC68JjY+dyLT6xJ+j037HQdmhAMMY33sMesUe+CFO9sSS6Lk5QtZa
	 GmF4DGBPTEGsYF7ohecgSzgVXg/oRhwDuq3MVvISyR3GMF7naBjwFodRDBfq9fU7BV
	 pxoA3T5U2G7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6BAD715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927243357.5041.10004473122140145718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfc97f729373d8dab2fd5dd73401c7cf77bcec58814ad9b4c67133f5e8d72b0
Date: Sat, 24 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769272433

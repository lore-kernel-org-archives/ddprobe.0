Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BF11D6AA
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719634463; cv=none; b=fKdj38GlEfC9a02Hy6GRrrZyRFiX2H19cJIK5eYLgQzF0qrV5KCCZz7PYjrtNcGzpyvrGfFj/RcpApQu+k1D6z/+5fi8hyQIaXiEcUAFOBdAZS+uMK2gRkF9VJAvRlKfi5VkCnGEe9z/yEufr7+Bih+NZPyrKl3auILSfdNYvnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719634463; c=relaxed/simple;
	bh=E+DpTT+yfo4CWQJKk+g/izPRFzmVqKzc3f3sNe0Hx48=;
	h=To:Subject:From:Message-Id:Date; b=JUi26ioa8MMSe7uG+6jUwLzxOXl0cQV3lPo3AIfNkksmGkDmQQ7wRC+YIMYpRvKChjd25nAi9PF0SBo9yytqmlXLwcpASfatBre32VgyDlQAF2jsGJNyHWWbQ0c/795kfMgQZuN+lk2E/cm3tbPEYGk2bNnI2Bu0JT2hQYzQdAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W417QuI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W417QuI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24ADC32789
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719634462;
	bh=E+DpTT+yfo4CWQJKk+g/izPRFzmVqKzc3f3sNe0Hx48=;
	h=To:Subject:From:Date:From;
	b=W417QuI2E3iwi+9beSXsZ7iwo8ncc+1FAHtjdwc7bPSdKj9VEWm7n5kE9k30McBOX
	 ince2yoQiwg4vKjPdpmkhzAwnEp3HV9jn3TLSLLmON7qwd4z1G4LxKHHIqAZpERNj3
	 reeGpIx76Gr11xfFET0/FQh0mJ8zgDZRYU4Opn/98sSqRhm7CCUbw09sUIT/jLaxho
	 UPDFZNe/1fJE6spw6oe+ZcQRIY+6UacX4eULPKT1cvGuefv4pF84sgUKOng/xnVVEv
	 19G78z26KalXt3cTbMBXiTkbORNvVplcg6qDCktEUYkr8DT0MXT6g5IobV5FbyPX5z
	 34E9mEoMi/rDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C879AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963446277.24647.14888727241705741326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df3e7393650049e923e3d683b1bcc2849685f6eb832760d1c0079bed95bcb7e
Date: Sat, 29 Jun 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719634462

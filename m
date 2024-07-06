Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692A922EF2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720256123; cv=none; b=u62p3eh3osn08WK36bgGORLNbUuZAYB8YzZb73EGQ/N2HjOi+F3exWHf+1+MNm00jw9eiNejulh5PK2mfxCyT9FVLyzv1GyFXcNjKTudNHWRclJ3kYcjV3HsdL7TYvhpExoTgF71ML1VJkCQ66rGQgSN7l42AoGT/+qHQ2UkFHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720256123; c=relaxed/simple;
	bh=edgHwytLW8HYpYH4bejxQY7uEGFm+X3a3qZ2JIH3X3g=;
	h=To:Subject:From:Message-Id:Date; b=fQ6JfoFDeT0su7uKap+bcH2O6DjyvuPsu1UDFiK7TNxzn6n0r4h5u2imKhYvnO7IsLM89j/vw1KBGQUjuPy8TfUuaqirBIQ1Qr3g/rG7f7/P5HoEKkuyfJkWiygL1fApAdSjsex/mi1bZr1E3XlXGuX8NmmIqXT4LqOWXONog38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CG2RCSAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG2RCSAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D620FC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720256122;
	bh=edgHwytLW8HYpYH4bejxQY7uEGFm+X3a3qZ2JIH3X3g=;
	h=To:Subject:From:Date:From;
	b=CG2RCSATMu0//NHxcv2z3vhCgjRoAUIvfPbHcg4P1CMTGmKqdxmiR9QbzFqs4wdnb
	 mkTF1q1KxLgzfmXx2li501F83HTtbFBKYYjqmOyICcvuymLWopLbO3sF93Id+cbLGA
	 aE5ggLk+1OzOwAIPbiRc320nBqci37rDgFlWB5okt7dzRNIFu7H788u1m5cXRwS7YO
	 VBkWjEIFa88z1Tvina8IrTMrTmNJBd69rZCExlZHNxXgfpcHKzV2TlpAR1TCZ040W5
	 KT8Q4V0AXONVZQC3JKpMAgVVxnGv4qxeWWUOR8ewcjcCO6pI3FTDWqCmWr5e7nZroW
	 Aq+iAoJpyk4tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC33EC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025612276.12992.12438174477625973446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04387234429eeae1547a7f39d423f18304f771823f93d0cda20b2bac0fec393c
Date: Sat, 06 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720256122

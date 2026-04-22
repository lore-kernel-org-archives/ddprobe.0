Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB5C3CF024
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776856654; cv=none; b=Rw1YD3vrrBq+PpzGl5vg2HoLOhpHe1nza01XkTpudmNeWrcR9g57XpLzqfWcz77lXaeLft9xZs6LMW/jvoadMYkzzc0AYm6WqBBskxZ863fMjXRHFLbDkvtBO/TpfVnOoiQ+NyeFI5GXSh7IvgBuRijOmOjRph7a+DDxc1RlqlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776856654; c=relaxed/simple;
	bh=i2iKlpsW5izzjMykyK69SLsnaL6PDQgmZokDwD9t2ec=;
	h=To:Subject:From:Message-Id:Date; b=GTPzU1VWLcYxPJ0UnW9ncHw3j1OB5v46yxqJrZskhyfKsLyttZ7aHMS4nTpm43z6BwcijqUA5cOlNEEFFREnk74YJQ1EH3Fxli0yxlYu3NaqK2uSUsE0eWKEVVFhgZDo656LtuOXjtiH57zbrRHF2OwAw+kj3ax7g/JESu+BzV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYuveA+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYuveA+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD534C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776856653;
	bh=i2iKlpsW5izzjMykyK69SLsnaL6PDQgmZokDwD9t2ec=;
	h=To:Subject:From:Date:From;
	b=rYuveA+TxhVxm8At1Ozy5fvwthws9Vrxp3gQasaZ9r4tZfmCQF67LQ2JlQcvNbD6B
	 Y31ZL5nFN5UIIIwiSvqJoYfJiMNEAnLbPtLUi9IHRw8VyrnEFK1KOKs90bG3XxJC6n
	 bOf1DdIkuuVgzEeTmTe4sATHX4hoqE23J3AeMUlHsfK3S8zlB28WjKiSPIso34s5+A
	 rz9DWVvWjZo1IG0pdAdK896C4jKYHS2T/qgX4QUpjWkCMR0JD3KfDA78nL0AJP2vj2
	 a2QiqA/8CvIFu6s7qgaLge7gb7uH3ZPWnltKk/Xh5LWIcmLkwHGFF1vmxpS5Ba+gm6
	 rA/lCgF4rkarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB5F5A8DD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685665368.22767.11504807014670904203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d0e55d2cce4f0388a0da64dd423be760196084c392e4a40dcb9e36d906a984
Date: Wed, 22 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776856653

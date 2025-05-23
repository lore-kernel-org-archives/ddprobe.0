Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371CD18BC2F
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747964996; cv=none; b=FfkkPwKYojZ9L4LuiMatm23dIWvLeVZ5tK/vhXTGojaA/5bI2fXW+Urv9IL8/SvI2yuiYe2ejSWR/igR1ERv9oS4+33EubpubOa/y6kIyjpHrgRGseW5BHO0x0Pel/co64zYsBpOv8ljBTFYGAoJ4o6YMUK4068GvMwjSTwsXlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747964996; c=relaxed/simple;
	bh=uK4LZm512k5UJGGXpXyYHAwxMsO3kkGF0QGgTeQpcrA=;
	h=To:Subject:From:Message-Id:Date; b=IQ20gPSemOd5QF4/q9WpaDd59a36JfHCNV/L/1MRG5A/IGGb5DFe5+k/CxWf7X2bdAG1+WekTRwcKbUP3sTUP3P1ZlBIkzTNCuo5EL0wRlhg/MQaEPVC2XThHXl/ETIVOf8YQ1vpYzq4GGA/bmeE4Kxoc5yEmt5n3MUtVsr4uUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezrxErsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezrxErsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C71C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747964993;
	bh=uK4LZm512k5UJGGXpXyYHAwxMsO3kkGF0QGgTeQpcrA=;
	h=To:Subject:From:Date:From;
	b=ezrxErsEs386iWa0g+0XY0jNlfEYIUoug9Pv6J3QUWg4nRseDjr16p/rlEyXKaeFb
	 XdLswxBZen5O56hdp2c0DH58kzPFP134yeGqaEJUzF7jEaVtDQ7FUp0j6Jhyca4Ucm
	 Mm9qEeQF6Ny9gfAJAYeWqkMc24ygo2a5axUtPfXPy96ZOHvh1wt+Akz2xvE1LdgAzO
	 v/n62PZ47TVWPYFxrm3+u3ZiitEjKfIHUPImjKrqfVfLQHWm7+K/EPIyj9+6c9m3jd
	 iqpmoF08IinsAsPW5dS19v6oGpapcXGpaGshKdFmpzEfiwwzfQoQPXgC9Mjb1I2U09
	 uzVb5Qaig7pXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D67C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796499359.19386.3428107207147764496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c461bcf940ce01f480d01e485a64c354d814915dc691d23f03cb53a3484aba
Date: Fri, 23 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747964993

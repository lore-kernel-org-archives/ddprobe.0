Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B9B3D994
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792246234; cv=none; b=O9VRyt8Mso+mC8VNURjtLewWWkVZWaxixPQu9aqOR+Wx8jeRnT2VE1A6HK1HyzeBu/oY6ObpoOyHf47PjzfndQ+baYTqA5jprVdEgw0RzONC3m3f7zK1CUwVwO9f+u+cOqbqQKlFmEa8eX9iyEj1nYdE+XOmbonClG9bGk9ZdL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792246234; c=relaxed/simple;
	bh=b0qN45/BWpbjkw7gsfPRxegzB2HCS0XeZeLy8o+Ovfs=;
	h=To:Subject:From:Message-Id:Date; b=nF+mBalwwCwxncc1MpdFtlkHOxFGvGr+XNwYoUTTOku+Omas2zcmqdn6CmNT5HbVB7fPwtnLeGl5TnMYIxmXmoV0HeeakUjAYr3FJ827LSbZx9xMR3p/Zk+rdHRs91tq52V1AR1MTDuhBUJ+5KvmLQNO0IZpQWGLIUhKNWa2uB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P44AVelc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P44AVelc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E1FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792246233;
	bh=b0qN45/BWpbjkw7gsfPRxegzB2HCS0XeZeLy8o+Ovfs=;
	h=To:Subject:From:Date:From;
	b=P44AVelc7GKVoZfyT/Db2blvqI3vjm7wFdPSIkJEN9CM6KJ7mwvhkjL5GVLqMBNxA
	 UvMLz0r+E7ZKkr8PklWOcwGn5pod6HbEVilSad2d8H2pb8uzV63jfgjZULjWfUU+h2
	 r8ga9EFgFhe9ClipbD7UAeS5ti2ckOoQigLoj50ovjzDRn3ck8X+9onhuMA58HuRq5
	 70ZkkcAXhWeYny+uQyd95UGsrfOVqSsuKMIfbscpiRZ5wPpCgXUleeAmr4TBOt57La
	 rFC8J4p62KWPlTqNXZpE9/YZ3KNrR11jCXx+WDPe/+6gygn/jEFBr5mQ8tfsbtl2RF
	 e1nVLuesbRqAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD401CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224623374.16694.17325979006037244954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0adc044f89375c577338c2692398a621c56495355dc7996e3f38724b719c86c
Date: Sat, 17 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792246233

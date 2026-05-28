Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4031C3F6C2D
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779984154; cv=none; b=T2SKwUYSeOvXCHobCHFsTL8VBjjo9ZKeTcY3sXRPXQsjw+mXc019Z+DWnGE1GXECeFRLcyb0LLIHnxQ5cBc8dR8OMiSQGcFnbVcaHJxYKuQpsxJbgmASyA1L2E/abFeSpl9RoaCxOwO0a+teri9wAkIP0maX4ntvzl+o8IfAnQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779984154; c=relaxed/simple;
	bh=lM5wuXTgmYHJ0QX/DWJvT0PupZtDsyDksZCwUrT1u1o=;
	h=To:Subject:From:Message-Id:Date; b=LfF2oyz+bJWa7G1yCJtajLImCxgoco+n8t+yAgTQYHxMNSOa2Vz3uHRFmJ307lkJHf5+4lU2Tfwx8X171YMkwVvpaXoRCAFCKaky9oYACWuRK1M7M323JM+V0iI/lEqYskEWYyqpAKd4sWZ8XtFiGP+e5B0csyITeP5L9flVCY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXAGf8al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXAGf8al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21D0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779984153;
	bh=lM5wuXTgmYHJ0QX/DWJvT0PupZtDsyDksZCwUrT1u1o=;
	h=To:Subject:From:Date:From;
	b=tXAGf8alNjWK0+b8tDRx1pMU79Crb4IALYkAp4W2zMv9ojNhzjiGUjX3zcYgpj7gb
	 TUNRV5mnK9iqJ/dbQnsrohgomlC3+I9WPpKHuIWxIEgYTGaftdDlHeEU/shpNrcIGp
	 5P7sll35YLMLfQP4qcJmfhPAgJNIwxis2bzzO66kultrIEV7r/lR3sNoQnkyJuJkq/
	 O6d9HsfSH4Fa1IXO7xlm4yVHrrEcIhTet5UstJWvtjOfMYgt7vsjOhejCco1FGC838
	 M+UXBjObAfKfm7TFbsecw+s9R7Rs5AwEcPXD4m8fZLJRysPqM1dU74Z06hsWEjj+kG
	 d6DBAz9CQLEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A2CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998415368.25900.17238924582547027924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589c32742a0a865c804f76c92f2925c0036b814ea276d19caa4daae7059cb7a5
Date: Thu, 28 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779984153

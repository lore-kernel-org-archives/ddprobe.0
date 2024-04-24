Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5218915A4A3
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713959423; cv=none; b=B5xBWGBEjmuK0q/WmKgyc5V8mgy3Fb7In6A9yV6WcKXXwq/cxqnTGmsqwgqdxT/WXOJGIK0P/mgcv7ts4H2W1bMt49p54qTb5WjHttLhGv4Ezvq38QmDNJrEfm1hmICbyJLo2WnQUX4J7UyN++KFkUiowPV8zs+2q3RTxYCb5bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713959423; c=relaxed/simple;
	bh=7coe+zYoxxZ3Ja+Tkw3GV0yjSQqXfmSnQGXy24XtH4o=;
	h=To:Subject:From:Message-Id:Date; b=Hbc7yj2KjcC1YVJEfHYfD14AFs90U6MEWLD0PYhpFr68s7n/do1X6vOUyA7xr0A8UNYAY3Gmxb/JaPIKrqKaYtcTvGjmzK7LLt9SWXCCXr2Rl74SgR2zPZ+WYrFp/gAzcj8xErwGoFA9pfWEyEuEDvV0kxZNTH6ldAEN+TSU5Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlO1YjpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlO1YjpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B60C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713959422;
	bh=7coe+zYoxxZ3Ja+Tkw3GV0yjSQqXfmSnQGXy24XtH4o=;
	h=To:Subject:From:Date:From;
	b=YlO1YjpBHUc41ELKm3HiPCONG3nJtnMhM6oTfOwEhU90FF6jauskACEq3VbQC9ddR
	 zIvpJDbkQ6PRhYX2Ec8n+8oWMoe5A7cfDWd1Z4kSxVuajWh6dFaPh9BBoAbjDAoiWB
	 //F1neKNwEt1BoP8icOp0j3kk6DQq70vkvMFPUmIE5UCqvGp/LEmHkQT+6du0wE2BP
	 rdrDuACRfO0CZFONu+BowpLhzXyQ/3QFqncHepT7gYaMXGAM8f2/nRP+qGGazBpfHb
	 DqDWtCKShXQOGl5yyA+Eh6wwRwokIJer1ZiyoH3zHTj1qHQ7IW7LlUfcbNp2AzSA9C
	 jjl2gLBm2pjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA179C07E8E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395942281.32535.12735682198818252390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a8b92effc09c33fd56c9f87f1c7ab64928e43d3f55d0984c007b43ad30ab70
Date: Wed, 24 Apr 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713959422

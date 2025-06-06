Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1704828BAA9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749231594; cv=none; b=gq7Mi/6ypmb5r4lBtOR1IlKTaPRBaB0XL5GO9fJ562O2kzu3IUcNQ2lN0zMHR1DUF63zLkMc8PGpDTnO7IjPQ3+Kt1+EQvmRn+WRCoSGTk51g2XT2ekkS9wzGfM/wBS5+lZGkfAnocwKOhNNZC4SyCSijLFz0vbLroOz4+a4SFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749231594; c=relaxed/simple;
	bh=T/3xOn2dxz+Pn37QcM0mxUFqdXX3II0JDsuksDs8clg=;
	h=To:Subject:From:Message-Id:Date; b=AkPg3aTyNBdIqeEtasz1gwnmZqUZ9+g0yAALdPn/w0HnoAX8TZpJbnmq6Nm9KEpcDrRjYMiTTrWQf1iCU5WkLTY2VcUxG9sxDs9VO8l6lCONerJbP1tmOZ9SA/EPTE3W5QTpZ7hoHGfyg5JQSaU2fvY9m8r2wZERtUW7//RdTlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dalKEq5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dalKEq5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6200C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749231593;
	bh=T/3xOn2dxz+Pn37QcM0mxUFqdXX3II0JDsuksDs8clg=;
	h=To:Subject:From:Date:From;
	b=dalKEq5g8eEtdMp+WpmbxiXdg8BDMDa/o5Y1UPmjVFE4M/BIPOj36Z845YAzuWxTL
	 KbBm+SF9heA9WUIqMprcx10m5gGjBkPzmWw6cOX8J5TjdHLHIJTc6S+IxtK7wPGBRS
	 6WEohzH0dvn8Oc2erxugRk1R5E+Db5qc7X3TWuvadU4XqSMuftemwKGNY5eoBXT7wy
	 FQijL0mWMsB0rhDdPXdvO7uhIY8sCVBAZHHr2ckUHgYvg6O3C5rDf0gCaDYvCeovgo
	 F0jrvT1ukqJYK4OlVvqjzAj/8YIYinyIqhf4Mqn7m/xO1ejrW+QMQEGOTGCfSf1Foi
	 kJmuqIyufrFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91380C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923159358.23989.13285034076381838572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7743f86c830f77d11032ea8ce118c0be3597d06b8eb6600f23ca795baa8c634
Date: Fri, 06 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749231593

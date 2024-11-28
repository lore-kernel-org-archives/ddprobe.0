Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF71C3F03
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732833354; cv=none; b=ozHhSGHZxN/+4UeZFeau/Dz0dcyteIzYMWMI7NsKv+k89Bzn9/S1EwAnF+RqXk/8JSCwd0xVRjtH/OgsXjeis5SnNCJuIJRArpCWVPP8h4nvAWYNJymwkJmURAe77HjsjQqvo4qVwluqfiWlGmNBn/qfUjykDE4f3GkhXRWOAg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732833354; c=relaxed/simple;
	bh=9YI1v9wa9V0UgCjCzGF44pWqlLwC24j007Mdroz+P+s=;
	h=To:Subject:From:Message-Id:Date; b=kdz5WW0Wr3nNeFZf3SyznVP4WQhYTmVH2HrFD4p2hVFoSxUOk4KWjm5JFKall7/0ec9v/9FpORw2m8ugu8wBJT3N0b5Ih3DxugUWRxNJw3lGFOccGYMnC7bh892usaA1puimWqqgVMQtzepQneHWzgRPPQq7tvs78YTLOceACvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lah/VoTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lah/VoTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2ADC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732833353;
	bh=9YI1v9wa9V0UgCjCzGF44pWqlLwC24j007Mdroz+P+s=;
	h=To:Subject:From:Date:From;
	b=Lah/VoTcsHuFik180JZSz/csM9lGUNq7Xa8FsIGiCEPL4A6itrfo4Hfi3Bp8H9xyx
	 VeuivtCUvXnbkCOPPXLaAErPk84iRgykqfkDm4M7iObcppTxK5Izj3oi51X6wU6+I/
	 iZ+JSdxGkY7bx3sRpIT+2WOstClw9PHc/x2R5IBENRHngAWNzdybuQZtnZds+cJpuM
	 dIBdko04ihM522/Tp/p3VYLCLAAmp+og1uP3j98dGveRG/8LjmL43pNaxLNttvpzqD
	 W2Mmx1LnZWlIBbMNwf13OnDv5+utCne3rHrRexdvfENXsYwJhKMICm85+o2Ogv9JE0
	 4bs0VUfOXvaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743ED70DFB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283335360.10985.6405006327423381303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36506564e01699373359293f728da407fa016a7b3ceacebe5f3999293a8a3f06
Date: Thu, 28 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732833353

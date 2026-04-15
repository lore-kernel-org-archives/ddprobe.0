Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEA8460
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776277654; cv=none; b=RcVzuTwHNUNU8ku0sbtKuZywFsZeLazEhq6doqumC7g4bqY1moLFtbChom0GbD07bjhun+fIqdgrr7Atd5sMWa434AQxoKjFRaEt0ghcsJ2k8tqvHZtetiJqnMg2DuFe3NGWGYmpRxTuAaUJ80yIq6eepzTLJ6e8lENK3vcG4q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776277654; c=relaxed/simple;
	bh=KPdzOvW5m6Fi6W2T+2abwCdLAetSWMeKStl0zKNew48=;
	h=To:Subject:From:Message-Id:Date; b=LVtclIGGtOCRR8WlSUnw1DOADrkw+qNjSSMUQzLBrKz2zPmfEMW130TgNYPwpwzOOmc7/Xm6amAba1d19ZFptij9m9Axgtxy2A3Ypdk6yjPJ3jVC2Ym5PxT+TzvUuRkEwdHB3hSNDbgTRyIw/qc87HSFzcDPMQeG4AMxXmUwwe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS9a0yfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS9a0yfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEF7C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776277653;
	bh=KPdzOvW5m6Fi6W2T+2abwCdLAetSWMeKStl0zKNew48=;
	h=To:Subject:From:Date:From;
	b=dS9a0yfauRj4NN6dIGiZEvOSLqm//WE3v45o8gPO4AyRf0KAG6BWAI9gdQkhOhaRG
	 GLmfxkFw1bTcJYW0QYc3xKt+5BBcE3zA9Fc2EH1kx05lqxY0v+xZArCSt7IiwF77rR
	 EE4iNwIOi7mtb0Lj7acNwmLlReF8jfCZg6fozOhtQCxVGgh1JcqePowcrJYDJ76e8O
	 a3bN4XU8ALJlfvRiu6HP09VAGh4zISev2v3wQQ5x0gPj3eW7KXEyk0Pqa4Uyy0SfPH
	 KXraHX0QnELcFtX/zTiL/zrlXY/aKT9K2OGrSPgqYvxKWrm6KD7ooIa/D34sqqngLy
	 fLzotdVQoyyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2EF42139
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627765368.24722.1521138351922745857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056d00650de0f0c5ae298731b4ca26ac17e5ca2a92d6f885813e86d1fee49070
Date: Wed, 15 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776277653

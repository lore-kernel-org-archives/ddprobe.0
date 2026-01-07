Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B9886353
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767809634; cv=none; b=rD+OViHt/han6OoboIdt9fZfxf/oJgka9wSWbzIX7FpUc1vDDwNC3qebr1yntBq/+bXpOALsGPale/50Mhec22131zh0l9mYL8P0RSG/OpH/gbnrLb3rzfrLkjmAwNUMu8j6qLxJGdmGEspuHA1ErRKx76a2zdFXZmMWIokUo28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767809634; c=relaxed/simple;
	bh=mqgY+Rlk5NTk11xOiJtxwCNB5TsKsqQySM8FVIFX1v8=;
	h=To:Subject:From:Message-Id:Date; b=JQLL6OnO5n1Cws1rlIW6QUReGI5ufbNpizqUmKbdX3C2sXaleerfALEmfcWRZ99FZLUDOf5Xfau5zXlloFrxvNFZCShmHOavgsk4Cnh3Fn+oawm1wX0z4Dgi+jevsQhCuKRPHN/SCZe/ui1eL+TB7FO2iniZx2ZwSt4L0JeqATg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COJexfr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COJexfr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767809633;
	bh=mqgY+Rlk5NTk11xOiJtxwCNB5TsKsqQySM8FVIFX1v8=;
	h=To:Subject:From:Date:From;
	b=COJexfr4wlYxa5tlmaVkVrwBNg2q2lJpWCrkZjrjngwWRJp/vKVd85XGR7BG+Zr1i
	 BKyPEXCihDFOMwqh7CPwzI0xg0VFSnSMwkBmK1DdkbZcdrWR8aEOMhRv119Mf0vj1r
	 tnI7RJu9uHCiseouYdoigk/fUOviyvMpaU1fzDU681zkm7p4iA42am/FfjTzExoKnW
	 hle969RWORG/Rs8xt9PSyRX262q3ubSYGYSl06lCkBu7kI+QJfk4jCsresDnTIKRsL
	 cDLBOVApSQLa/XiRM7qxUvF1N4/eYQB+M9jsyVgeM3YfINmgy0JUkGSxjrOiS8PVJX
	 xPc7HKlEMJZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E67DD0D157
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780963357.15900.15914430110131984681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e716c43e4210005cc29428bb978f7b5caac82d71ec02fcf0528ffcfaf2c02a
Date: Wed, 07 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767809633

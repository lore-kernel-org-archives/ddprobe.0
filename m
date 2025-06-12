Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4323CEE5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749736194; cv=none; b=m99XUbV/0yBGbAu4DpdckI+XEOQZNWtsGS1S8y0G/WisLqMF/m2GcNrtlU+7nVw/EQGtOs889cKyStWTk9n0fBcnkimisxb0s97HNpaEFudLYF505bWr2+8npzxcoLKerhXQBwn3kSlxU2PKVvpVn2PF0VBvP3p7DvA1xOln1vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749736194; c=relaxed/simple;
	bh=bwXfuBZz0/aC5D0A9m8MwWW5680Thld9Yslqs1R68Tg=;
	h=To:Subject:From:Message-Id:Date; b=nUQqZoouVa23w3tbFDzQ3lZlt95T2mO0Sd+IYjiDHbO/3ZdMziLtvN44tN4mxuoleoJq5AabtqxcTRW/Hap3lfw71rGVb/SJQcE5P65j99KaN8nHsfxYiJibHp3FAkSN6xv7dl5mRY0SMpS3+PiX+xl0RZH/PAhOmP/2QeFGZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaekRPAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaekRPAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4893C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749736193;
	bh=bwXfuBZz0/aC5D0A9m8MwWW5680Thld9Yslqs1R68Tg=;
	h=To:Subject:From:Date:From;
	b=qaekRPAmMRcY2YXO87tEwWlKJGtkhZlzASlNDWA2AcUgOhnl06Xd3n0uqsLXQTT3C
	 D9jA3YNgBpWxIeFtVM8QNgo7wKQo6mJ+x5UAeXKHXt6jIK1wHW5fN8t9R6FgO0QwFs
	 x3gL/7LNPK7xK384kjBh31amNxTwqczLb+Nk4xfxmEze6vC1Tf16xKdVcAXS0Azqja
	 0HOqgw6z8OgsyDNn9oCoyuGEjvi3QW1FyqhwX/TURRgLUwS4bIollib80ylUoxsoXd
	 DydKDB8AUcUlBYyhQCceJCONKuaJzXoyT+lmo2y3oUXn4Ft1kLB9FmSOr5IgYKwzAO
	 vUCVptn7aht4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08B4C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973619364.857.6543290488039264314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252c4cb71fe95060be6580ad5b7658db64812b45e2ae2697aaaa48976f992260
Date: Thu, 12 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749736193

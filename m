Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F059149C7D
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745446194; cv=none; b=afhRy7zHMVsH5RN8PSODOt6dPmbNcKY//chwu7eiPneTHAGvI2AGvSMZLceCO1u9+5DH+ccTYeOzKLzlRVHV28dSmDEWKzSw7su+auxHrPaVEcfpY/akFDa7rOC1QGlbOZUwEzNqiha3VcqHfmVbF5glnElGKKsQRD7NRsiomrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745446194; c=relaxed/simple;
	bh=A2GOOdzbr2/dbBfCN7zykfDAV7hee1akenseuyHv9YY=;
	h=To:Subject:From:Message-Id:Date; b=WVtIlX1jRQkD8ON0T2Pk7mWvL7dTtuxmxTDQhki8EsVgjCAC4CdSb6YGD7u6NcwP7qJWmlcPDL8SwL+AuIir9n5CMSlNgtgNcLPD/dOlLaQGlAStBPh/53uK/1vI4j3oNfAo14alMpqYKqK3IqygsvtMDDHGrJJjZZU7VVkmVvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw2XHSck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw2XHSck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745446193;
	bh=A2GOOdzbr2/dbBfCN7zykfDAV7hee1akenseuyHv9YY=;
	h=To:Subject:From:Date:From;
	b=lw2XHSckYcVnGRhONFhT8ktaRuOtPrvB//tDhdKbt840J/QbLrvQzFS1JKjwpnYRr
	 JF0uwPJWrZ75G8LgWdc+CkEF2jSwUcJE7IPiz8BQ7hHlHa1dAUpWCmIEmXi1i2Elch
	 KdJPDWaOgL/iXpnrj51BsZR4tOWgnfAQQxCfqOatBYVQKL/Q+x2YgYIRJMTekk7oX8
	 jHVm+zqqfRPbGT+zi+X6WVnVhZxUzr5IzZiuLBoZY8C+GQzEoFvsSJoZ//o5LXVcuT
	 aN2DUQnTDvgW6Tb6KzcWgB5h/B4EZ+WBp7m+NUNH0uFK40jgN8cCNgTQCOW2g07QRD
	 UvBbIkIlfGcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA46C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544619357.4126.15835249482682056087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42c63b612fc08d966003dcfb618d787f2220d81c71e5f1188fd08fb32441576
Date: Wed, 23 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745446193

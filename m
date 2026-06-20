Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EA2347BD9
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781994994; cv=none; b=GWHuowGHBiKOzTPUtd7H1NfaSnVyL2VF47Ogjc5A8TYJwtg5xQNNwb7znGdzjKvBIq/pbP3R3tA1yg/0d5XXxIYJtKaouYXGAF+Xsvt+n4iKUJvVYbt+GzRY1T451jiuhse9iZdH5z5XUWEPe6q0B/xOi0cFJbynaWccR7hKKjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781994994; c=relaxed/simple;
	bh=YGMp6bgcQAXz9APh1xa24a+jIWXvANHRn1spVTfAnWg=;
	h=To:Subject:From:Message-Id:Date; b=k19rbPhYmDpmUk4D+PNtQdyAZx3Ofwpi8VjPbkFZsdKixkICqzEdC60jQysTED1SRtfvPoUSj1jyy+n4raHCfaQrHJWRgExiZDgll+fGe4flNz867jXdRIeHYBWpE2/5cgMyF/t5srpXd6hpF+Prg/v+w/B/qPYcZqin73/IPxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3E1oorz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3E1oorz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EF1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781994993;
	bh=YGMp6bgcQAXz9APh1xa24a+jIWXvANHRn1spVTfAnWg=;
	h=To:Subject:From:Date:From;
	b=Y3E1oorzra4K9S8K8qKcXjZeT1lQLVj89lqUYsb0oGSc267aQqbgTbY/BOzVXvNe6
	 xQC0J/0vl1iGMFoRJUz78qBzyJpKj0bzp1iXvMgQSzSVmT5c7ZVpCibAVMNyzcZdro
	 JgBdxsE+6imtsSL1vaZasASwLPGVsDLantIJE8dUolNozAUCHcWxebix3KPdSh/ht5
	 o7rZIrz0h2yJK+AVuIkNZTMPwoh0p21/0xGtexjkla2EdtcSXqwKZBi/28yow6Mazz
	 U/G71HSdNmUktbbNawMx9GkNKk+TGnl1TRWKKQwO9I/iat+S8WJ75R/J94lG6zLzfF
	 yEijnlBHpliKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35CFCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199499369.5482.2696125417678942318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fb9ef64770c5417a81335140e071806215034e012dcd5fd618a3e532f9b7bd
Date: Sat, 20 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781994993

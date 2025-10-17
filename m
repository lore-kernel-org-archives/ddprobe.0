Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E895B26B0B3
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760688594; cv=none; b=P6QR7UGeAUrRQ6przKz7xNclhagdgzw9PlUYQG+tVirY+7O3dYoTjXK5A1YHNaUa774ef491C/IR2yEhEzjlTgFCemW9MRSMDAc3ZHnliMyEHaZejzBG+pjnkaK3LrCLzIb/GRs+CinmQdt6CYSfGz3QCl9Q1xJ53nUewLCRWLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760688594; c=relaxed/simple;
	bh=NFXl9KX6Ou1qAYHfhFnCthUPblsvdOOCXHBp4WpkMpA=;
	h=To:Subject:From:Message-Id:Date; b=YS1h8Ji+8jB0k20QbLFXc5Fn8Pr/UB3m3dH1bgOED8ibmZ8i4NGWlL2ZJNz18pQ11FtnYif24z0yqXiyvIIPFgcff51suDG8npGtLRmPnrxRP4GI428aQukC4wFe7I9aQWMN+Jc0bhFP/Q2RdnanWBC/LLzCNyai058NYXzVdlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/JpV6Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/JpV6Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F89C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760688593;
	bh=NFXl9KX6Ou1qAYHfhFnCthUPblsvdOOCXHBp4WpkMpA=;
	h=To:Subject:From:Date:From;
	b=l/JpV6Jb4G5aocA0Le2mu/kJolHQ0qiHbnH6hYrVxxaFVlD5a803YbJu//eSvMhdm
	 W+oOGMIbL4d4wf63g/gDAIC1tK9d+QeNggamnFZeqap0BdH7OzKTzHtpfz+wWTGEeH
	 ZUm0M2PPMTtKiVs5pQVZ95hR+R6PgPpcblUhPblGiwK+wLbqGnuQxt8Dax29TqYN+g
	 R5dq3IZgwkR1pTlQOAxU5WREIZCo+ZnpDBztZQsKya5N45KSyAK9sT6rbG6NTgSlbX
	 JxQNXVprlyzsQjFyYw6Tz2rHa+H2l1dEIYPN03IHSTJFo6wt6I63t8tbDw1Wh6yzG2
	 I1tF5CaxZnXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90656CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068859358.21112.6450788098113725339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9863f6a1b6179bf0dcd6bd449445685311c94297ea7afd5fef0a481f600748d9
Date: Fri, 17 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760688593

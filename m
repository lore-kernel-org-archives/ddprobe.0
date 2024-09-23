Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5681E487
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727092554; cv=none; b=IVh7FvzyN7Ub9GvpH2ZvoLzMRuCiX448VrMqPyR50wLI8PSRt4ZIKjv1OXk2RTXVIBuYsmsXDLH7ODrAl7UIVl95hdnwOzyBlbFzcnVZt/pgjwEWwygRrO+fx80YrqiC4q/IdhQt+Fi/03LXnnLn3P/vFoP6XwijJ34puskgu2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727092554; c=relaxed/simple;
	bh=j0dtz+5NrnYB/VTyA79ra/LAdphHxceVu+NogMG4xYA=;
	h=To:Subject:From:Message-Id:Date; b=ofuASoeXIjp1ITm5L/vfJgRt2tPDHehFT0EpL+6qVxoZsSxomTAiDrsbXegbfhItOXYZJyBKjnVXeQdQVjevWxi8b1nCCasogv9dCT4S0l8mbPcZ0oYdbTtYDjk1HLXnEUZ7xIfqTcugBC7/XfBI6NM4t7KE7UQi8M62HGIzG1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tss8CnBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tss8CnBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F4C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727092553;
	bh=j0dtz+5NrnYB/VTyA79ra/LAdphHxceVu+NogMG4xYA=;
	h=To:Subject:From:Date:From;
	b=Tss8CnBZ3PHSGTdudo4BvQ0EOxI6eZnlQ62U5WYOyZ6qyVKYnTwh9xDisf3xJXd8Z
	 kEYV26sqioam23rVQaZK5mOz+tP7boO0+83j4yVRA2V4TitVzd0g9ZCYSs+Oswylof
	 PUXw1R+egVdOxKicTTR/HvOfLihEFhYosU+sKO7bukSNe6BPv17lmi7p263kyjblou
	 IvwZfQWn+n11bF2RFrLAoMFQPFyL95zuZSTvK+gYs58H4eiY8x775c7h8H46x+00d/
	 m5p4yrJMXS+7Pe+krl1J81TbpLL8sPMLbpzklCT5rhzHJaaZklAIU6hNd6yDjx9/6n
	 VGOatjPcOqCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98641CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709255361.21775.13239229176435127276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36acd983ac794ffceb7204922ad4c3eafe97a7335dc346638db81279149c64bb
Date: Mon, 23 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727092553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F39227E83
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760077794; cv=none; b=OBxyWH9x9qCQlZ7776To31pTmqz5+C/5vXGuH7xOocWyEtrXh+IXyC8I/7uuJAOhqDJGa3TfeqMurP1TizQm8V1MqbsEP6uilauT5JBJ6sWlZPiHxk5d67ckT3gEGTbE9N9uHh4QzcKrG3l0s9yQZ/BMK9Tu49iq79jIsWgD26U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760077794; c=relaxed/simple;
	bh=mw5wU+U9h8KT4D1A0H8wxVTF3Sn4NEj0q/zeGlmotiE=;
	h=To:Subject:From:Message-Id:Date; b=rmZxfg8jB00LR18VzAOU8VB+gR41ndgR7N0A/upRGuC4C/KG1YcEHb4b6XkbuEsDgeQMLCCW306Bq9k3FeDhBcHXJ6ixGHh9nyBrAw+9sngX19g9l8yIhaI/fE52IrQjb2/ERK8TOL4JCPYUzHFJ3Kcx7VMZwG7KLW2bCQPyaX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rz8c3D0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rz8c3D0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760077793;
	bh=mw5wU+U9h8KT4D1A0H8wxVTF3Sn4NEj0q/zeGlmotiE=;
	h=To:Subject:From:Date:From;
	b=Rz8c3D0GrgTYyhF7ja1TvXCGtHq9qEV64s5XMXJi6qM+lvkFqw9Nc87Rqc07Hy9Gz
	 2l6BfvJGaUlkhmFb0Au2hCwkQw3v7h7UveN/EQhJr24fD9OIWkHmjDpmTcn+voOJE/
	 zgRWpwNRg8Sljnb/fV6/YaRq3r0SbWnw2v+15lAUG+XjNB/YcaNC+4dCskcOy2x8gB
	 qTT5jdT1I3lOUFF/7Sd0bDeuHOaUk+gtA6zBwfFVJsNBjPvJoBko0eyJnK0LXlfc5p
	 RfWMU8IY8o+JBaiBP9uVrLagrAp2G/PcC5Gk/lIOMdheqf69nwDYeYYfLGqytDDXEp
	 5eecplOC/dCWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153ACAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007779358.3390.3223517647851071783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fd2bd099216a995f22217ef62782fcc01052002136a19d270ab434a542b9db
Date: Fri, 10 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760077793

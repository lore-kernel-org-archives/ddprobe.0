Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F182629C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738316754; cv=none; b=kh+PcVaIUavDvX3f3NZepbNd7UKJdo+dEw2n0zzDjwqq5T7cowcNXwgIW/TV7yBTmELbSj0kzqESKzT3VkO8U0zig1D0Q5JgQQBr1NnfkVEdxNgG/c8cr6t02W/6uOfx+3SJ1XXr1j6yrwjp6qomTZ2bJz7Wpz1vUQYomZh3T9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738316754; c=relaxed/simple;
	bh=b9JYgc18yZelqOEaXoGrOFvs9r6eResu7b81P2Hb87Q=;
	h=To:Subject:From:Message-Id:Date; b=sfx8SXIHNhW9XbD0f/1/JuJeCE2cAZLdsOtRRPLGsLd8h54lcT9J/Wh5Qje6q4DiaIA+DZEloIJyRaqRZOaF95BbCmrC+lZyHqONGGIx4pXTHI/KPAqcoMfCaNIMSIoIKpv5Btw3/TkxfOAIIaMIA2RgWvfnxNsOujy+28SeXiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEdxef8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEdxef8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA77C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738316753;
	bh=b9JYgc18yZelqOEaXoGrOFvs9r6eResu7b81P2Hb87Q=;
	h=To:Subject:From:Date:From;
	b=dEdxef8N052aThGrGi1DpX/YdpywePy9UtuUKRSfscOd0OwPxNdUy5fK24QugtSLu
	 tPfiBk73/AHaGCE+rzc3YpKsXrygy+0VxjwexlV4G02+8oYHCknscQGmyC19Deg2sA
	 19WmxYgG78jtRubcZSGa/E17MOIjVqq8yV+f6Q6UWMclAr+m4+lTeQ9s9rfK/veMeQ
	 VeR3MGbS99ZAKYAGz7XojhzvcsMlz8i684wGMaGkvTmGbKCGOBJy/bl+F3u/JHp6wr
	 +Y75L0udEWtfr+varUpoR6+vtgV4XAtm4SnQ/n/1VCsc5dtohMK0H44ucQcQzSfD5Y
	 4RYp1ZGq3+EIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF47C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831675362.16640.17128778680028749404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89891ace711c40d9dafc0f3cf6bfdea3e8b429b242000cf4a9eab084ed86099
Date: Fri, 31 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738316753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500E223BF9F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784385514; cv=none; b=XUz3BjOzU+QJGo0SmytT8SEbU4Evy5BgalIozEhW1VEwLGWsya7PN8w+m4Qit049J46eW3+YryQEEFTzf9ZlHiux04g/Z6rA7/kPFXyA6j2gq39lhQ8IvTJx8zTjzjZqo00hwnGnajevXa3fuT1b1ikCF8aak0PSGxSaBs5/Yb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784385514; c=relaxed/simple;
	bh=Oazt6zsfnx4sgLXH13gzPiC1B4FFXxJwQLDeBvuojrY=;
	h=To:Subject:From:Message-Id:Date; b=gdURYAR72KBHbJOpl/lbtDJ8QjjNXtkW/9bN3QoiQtzlkT4bJ5GdxjHSNfHSlvXztC3aVeO6i01MWvGz+ncDARY2eqhWgCp7LUp1XUY7erwCwhf32DNsphdMKXjq8i8nENzXYOEAXQB98rBFpDYNot4ev+0jSL/iYUPEtTOUoGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbdSQs6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbdSQs6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C61C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784385513;
	bh=Oazt6zsfnx4sgLXH13gzPiC1B4FFXxJwQLDeBvuojrY=;
	h=To:Subject:From:Date:From;
	b=GbdSQs6kZ8LBZq+UYDZ8cTo9h0pJmmBLYW04++Jg+uFZNQ3IWWef4hgrJIbUEuAoz
	 4gf9D+3H8raOqWEvQlv47yJzBXA+/9e0RAGApD5kATBM9VWgyqfsAtGGi0YUSlG/BY
	 +7Puc0u+qjBN0ZWmrnb1udWSc7g87U18qoLocFWFR2d7E84BKrVrgB5O+qURQx0A4u
	 6P2s3WQM0SAYGTP4aFqfx+l6Slrvy2TWbf1NbMbDIJKQoOBhURoryDLgJPt7Y9N+G1
	 l6YVWXWs5MTy32BLl0f4lvyj9HYjmTSEl9+DtrWRZ0H1eYnP2xlBWWRE3q7+ZuIKRQ
	 aEffo2u5czwag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA55AC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438551368.17523.5266296271316605669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7852e769f25b679787deb8938dccc3ae7be0587a79510059ad51493eb8a07115
Date: Sat, 18 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784385513

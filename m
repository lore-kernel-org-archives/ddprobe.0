Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F41C5F13
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753520994; cv=none; b=YpD5YIRJmQOwCriHxWlF/7PQw8HDt2hS5jRJ5e02USSeIgDB54XJs1ArrVuJP17N311udT+yvloh0HfOxWUveP9ev6HTdsuz16YqbhBX9deymls0j750fzuJQr44mxKfYKBsgXbG9OzhDg9LJzxEEeDLVUpHPazuO5XNG7HKl6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753520994; c=relaxed/simple;
	bh=thQ3jTiNodwfeF5nC8pbd0YsYave3GFepqRyQae+sQ8=;
	h=To:Subject:From:Message-Id:Date; b=s2+w+xGFcGHLmdbO5Q1Y3Pn3Ny2E3/ZpcyQpa2gxeTFVgPX9AfE00lSiPp51hu2zc46zI2W7eC2RMmulIpzaWdgpDbAk2kreOc/XJfFZTYAa0LD4ced6N79H0CRdhyeOG0CIGwsENC+U4Atroqf2eTGK9YJjDsK7TgJaTG7XlD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWacE9XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWacE9XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E37C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753520993;
	bh=thQ3jTiNodwfeF5nC8pbd0YsYave3GFepqRyQae+sQ8=;
	h=To:Subject:From:Date:From;
	b=ZWacE9XTWY/2TtQralPbHX0YvYbf15OcWAPDlu8/iQa1i3RuFG5DWuko30ap9A+38
	 /F7BVAaXQHgEtLaqjwq+rlRLVrQGBHjI8Wb2HmyB4JuUXAeHhuSPy1XxVLw7mJmMaB
	 lsIyful2eCmwvmcJI8hzo5vIEl2x1ePz7GD3uwrgZkrdS5qKqNR79zuopbfQCk92/u
	 ilLaWc+Bcj6SSfO3qmuGod3FQx3BYbjARivqZfAtrqb+MYqAaxaHRxEoLJycOV8YM7
	 dI5qfkNAeLexCYk5ZtrtgFAAe8zLgFLEPAOlI9ilrVekPpBqmHXNStxjXRerWRtfgd
	 de8DM3ujZnUzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F430C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352099357.6299.5781454131179031839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d391595aa6c1001059f310b39f9a42997db6c8bb2486915e5641bc6bc321756
Date: Sat, 26 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753520993

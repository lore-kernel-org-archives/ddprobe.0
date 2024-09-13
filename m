Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE81B12E8
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726199154; cv=none; b=Da06rXJHICVg4eUtBFBtDNhC9wQQvArPF38c+yyibVuBfLwmmRnICDHupD66FgJTndZmJL/cWg5vP5InEIxQG/Xqeq92u0ugObpwcQDE+BAO/ykpg/xUeqHLMMt1AFQ1Ewe3LveD6pT1VinZuxqeQVuMq4lNRNLydL4gS4unQqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726199154; c=relaxed/simple;
	bh=BswOf0lzL6rTYrornJF8E+5aGNMzS4bWEcOMfGvVwLg=;
	h=To:Subject:From:Message-Id:Date; b=uziy+FxP3SZ8HpPfS+K9tFZutjb3Xjmy/9CzEj2S1JJDXegPRdeSulRnd3hsBTeV0MK/uEsJCSQtRwKKoBEyaJcbdh/jarQJ/jG1sS1qrumSHRJ89xmfIXb6Fjvs9lNLbNosC9GTAXbY/BEbQ3PwQWHGauvhoYZnAKu/RWJ5NOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhvvZxhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhvvZxhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828CC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726199153;
	bh=BswOf0lzL6rTYrornJF8E+5aGNMzS4bWEcOMfGvVwLg=;
	h=To:Subject:From:Date:From;
	b=qhvvZxhZR4qjvpx/VeAjm1f0qud2B+F8mg63Qo+U7TmyQ95WCkD8hNAzC78udt2qO
	 tkKcy9ENF9hPAnMprvJrC2PbeLrTvkuutvaiVCE8TtdnZ6jUHI9JGHs0nq6dRw9zlZ
	 eGbHxL/wdinMLPqSq4ZIeIc/IhfK+ZROTkxQWda3e2zOHtd7/4G0jFNN8T3gj9xesk
	 5yZvpKQuUfbgSBnTcBmL36QCy0Wi4YfcZROZhdW2Kjkqnjn7v/AEoU7grxRMnKcHVE
	 /nZvuRegmMFJml0gxi8XvjMlE4OEsf2pQFF5SITv0LPkERHU3BC0un8UkI7uCfbAFU
	 +XkxTQ+xggelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E30EEEC08
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619915361.26209.354240989838281500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09ecf5e08783cc4a52432df61d936ae5dda10b4ccc4ce2c82941916e25da4d9
Date: Fri, 13 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726199153

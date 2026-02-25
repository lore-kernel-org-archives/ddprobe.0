Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2673016E0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007294; cv=none; b=lJF2FigtQ1OrAIuvi+YiHeNkLgPWGNhv6bGa+mci3N9bHDHucwIsTq+boZ/Ti1VQoIP2fScKfZpbBkeIbYZIBhyv+oInkWQVKX89PGoNX74K3GxyGeNanoOqYIp4iGFN7U81lCm6O3vCmbI/Eb/StHEqiIyPK3oGrgtpsFhp6wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007294; c=relaxed/simple;
	bh=7YfEnKEfuywibsWCRQvOqwbmeblSMqOXD7caxsl9xrA=;
	h=To:Subject:From:Message-Id:Date; b=QfJ30xC7dC8xxsBfERoLdpfGSdokXLADEhIP4AFcMZ0lDKRJGiONniXx8aRW6hQZmaoaF3Hyq1KAZmlIgj3zfr32YujDCXprzWXtoJ3CFh3mdLnwHOMlQddFUXvaiq7YKfPgSHex9qK8YREwSBa/x+QAiEapPNxkhkaZw7/1nfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9pkDHMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9pkDHMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3426C19425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007293;
	bh=7YfEnKEfuywibsWCRQvOqwbmeblSMqOXD7caxsl9xrA=;
	h=To:Subject:From:Date:From;
	b=f9pkDHMCgtW0MzNMAUooMy9YXjfIbfYIb4HS0N98kpFuaesJH7AqdrIiIRDlnV7Nv
	 L44J9rTJF2SCZnEG5csqO3eFbB5RT0VCDzqx0ucEGZz7DWV7dUNRLefKmBwmcjk4Oi
	 rQCem6aNUOv4onLXnnXvoaYr1gIzmv1afkNzNCWj4u5VFFIDRVhaFWXQFFCvW1cM9x
	 RBMMUVOqmvbc4oDex9zWCdkCXC+SbxFjR6Q6g+iIWKki6f91u2CE+o7U+8mNZ3IRDd
	 pJ+g5MHoxCNcVQ+YF0+6iY/6eNUS8Fi0mfkdw/cm5Yo5HUeOcn1uogbOqlBTfRLM6+
	 lXxQt2kKeaMMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222CEFD207
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200729359.6733.5987042212729729977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4de4c26ba07df20d7f981c9041b711fde187846806ce5275e4838b3345e891
Date: Wed, 25 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772007293

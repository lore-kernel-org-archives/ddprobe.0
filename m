Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3022C1EEE6
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746103194; cv=none; b=YHvIFmTdKRjGOrl8VSF8xBVXzV+uHjl9jK/dzQ0sewh2HaR1bhltsMTJLo4sh9pnZ35DNb+NXs2sDTuh73oXTUTtDXfZ1WiclHGToPeC8Pd3BuwUFT4n/ck0W+Q5yjusQUtCt1NBxZ4ZH1qPRI6cWsYcC3PQaXzBR9ZrIKfIFao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746103194; c=relaxed/simple;
	bh=+ldbBCUaDNXs81M8e2uTAskrNNwOr6D6kdPpw0AgvjQ=;
	h=To:Subject:From:Message-Id:Date; b=PCx9gaIff5ZOyoy85DCax1uEwUy8Usm4NSWK5CIW6oXlQoqcCEWYwnOCHf6Ar23WVFi7Q8uV+Cg9H4+72km74lg6Gezb+5TvHyoHOzJkZnhZKrE/xWE7TFs7IsIlwmUROwporhGpYwlA83p9uq1a+Z3N6cAc6Txq5uxGPxnGr7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzkSUkgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzkSUkgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746103193;
	bh=+ldbBCUaDNXs81M8e2uTAskrNNwOr6D6kdPpw0AgvjQ=;
	h=To:Subject:From:Date:From;
	b=FzkSUkgmDlPlj2GC4WLyasM2Z7Cw9LkZ9E9/NbZya73papYOCOh+EQkgf3SvDiHbc
	 wZKIHHdNI3wR5WgVvZNzbcAdwAwuwwgulLmJkCYfv5yiKcwj0VRhKwzdsKAzFXTLzo
	 78KfrySdqYSLbBd+95xqmElmjBA7uiMItetbIBzZ3P/eQ0C3tqpJCWFMrqP6/BC47/
	 EBn7wfXfpIQezoURkhtOBThf7FCO9NikvLb+rz3/a0j8KAHYzPHq4GubH3LFs3On1b
	 FEcFZMBAcMpwMU+wqRsmubchkc8xVTLR/lHd5m7w7bQa9UNw+WZpw9BtR89wpaJEBj
	 FqP7AFC4YRbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FDC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610319358.19818.6639001577382350803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c61383067dcdf16fedfef7951d1a1125746ebe0cb28e96464c67c9bd1b76e88
Date: Thu, 01 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746103193

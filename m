Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD04EC4
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744520394; cv=none; b=phOR6sabo48547a3aeHfrdqyhCeWXZU03aHS7Rt2gi10WbFOgB5HlguN3+Ua1TfeU2zImoHepQes0SOkcu2r99SUu+S1z0Kgnr1YLNoDL4fd3LbW82/qPyQzUC7TC+JRjZe733JbpItoFSu2kZn1hbeyW4fSE8lmpytbY42YFPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744520394; c=relaxed/simple;
	bh=UTjsEq8TEYEgeVXkzWXFOxfvi9/jbWkqo7N5LK0Eb6g=;
	h=To:Subject:From:Message-Id:Date; b=f5qUlqPb1cXlWg1Gej2deTtGFpXzh7WQ7fc+Y0NmKuF3FKnTSxTBm/yWdjtcLe2GhUjeiqGAFjusbEYRABOvcDTTdnDU84NW0Cer0iHEXDHXCqgknV1PLDZsnb9zTtwTbuA1Mr82FEtQOUCIFeepI4dKrXZ4nzuIGduygIWrha8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehd9IUYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehd9IUYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744520393;
	bh=UTjsEq8TEYEgeVXkzWXFOxfvi9/jbWkqo7N5LK0Eb6g=;
	h=To:Subject:From:Date:From;
	b=ehd9IUYfsX41OPSG+G05ZIjcvj3yvKJm/2KVy+Uu39392ZnslaH5lJ3fDnx4fQtAv
	 iLkqBFoBAjwdKHticuaT9Ck+cVmdvt+aYHWWA4yRf0ltPhOL7G+0MM9Va6ESgyVY34
	 VHIbIYElVp3KyriipADmoMHW0p2+2NZIH/58DGWdOn7baQOtg8pEHE9fJXeCxdNzn4
	 c3wetwYbptrZnhm9nxmm2zhQ9h9c6FJuY7BXSB4SVEUP6/IlvYPaUI0nxgl9v6rYYu
	 EHKgRaHWuaaiwBIw6mvsd9KOz19AXSS5NoqknqhZfsew/AKwGqVCzgojWa1QhPRC3X
	 ali6Yg93wrbkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91318C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452039358.23591.16785583039313290660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f03d1a3ab94d6e40d51299f93a67462adcabb049a40de5cf166ed7261b6927a
Date: Sun, 13 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744520393

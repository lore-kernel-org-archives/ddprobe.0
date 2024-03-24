Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1647F33CA
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711267097; cv=none; b=KPPe+HNi2KNr2g/nxNeHXv471LKkt/6uAd7R3G2GcyFdCupsxnocyILJIxBf9K8VZBmsrQTrP3QdIww+yy4DVgizDyBy7khr7fuWR66oDb44jVIFS5aGu+7qRC2zov0Dwh9N027aHCaXy0u5SMwkwp2hepBTbpeY4es59IDRnwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711267097; c=relaxed/simple;
	bh=MW1ZKX7GbFJxz1ggDHbhYEPey+W/jTeleQ5ytMUThmY=;
	h=To:Subject:From:Message-Id:Date; b=IGRRGQZMx7MRb8K/Ed7fkyqp04F3JNdjCrCRHvTkKFyTJ27KjXVp71kOXurzKgOlY7gkjDNSKyFnAJdb8lWXDgr6+UQLfT1jq8o6hP8eUbdYCB1UZIsZ0u7r5VJ69RpxpKZUU40kP0QkRtMj7mOUestsL+5cbeqtsLiz7HJttmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGSiQgxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGSiQgxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C546C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711267096;
	bh=MW1ZKX7GbFJxz1ggDHbhYEPey+W/jTeleQ5ytMUThmY=;
	h=To:Subject:From:Date:From;
	b=CGSiQgxMc63ZBVQBIHkm8Y7Kfy6kXvjLdmCU5WBdWRAjDMOqvcP3j4E7UgYQku9nC
	 5SGC0E5ndlPGtsV1nEuzy8MwBDXHGzBk4hK0sdYy4xQZ/+dxihfJutzK4KDlJovjqu
	 BkIo/3M2paI/WjD/BMQfEz/2R+PJrxT+kyQ/Ay3ORQqt1jUliwFMtn0/SY4z34Ffdu
	 +LC/KwvsHVrTeztO2vjfobr7gu6oYFSgrYvb1jg1lzx39iR+At9ka0Ok2J3Acp4qko
	 pzslahanmltinzVPLiLj6/3FfqLbry+Uzsy4MWZUsSqGtZCI63hE9ox5ZFk9GiHk/Q
	 IAk0RyDdar9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D387C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171126709647.26694.7803107880705483616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8adc1b7a0dbc699437e8f44fe34ed431c2adae5ad9487a2e5c28708da09d769
Date: Sun, 24 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711267096

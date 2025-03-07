Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A5B3FE4
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741306134; cv=none; b=VXvEzPU1hYv5xN5g6AOSr7F8YTM+8CCyI7elEQ92GYUTPXw5Wy46xA1vWONpdEnJnlaCRm0M6Za85d61iUHLHufzGOTSv/Ta397bAe6GSNfI10LGZMlMri2EvamjDaqr+OqV4qnZRitqDfC7+3K0ss0dONxPNPQfF2UvdRJdz2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741306134; c=relaxed/simple;
	bh=KKVYePE6rOUBQ//d80UWnAEqcXo/rD4S+jUZobJoSYM=;
	h=To:Subject:From:Message-Id:Date; b=HEyCC6gNtL8/4wmfqssYBSAz0uBTiDsNshP2RTzp0UM7jaN6ml2+5avB3oHK7LsIdkHxpKEt42Q7jPfzEG97XVYvxNXxBGMgOoLWc7hAKCFgRIqtieA+0z2KpUaAYeQdAecMe6Oo3LeSisgIXTuBrRRj97AU1NpeI0KJQ2dYPhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etSh/sPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etSh/sPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741306133;
	bh=KKVYePE6rOUBQ//d80UWnAEqcXo/rD4S+jUZobJoSYM=;
	h=To:Subject:From:Date:From;
	b=etSh/sPtDvWuvb5as0kllTeZSBRAL7KajUDWynK609PoV0g3iAW27WclV3OXpBBa/
	 VQ00Odf+3/9scQ8gsXptsaelVgZo2Zv7Nxdt738d7QjWy3o6Rw5mqP6xi59tZDxf2J
	 YMQ/iqM5E8j7omkrHf3ZwH+EDaOkI3Vso/9smniDLgMAHwJ0L4cTyNJJVJTNBz40Dc
	 Te3jMHBY9bS05vQXcGW0s8ccjnSUJ/NQiPpUn+d7W+uBFS75Wjx7e1HPjMphR5LfXO
	 OyfR878Og/Va8c3BIOpNxVj1EsYUgURkjMiU0U/RCdM1NauQE4pUjgs/7YK4xrpuFG
	 MsTw7t/G12pRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389FC282EC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130613359.26421.14958196942833697480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0187108be12ce94e352a529059eb820df570289df9e8f162d72dbf2f484e3a83
Date: Fri, 07 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741306133

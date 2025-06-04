Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F01FFC74
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749069595; cv=none; b=ln06/9HloMRWrFfZp4/8UymMWFNtp+HjGGGz/59K53E/egxg3Ihx+JzLlwFADAwrhmiq6q8Io3OvE3ZkNSbus0TFuToz0sOW0O83onym6bcrgBY6atWYrICCuDLYUiqSRvj3HJMvgCU1txP7l8cA12zDK8ph/wdrQqd6/F4pfKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749069595; c=relaxed/simple;
	bh=xQdbXo0nOLdRxKNXUL//1n9UWqAvlI+dJIsDgCj22KQ=;
	h=To:Subject:From:Message-Id:Date; b=Y77dtDbRBEHDKwUTO4lTuMn226aP+KWtZcQK6Lmf4y37yzSU9vmC3gCbfezoFljbHokSsvTizntq+P+qVDSdVHU2VHf6o9U7QVJkg74ezqiWLEl2W1rNdFroYc6Egu1edwGCSA+jf/FhbMoivCDiSgpA6MsYsNvCMNfq7NraqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiuZCl9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiuZCl9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749069593;
	bh=xQdbXo0nOLdRxKNXUL//1n9UWqAvlI+dJIsDgCj22KQ=;
	h=To:Subject:From:Date:From;
	b=BiuZCl9Fgsdha8lHjrWdjq5rcBnwUkrQRnv14tphAmSf0omZNg8PD3ORValpH2WAh
	 oIFyNK6wQ7z+T1Ln30PNVuipKvQ92E37/x6F7nLBC92S5EXbJP0t+rxJTEOTa3Pkal
	 5GAg0gAiMayUxRGFeMSwHMBS/lplqmJUe9Kl/9Iy9AAUbAuXvkNSO/kNpf/B1bJsCg
	 0JnC5U2k/GZ/oe1qnpjo7z1uF6tzlQmmE1ngQMvARhjOrGWeDpoMXhYc1fORPyZw1Y
	 90mOvBEjOpjJZugljldgt0kMfqaLi6iE4xERNuITfitBayuOXQH17UCtUe+cAAulw0
	 PVdqpLH4Ys/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B25C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906959358.19270.6703995568862575365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51351c705aee500ab6f2a9c4b77a0321a9d0020404791fef0249a6bd0a3d7bdc
Date: Wed, 04 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749069593

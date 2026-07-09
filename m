Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7424C0415
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618114; cv=none; b=EYPRflh1PuPldgCIATKn0vw7OQgh1XwAEnmFbZ8/Hz3N7U+8FobTkaOmaLwrA/GkeYtIxczdi29909cDyesRlXHkcdzRevtTYKbajrbwRTS286JDkKj7lxxNc+XZdpRVXCkRQjI/LrsHd+GMC0niS/CtGWFa602M7VrSf2Zy+oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618114; c=relaxed/simple;
	bh=H6cqSq4eMt20I816lM5jJQstKgjfCjKksr7uJE50YtY=;
	h=To:Subject:From:Message-Id:Date; b=NGNiOIRXXfCV+JnvSbcMT4cHBbID9upHU3kCmjRRK+34UHCiaOyypiSG5MWfVmL0PxXLZwd9mhfisXtQaqVAdn9Z7o0EJq8iIKOdeYYdS5WPkeCJNe39iRH0d2vf4IG/P2hnQ4/s3CB7zEEImIH1hy03A0p//aMTeLWmLRMOHHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiqG3gP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiqG3gP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8E9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783618113;
	bh=H6cqSq4eMt20I816lM5jJQstKgjfCjKksr7uJE50YtY=;
	h=To:Subject:From:Date:From;
	b=oiqG3gP3XOP+jkQTbPgEJ5lUw768aDxIvR9XO+yXICEs7nNhY5zcmwb59FkuCJUk3
	 H1SmAHyWZuJaPsAaEhquaFucssz413tTLdPTXGZX4vn0BWxXadBYePJOm7C9A/nwcS
	 UJGdWRSMvWqXZnadU2P1L6rnThHa1uNe0Scfz45MHUanW2mUc1cEE2BMq6JLrCYGBB
	 DQhiDNDZKhrQNh5lV4cfWjI5ypgQAjL12g+g96M6m7/EAIEXXtb0epJRFGUlGkHeLA
	 NF00AR6dgqOupooBcv4CSI/VZzkCAhJ7QWj4vDtTRfrHcPdLXOuQW5jlW4XQJIJjGX
	 JkRhOnbM2GBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A21C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361811368.27018.2498564963545297658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4709dec6b9dce8f1e1652fcf31ada0d46b6176ee82480c36f7d4106438ca6f56
Date: Thu, 09 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783618113

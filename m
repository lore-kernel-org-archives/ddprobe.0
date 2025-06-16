Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32206289E0F
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750099794; cv=none; b=VrhRmRPj6yStHtHuPct1z7+bnUcPcsZbNuKtLP5IOsuI5sOK80lSKQpb1v1+1VNB9zpPtx8IYw3CzAvJpzD8RSk1fvmRGxw8E+M8CbVLJVfIpHd0ifC9RVUdN33nlOOB7G6HRwH3W85/fWp8mH5OA6jGapUpOex5fN4fLUA+EKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750099794; c=relaxed/simple;
	bh=4pZjRtMfw9pJV/8eo7ozPfQ76QUnfU/gZ+2a8rdVdxc=;
	h=To:Subject:From:Message-Id:Date; b=Q/DUpt007ZSDxUEy9lvwzP8jzDZxj+2D5hc/a82/Grxpht63m0Z90wKXnkatzRILLFLY3WDXaEETWRasAP04ZkRIDaypu60zo0KZBkBDy5/OYZyHmx1T/UXurmlH/CqZECeyExJjz7cjfEjA/sfATXFR71XLt5jkXL2ydOrwUmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHrkR4of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHrkR4of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A855FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750099793;
	bh=4pZjRtMfw9pJV/8eo7ozPfQ76QUnfU/gZ+2a8rdVdxc=;
	h=To:Subject:From:Date:From;
	b=YHrkR4ofAafaytpRagxqCI3rtfCvmATgi9jAvR8WOcwGKIt96y0NRYQhySLkPzRGB
	 +lmcON+cfhsUE5PyxNw6m7G4SUTwvdOUe2O+S8d7PD/e0M1Y36fT5lUx3rtsi0ibFg
	 XDlpkOsPvLzx1phgyEsrg+WC1EhrAQ2vkM8FmdZxKhJbUiLvmSI5aOtaAsGZvoAgSX
	 y/fhZYhYVgq3GjIFQLtiNEo4ia38G6Lwq3IRyfddXBgyq21AM5B/cGvaaUepO3X31k
	 +phRnABJXD0I0xchYSV/TlEZhLlnYugwKCRS/S6nGKWRH26nxk2K9HLfQxYXD6T3tS
	 ouQ5aUS8l1s8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93830C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009979358.730.9052052651984102547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d6359041dc688d75bceeb047cbbd431eac8894667b7f8852a9ef4529deed6d
Date: Mon, 16 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750099793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCE825CC79
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765286574; cv=none; b=r8X07U/vBQHZkbr5nP/GymU4nGTOshM1q8dUHxkklBShaEdDtRlZbVqlXwuDh0oPy0DczDkVrS8Cm6eywMvYCBcrLTYH100oTePVTLUAb0c8aTaHTmnLnChXQHn7l2WvfSW0Nm+dj41T+p1xINOSTru6FfcUhzIKx4cV/z2s0Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765286574; c=relaxed/simple;
	bh=2qfKaiNZ7RRXTCxRWnQtbJ1ZZri1kEHM1g1MM6uTp84=;
	h=To:Subject:From:Message-Id:Date; b=kyWEDiVuaWholS5bQoMO5JD+7Bz7kpaZqx+5n5kSNPcgOUfs/6SPRaoAKsrQ4x1uhBdBB2Ivh8JZk1xwHueQ0fJbGxmUe9/UmmMquab87s9Pp1yhxhUbeGzjqisWVOaiAFCRKSLgEvnenOBJK0CabBbHojE4sPCSQn3CP8KMF4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsETRvuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsETRvuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D7DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765286573;
	bh=2qfKaiNZ7RRXTCxRWnQtbJ1ZZri1kEHM1g1MM6uTp84=;
	h=To:Subject:From:Date:From;
	b=gsETRvujgMjZTF1NXUUQJmiqs/BICeW/wymj8oFag1AJvbM17RMrLpg2nBq3njvR7
	 uTsJ/cYZLOjaqoFV/ozKMr+HzC3VPIlvmiVHFzsSIXgtGxd7tgXgjV8VTxiTN3aUue
	 x/fRNfVv79RT2zPwUjykr5QquA7dIrK4EP7SJbryfJQaL7IqN32oZrJyalxqkzkOr6
	 5pZp2BdFk4Pjg+hFhw7xVRp9m2qeZtwkwkOMDHGzESO69enZ0sA0oxrBuxqlA/vHe5
	 mnRiIeZIy2U0GKwnkdJcCbKAAlnVaXmxWmCm/Mz98pKPsbJkGgz0E2OZjLzW+E1g3d
	 Xer80WEkEZPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927AED1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528657358.20564.17833868739467778043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f184a0f1050694881123ced05ebc18615621ff707f1e4bc51f68754a83f5dce8
Date: Tue, 09 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765286573

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224F199FAB
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791096034; cv=none; b=HZqiBSt2+BCmrTipASbb9SDsX/PHNNvzSBIQpDD6iFjXOCMM2KFPB1yg4nlkCpFeHGawNYMC/JnM9lnDiu80Euuj1lc0/TpEnysIP6GyrdnWDnO3/Sh44zefzNFKygqItnwVRkqyNCqOdpLpz2h1Vyb3aLmJJnk8XxLzx2PSmvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791096034; c=relaxed/simple;
	bh=RTDVjwcwd/00OcbLmD+HE9HPtr/bEkdAZnCDchLl7NE=;
	h=To:Subject:From:Message-Id:Date; b=qrnPvFi0mnb84sVVbWmatZScniXQ0hHUDK+s6/kb0o73hmd+LGCDHsud9zveTAC1fqWTNlvbujr9Pzu5OmJm5G81yjwv/N8xEmXNHhHOB2/xuUJfF1m+TWau9iVmGMm/3c5AUe2MYMll5B2CsUW2FmoFSjOjDXsMPe6VquHX7rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyVZmyrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyVZmyrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D250EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791096033;
	bh=RTDVjwcwd/00OcbLmD+HE9HPtr/bEkdAZnCDchLl7NE=;
	h=To:Subject:From:Date:From;
	b=TyVZmyrFxFq8qSFfxOQj4DmjxmqoLEaNeNZs5pEq2N8UF/CRef4Vnxe7rgDUc+N6l
	 9PMnFN5S63GtrHnUr6QsQSzOFnc+sAilvcbwH6i5FUh36Gdd6yOijTFbWXmyCBBkqE
	 Sy4MdUXsUIpl7d5JFPQsoPlgV12js2RpbN/+DFQg2K0dONvKY/RyK9ChvK5Shhlzef
	 RzYUoeJm7eH8FSPgVxbWMrLWA+8tKhogQxGW71ean0ioMo5tE7mU9QdtK1L1u7nBqH
	 Vdohn+zEYElLpl7VlFkNiIInYFhV6dUsjDdVYSBDdiFpggjir6RES2ulsc342/cai9
	 rrrhGiI2d53lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF71BCA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109603370.15565.10586402180459441828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b26a278a29a8ea6d7c929c5c22348548e7c1f8581e98d9ba5edeff8c75e5f2
Date: Sun, 04 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791096033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7702905
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745239794; cv=none; b=l6+yXEtOpns/TgBaIeNgdSJ6SAP6o+stpSCzOvUoeaq2frD3J5TtKyd9QYxEIaTEUuRARFTRRDhKFzByp6QLGvPoILf/lYoTdO+mVsEnnBRcihcw23Z4qE4DDAuU+jIDf5SyCLWZXUcZ3/yDeEu1tsj2yQviVC5W41DQe1jF4Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745239794; c=relaxed/simple;
	bh=vRGm9tQ8TatvNchOQogdR/EERqZtkEhAPlmHJYlDB70=;
	h=To:Subject:From:Message-Id:Date; b=TQlBNz1E4C97ozpmZRMNrkSgGduW5LoYcAWgSj7KoXnQfeg0WgTNcAa6KVCb99gJ5ZTlEaIQenWqnSkNBnVlXSzeDZ6yVHcee29WnHgqe0Y+cI6HDVlvVyQq717IdAgQZ10aZBnAf1B3aZkfWWcePQidBpnpWomeVUQdKLBMkX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPgwpk3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPgwpk3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F34C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745239793;
	bh=vRGm9tQ8TatvNchOQogdR/EERqZtkEhAPlmHJYlDB70=;
	h=To:Subject:From:Date:From;
	b=NPgwpk3es8T7r6MBbOWTW7YGhB96Ov9JHFEByUiSah4sRTy+YCio4VD5kQbR4OtUs
	 frFfBfY2z/FicuoPsnXzOT1s2lWL2ivT6mrAYFytNQLoKy6GpkR6FoAQVjcjYi8Fiw
	 3R1weCu5k1qrXORV7rOgP5SKb9ZIPZybW8FTGWfXwxxUJHmnna2pOIdjeZs+cNt58E
	 Q7YVA+GWzXYW2iu6OD/8lbDnLxrBRDiVzax8eYNE2m6C1rL5XIIsYmcOCgeJhqezh1
	 Zp8svBXN6uPgI3WwKrFv5WBXGckaj/uBLx+nwkv3+hfWWIYQX9Sk1BsfIFS+AY0vKa
	 STW94ZgdOXdpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C8AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523979359.10848.5431553744765826935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a780d51f0f2cbc37b9e0b8ab64d8373a81b4f2779d1580ec7115df19a8ddecad
Date: Mon, 21 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745239793

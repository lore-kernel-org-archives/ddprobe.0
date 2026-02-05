Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19338334C04
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770276234; cv=none; b=OnucRUzhWkiWnZ9zeVqYv+ft5qBmgP+Cv3ZT3dlUVTM/ltc00StVZgNnjh05iBIe+oF3qAAb5XTfgT0/TCZQSzRxAM6QIgsBek18gwXY0hYWKpACWnrdgy6Cw4QexjYo7FmcHpEYYhLguaO3ShF6IzImZYFkYGezyK/q3hFE5dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770276234; c=relaxed/simple;
	bh=dTKSJ4mO/zIhTXDB8f9d0sS3qM9Vcq7MGTiKafE2QXI=;
	h=To:Subject:From:Message-Id:Date; b=IQn85bMVk1hWKXxYIfRTGpi1LZFN7QKqInlMd6Cqh5wvZSF7n15qmjUcdst7ChpqDaCFKkj7UvHXK6qu5GJENbp3VRF/lvpJ7oijKzZLqn6McCIHUmTnFu+nA7Si37GjZXetA1PFjvFiLMXhIoDZWNn1K8bLyNl5qD9m+Tm3pxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTrFgxzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTrFgxzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFB1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770276233;
	bh=dTKSJ4mO/zIhTXDB8f9d0sS3qM9Vcq7MGTiKafE2QXI=;
	h=To:Subject:From:Date:From;
	b=KTrFgxzndhlma7idOrxcQY1gZlfscoHzdEWtwv25FHycZN5nmbSjTa1gjvydG/ktd
	 mc7ZMOuPZ25VRf6EQiwG6i0LCZT9jlQCbM8yuDsxP+NDd3zbo7pzveX3HvIh+N27vG
	 t6d73k7vZf0Oc4QUrIOOfIEYgqDsQgaP9S6BAWIinnLcvIfRPj5WHvd2yA2NCvOw/Q
	 XT5DaZdV2OuAdcz+VZUzzO8xK+kj2ipAbFPFT9LVHWjXTckVeNZ/BaTwrWwHRqFRr8
	 g68AAto8x88OUpDLzf3/w8E6vVu3KUY1E/YP6bG6uuF4iPTuWQI0sgbMkNcrnvj+zo
	 CW6JPKEvmGy/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B64FE91286
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027623362.10284.12984630633617605577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafde188ba2c4daddd6303d3ea744f6ca7011f5f8017d830157fb4c3ad7fd20d
Date: Thu, 05 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770276233

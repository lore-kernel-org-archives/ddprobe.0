Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D9D136E3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725059754; cv=none; b=rc8JIjbSCk0EYfJttl2AjntXQvqykLQYvt9w6nZHf9qqohgnHcA6oWlAHALDWxfHoX0UkOtwcXoh1iz359X76NoYgaXyS5HV5FSejhC7h5LH5vXDk7bgznVz3jbhs+o9YHg7rmwJRa0DwY+i/0RbYfMDLd11ko3D20uaVnAK92Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725059754; c=relaxed/simple;
	bh=iZ+GuiqcAyqQWbjUqGFEIq1m95zC9H3BcEILzKEb6eY=;
	h=To:Subject:From:Message-Id:Date; b=fn4evm7QzQqb0mn5Qb09hst1RZ4t37at8NBPDvrkJk08ZQ7shhwHIytSG13FwjzXogaOVdxCfQFmaRQtSD80PufKg16zeyC18yLB9XnvvBZOC3gZUcDxnnQk3BKHuGiCRjHzZZwvxL53Iu+vcSyYFAlicFS4pXQ+TXBDc1UzeMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psAmsde0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psAmsde0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE84DC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725059753;
	bh=iZ+GuiqcAyqQWbjUqGFEIq1m95zC9H3BcEILzKEb6eY=;
	h=To:Subject:From:Date:From;
	b=psAmsde0CCb1ycCqF8HI22igLuDTBSBiwidEudPfpFM1bcdw+4AHEldjzY4Sbfwso
	 +hgoWpL8JXFHmRo1cSlqpQQRyGhMkC0kJl2J+QRN/3NMndAaEpbl7vHP4SbGFVYg8k
	 P4O+l4n4Bb1xBhfiyPo9sK/JFQKR1fD5m7iLPI2nxpuPjZYw69BK84GbyIlMcCWMhE
	 eOEiDw30g/B8opboZ3rCEGKxFMNQE/MOsG7jL2NqktWg0ylMnVdg+hSg3umdexwsXB
	 luZVUOBCs1UZhDMWCafHl75bm8loEwQrtUqtiZ89VNjGrhKY2vRsMRd/MkmM5EzsMV
	 GGz49ygXcdJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C95CA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505975361.28921.2486777644200950065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161c3a378f2bfda3f4c1031bfdc2be2af72c62240e4a4e87fee2cb33100b27ef
Date: Fri, 30 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725059753

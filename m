Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF171361
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747397394; cv=none; b=gEI/8MgBCITyO2onSx++A+LXqPyzop7rxvy/xL5JnMFS14TODuXRtm+y5vWjOg4gONfcJ13LlLoJmRH8o4e9+L7XgntYIlOeytgjAeAcPhIaNkGI5rGCpGZQBwhZ1DQIrI77Gtrs7E8ovcE+8jU6Zi5284mOpSE1IbG8x7HOvYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747397394; c=relaxed/simple;
	bh=736HZVYfhJ6nUTu1x6O8GavvenuCh2RK/jnJEUHSA00=;
	h=To:Subject:From:Message-Id:Date; b=G6UM15CLJJxOQ+ljxhkSRECOKpPepm+LgL+1GS6AMeDvKlZnwn+f+RQlehOzOgLxVbqLSm0wzFWVtfFuTlcQAAMaN+kloB5qgxhaQhrH6P7Bd6nCV/5O8vfqHtEbJgBCJ4jsxBVjT9pzZb5e5kp30ZWhBwrQrOLK4GR0DAOAKGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9uhcvgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9uhcvgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0031C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747397393;
	bh=736HZVYfhJ6nUTu1x6O8GavvenuCh2RK/jnJEUHSA00=;
	h=To:Subject:From:Date:From;
	b=e9uhcvgbjciQp8hFSjpJnQGkcYPQ8T46SWl6LlBlgc0D8WGPNa1/O9zaev3ZmFxuH
	 yBKHKMS+ADIxGWhazIZskKgy2Ezx+bsPnOBIhmh9jpCypnwf8HHbKf9FC7kL94N54Q
	 6g6xkkCSCOZOy2ANnqZrxY2B96zCzKG/BjKnz31BP2HH+CT5kFJPP1Ox9BBdftZTBO
	 kO9knUQOg02ujsQsxPoyt+tfasHNzA1mtAUJzao9Eh+dw6/7j7JVhmr9nKT9xnmna3
	 TWAHaclm5b7h9NmVb0nTEkBEQpL2VyIT4UOXPGwl66i6zPvV84+iu/lod480I5j7nC
	 DdHJAGtgUyRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7AAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739739362.4581.12647716819680733058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1779eb63b67e3b0d12f839e42c5546e9c39bb5d560b2bcfbc0b2d18e11dd90
Date: Fri, 16 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747397393

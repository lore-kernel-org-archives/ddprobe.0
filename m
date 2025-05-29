Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88FD4685
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748546994; cv=none; b=X1BJpG5SpZ1meiogbfrgMQwEHwAqgGd2hFFRbPwFfLWO0XqoaaWwpHaNevhIquixj67kZybhLFAxWVDZCzYO4/V/vAkQ0eU5uEzMtZxYLDTQZ7LG3U3Ns+uHtf78PDYKO7l6S5g9MbTZdxKxCcUFjZe/1IPeFfQ5ho2B8O2rgus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748546994; c=relaxed/simple;
	bh=LpyoIlXmAnx43hMd1KEsqrC8Bz+d3Sne4S7OEMmrYdM=;
	h=To:Subject:From:Message-Id:Date; b=iVmU0F5b0ENw+/CDQKW+JvxkdB0W0LZvwY+D6BlTFyqsddbUdWzWFB8Fv1KFd9zmEcBz4avPN1eZOT4AJEm/bUSOegiw+B23OZbWi5HUhYfKZ6fnnqknmLBpvj01nlNmFdw1c4bNoWdk2CxH371+95DzRsOINKE47+Rim0edxcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StWJay4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StWJay4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA70C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748546993;
	bh=LpyoIlXmAnx43hMd1KEsqrC8Bz+d3Sne4S7OEMmrYdM=;
	h=To:Subject:From:Date:From;
	b=StWJay4PuOECQsvi8sarJmJ00lRRvHaI6Ve1ce5KnbvpxaUfNrJuc01ZEVLCJcS0h
	 yKf8VLZK6NY624cNjB7NgmAHvi5Li7frOukjy/KdZeW27QSJ0lqku1yN7u8GEpaUz5
	 ShcNEFOKgdLaCuguV65YY03eokif0jUkOgUvbuFsI7vOU/vkFIvrP7DGHoqQJ1xsO1
	 KZIShfdSMlKW0xK/ek7XgY6V5ccoptMDz406jKQUM0ctzu7lJl9BskwPMDZkLsVNnP
	 1si3q2yxAevTJHDChzws+o2JQBT/zdOlnIRxshTgrCADVo4jhKbtf9DpQUCxrmcqq8
	 o1K36XsgJKKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B529C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854699362.2591.14315542855707108334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5e8002919c29e947829f3d4323127d41ddcbc1c8efb802fd99d0665e12df9f
Date: Thu, 29 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748546993

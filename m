Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099057FBBE
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717416923; cv=none; b=ALzzsnOjCXuCnmNEvjKYQ85uG1vGRVxNZANabZUUv+uYc8/6s9HWeskc6gOfcecHf7uf0uXJpRMCPNU0rM2od64s6sa+RGNK7WrhTAjvJJUEy5f2skpzNEHWRd6Ix/wOCJXw7pDO9cKgPIzsJmkwKsQ4dxPD9WO8iTAgickRZN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717416923; c=relaxed/simple;
	bh=XhF19MtzoRYjcEsgJ6J6Eub4GV4USC9Fwb6F2V9VW80=;
	h=To:Subject:From:Message-Id:Date; b=Xo8K3jlviOxFN5admVy0Pc0VTBEirhwZ9Disi3TV4c3ISlXyuxbPbDl2nWNc/D5E4N1KXZzicAXkssHZH4W2R4SNBvTHGrrGtcSDvgkIluNPg/kvwQmC7esOl5+yUMOslcXw3/Z12Dz2ad7NKvqaHNTrnJQNf4Ws9p3MFYugEfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODbrn7GI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODbrn7GI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D340EC4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717416922;
	bh=XhF19MtzoRYjcEsgJ6J6Eub4GV4USC9Fwb6F2V9VW80=;
	h=To:Subject:From:Date:From;
	b=ODbrn7GISyG1bPeEiMCj3zbfIrMNckzHYjTqm4CvoJWIBRXCGP293JFybUBhVAJWh
	 e9u9d0TBqzOQAQB73mfI12TFa/PR1UJSF5wOYcoLF6naBs+JgglKDNIw2QhmaRZ1My
	 b6SXspEcFS/Ad5ihBrNr6iOXDmJ6cB7mJrDFfFmC1xo2zz98mQqus39hNOZ/9ReDZ2
	 swDNu+ekHYGQMczTwGCwAyxfR7Np8Mf4QQ9es1oMOAL+Xg1GS/DmskfAkXnkzpEXIk
	 BagsYceo+yFdNmFaI4DeCoX/Y9rafjXRV5d5ExvoYSEn6QE74u9l/MkiQLFCnKgUUw
	 y2n/zshemufrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13C3C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741692278.24411.13186329676839214673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f2c0ccf9502888881cd5c92f2e540935229d334125b36a03636ca25fe2e94c
Date: Mon, 03 Jun 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717416922

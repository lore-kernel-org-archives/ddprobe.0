Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CDB1758B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802994; cv=none; b=OLWMql4KKP6h6sQubBrX1rcoYPoAk+rzzh35Fl+A1c5qM387uAPeA5GoXiiVRxljZdJ6c53yAkKYet5DQyr4GH+nbD4Fsa2jmdSOby2dvdXneznEbgg8iWwYW7p8FVjM/MD6BVR7RmlOj47eTr9vVlmnu2nNf0JBAlamVYhR3ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802994; c=relaxed/simple;
	bh=ALsXVYoqNZ/h7prMtu5c7pyRFj/zTI3ST8J2f8Kkk8g=;
	h=To:Subject:From:Message-Id:Date; b=GeD8y4oMMiW3QbwhjAINKY/ouH8kYgDSBM0iDJnFsHd1yBKCZ8kiymaivNC6/EZ4TA8tN7e8wZr7IUkmEi7EzZHt07tw3xcf0bTTnDOqAvTWzML1nNcq2HidyyP5o6sDDUFfFrGlONWKI9JiNDTZ+3+9hSnEQxKBVf4mXbJ018o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqekbVCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqekbVCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759802993;
	bh=ALsXVYoqNZ/h7prMtu5c7pyRFj/zTI3ST8J2f8Kkk8g=;
	h=To:Subject:From:Date:From;
	b=pqekbVCi68GdV2wNdfT1gUVObmTtVR8/7EJ178bVf83B9BNsKwmO+g12Zc04yj8pl
	 HvZrpjddCKp2EdK8kog/ppNh6BmonZeis6/5/XJZktdnpkGWg9N8OFUUm5VcQBhxbT
	 q6/ruxqqpi2i0ZV6/+pgCK+q9pq47YXT3fyaMiQA0sKexxlng6a9nkoHFlwCUjt8oT
	 boX28enld5oawBDawqtZi0LF6HzhcBuNKNcncx7H85AY1uAtgzaOnw1+UlIZv/m80J
	 70wk9itZufJNgNbWphNrGPy3W161FMGnk7WBMieRAp4In/QUmM8NSqTYS5qajQKCaT
	 C4AOiasrOXLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354FCAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980299358.21249.8906153538956538233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec7c97bd7267e5e3f030495259d8d29921cddba63f8c9c7f3e9c15fb1956527
Date: Tue, 07 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759802993

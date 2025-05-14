Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066A18BC36
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747237194; cv=none; b=B+Ouj82aWv08TAjWp8KV6pOmLdT1jbroupYO0KSU3tSMezcISQjHrX6R3dERCwPZ7dbch5PXl8NXuvN9gH3YnfaiucUkJRjLX3IZcYkiyb2qkRQuC5PBcWFFjQ19GETMrWZPr+CZG1uvoCo9zaTQF+7L8G940ZZZPyPO7RVVk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747237194; c=relaxed/simple;
	bh=v5miMvGS6DswFUyJcoCcsXvnTZLIPVmkm1AtEn0Idbg=;
	h=To:Subject:From:Message-Id:Date; b=PZv4SNYGD2bLk1inAcRRsCvtHXDkNKs+LgU32aRDd1ZVeYKi2k0dsZrnS1gdFShuefwpdUNg8t8n0L94r/jG4qxgDFPOnyX9V7wSpTveY7+eUO983mdvbrAMiBdC4PeUIgz2VzZClZeCSUok8tAx6/YSwpQtWen7z6Rl2LFpeDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phLsvwgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phLsvwgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAE8C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747237193;
	bh=v5miMvGS6DswFUyJcoCcsXvnTZLIPVmkm1AtEn0Idbg=;
	h=To:Subject:From:Date:From;
	b=phLsvwgcBRvNKOAX1uHkFmALcOJXuVGR7ezsIHKIuPqBu/AQkz0OmPfJnG6hDE5QS
	 mNSu7ftw+2ts/4ZMrdrAFcvHoahKE/mqkH2zdo1glwRsjtzDUmr4dU8YOtSUeVqpYM
	 TBK8ODBtjVld2V6+cstsVuuh9+Gz4tpvQaDVH3NIxYXGWzwrELBnM3lAiSvEZJ53uy
	 49kcGdJ8v+qAAcfNntJNZfvJ2Lo/uigERpOUt1xqiBtlCY03PSq3XScxd9tphyGv08
	 Jl46qiQ5dxy3xbrb3qIKrb0aIed0PrQtkE9ZTZ8ItRvHmA52SFWrhlhh/3i24xSRqS
	 pbXkvHZL9KiUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F7C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723719357.15325.13431505913595994121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877b6bd095fa49c123686cb13ee5899bcf685ec57dc2802e78d2b677764cc4db
Date: Wed, 14 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747237193

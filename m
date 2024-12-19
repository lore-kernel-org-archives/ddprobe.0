Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916722259E
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734606954; cv=none; b=YSVnc8eFx39+CGx5lkd+7aUEq7f6Y4EspOmnQhtfx7wXSXWDVIJHuKQhrOwFigB2LQyA8trogZaRD9+1LwOI4C80S8OLSakO9FeT3ME3VdYruhSAfp4LFoQvb6ENelLl7wwwsmU2KCt0m1OU1LqKFbSlSxDeCGgpIiDJi/t4QLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734606954; c=relaxed/simple;
	bh=LQhXaqfs1GSvteBo+bye3s+I537idLngmIS0Sa1nNlw=;
	h=To:Subject:From:Message-Id:Date; b=CRlper2vxOUq3RWJJp8t+RuCwooyZjruySQ/E/UZ4K5DkI9RjbFhn98Iqk+zj6geTkbIFCd9JbRjcPq7KZANqBVzVZ45D8sYxOJhWk4AOkg6p29nLLRly+ExLNuGzFiaPa0des8m/eZ0RxWNXdPhWedCJt7zyAku0Q6oJD5LoEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBo57Jnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBo57Jnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734606953;
	bh=LQhXaqfs1GSvteBo+bye3s+I537idLngmIS0Sa1nNlw=;
	h=To:Subject:From:Date:From;
	b=bBo57Jnv4y7OkYdLgvHzuIub+gIMHi49mUBxB4FpRNuQxXbA14S0kdWrX/VVXmFes
	 BP6/L6owAW/6pUXA9aHmrQt1YQl609tyo7gZ3Nk0pLt7xHJHcLSfWOg0p6Rm7Yaahi
	 xmPIiKG+VPvyzun3v4A2VT/bp5x1/h5X4rfhBTt+L989fAPbpNc+F+2yVtdkNdZ/as
	 zyl3ECMFDn2VAjsQncFQsSffANqn3UGWDyffUEzbivXOoifmPta3IY7ugT5fKEi4hk
	 sd6FFac1PpW6qhVb1PgmbzrkYtpeObuAurgPLti4fwW0CItPBNZa5v0QbNTsxU8bpe
	 w9PbqSzXRL3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93727E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460695359.13583.3446380065286991514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff1f46d1126a19b06d5affb11127c0e547f187b9f02073f6a35a31fb5593b6e
Date: Thu, 19 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734606953

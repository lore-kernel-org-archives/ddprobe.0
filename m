Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBDB13C682
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743076194; cv=none; b=FTJucMa9lYth9jEbsGqxtk0TB27gcUiFy9+ix6sQgmD8CHMYqHg3cb28jDTDPjfNrnXQOOtm3U4yL833RURqmFVG+Df1aY5vSu7EDQcgrxkcWS+7/91znqzPDgQLlxis14p39aD/2zHHXkcdwJ69P3yUqAOD54sMQmh49eOXOsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743076194; c=relaxed/simple;
	bh=mfTHvB7HX6FPGt6VxRv8t8zZkX/sbvIuftJxefsdjmg=;
	h=To:Subject:From:Message-Id:Date; b=CUo7PO/40nB3QoGDGgazdVujsTa69v0TcKJ3DhLCqmAu3CCxUQf+Ms+fnP8DBAH0PuKgNNoP7A4x5gvRfp4xMiYzjw5SbvHZkgQODo/eOsr9jbdNlnnbLaySW/cLyOZGh9/7sA7lMqDwgxsjhZ6bdzBdbd+7A7Pfah3Igxn0xvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu7YhKeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu7YhKeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743076193;
	bh=mfTHvB7HX6FPGt6VxRv8t8zZkX/sbvIuftJxefsdjmg=;
	h=To:Subject:From:Date:From;
	b=fu7YhKeUFUHFY5zRNnTpufPjCkRId3Jc3y3jgENblhQtotQ3HQV9XFI7eMUrfGd2Z
	 gF9Hie8m1n53nNko74MCgKdQiDiKkawODpQiEFEYWzXTqYTgglys88qU3BA4aBAKn7
	 nzk0sVF16E1P1Ag/LUoU6wXBU0DK/EoiHuh3mHM+1GDCkvGPrdS/rnC3IbWeRuJq3a
	 VynnoEE8w2qjtR+/tznUd7jd2YIstZBaP550EtiWCzisnxCUl4LNxwO/1YMdcIHLHn
	 vpCGziH7G2veYyKvIGZzkMVOc9zNAJg+2WJ/o6AgR/SYD1g07DKxIlLOBx0yDsIAl1
	 QB6SautEOZvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978D7C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307619361.4208.8879766553579942331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f4f01a7d073a0a79dfc49934ee468648c4bff4d6ff4ba1abf18edec8ae1675
Date: Thu, 27 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743076193

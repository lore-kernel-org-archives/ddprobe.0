Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D128A8F6E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749937793; cv=none; b=nYtzazMwyGqYekqBPXDjvAJGr5y1sOkgVHRSwSr94l6o6jMc9fFfOpeJseUF/lyrHZrea2WewjgrzD3ks6ecUocjEz+hzYdnefiAPY+HDw+D9L0C6x/WbHbnQKV7wRivIDgvrZQCReFjSW9RJCrpRQ6pB7gFWmY+EyYRuKoCPqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749937793; c=relaxed/simple;
	bh=Z3hsFvd+Eh/88853vNhDDaS4RK9ChwNV9Qb2HKFndkk=;
	h=To:Subject:From:Message-Id:Date; b=EBOxM72Fjjre0wYJZca2WkIX6EbK3UFdik1JIlnBrftIiehIUsO45H3ZuED5vgyil/fkIghR4kGLnXuiso1AW673XuQJzFtf56c1Ytg+yHoyV7DKlkpKeRFcl0jZQykUd1Vj0fa4Xewk3ENDAzsh7Ny6gYwrpjMgvZcQNlXskDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm4p0E7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm4p0E7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D0BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749937793;
	bh=Z3hsFvd+Eh/88853vNhDDaS4RK9ChwNV9Qb2HKFndkk=;
	h=To:Subject:From:Date:From;
	b=Jm4p0E7AsMekMhifCDkBJWjlwlaOGWlQdhKGgK0zlymJAp/dsBloCG0mVftfTnaSL
	 JXx9ykba99J5759HrPWLK2UEdiRgNe7mQkGnER7GTnb/KMVktsAEa6iUDIFWnNHaza
	 L0cgXFtBzWseDA7ti/Pe51wgVpR3z5CTZ+/nDzyGlLjTn2mV/utOrsy8sVgzfbF5UT
	 GxvXeOi7WssIdyEBkh6Iynp8YoZpDJufiS4yTFUXd/dbVcBvnBq0WfELlZkWokmAgX
	 oAe2Du5/zothzvatLu3Bpe1cQV0Ojm0UESLcwQWYuiL8N+TknNiR4+bsX+KNLO4JXV
	 LG19CJGfWOHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE6C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993779357.14163.2860116733485917670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3757856a5685b53e633ff640b4862ad3276f8a03345567788df3013cf5925128
Date: Sat, 14 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749937793

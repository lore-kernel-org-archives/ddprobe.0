Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792425034;
	b=L1YK4kC7/qeysI4NpfiNTUbS16gvAJLqlUDSjDDewv1/At8QetI9wIga7N8m0Iib4LtO
	 YKP3M6X5B1ufAVNG23dRUfDbp8iz4mvMUAqpDEnXuAlDCjNO/kQoIVFQhjMlSeRWjZhyB
	 Y6ukG9XNBT79nJ5IdQxpx34VaRhhdobNL3cy2YYIqCpNc/4XU4fSQf1FDVHxjoXglDi3H
	 wEIvd/h3wZP5WCFfpGkMrJ1Zk/Td6SKhN/2TaQb5xiMaVWrbuYDOBOS4LkVx7aWxrKIiN
	 KR5tEKWk5Gpqm2dXobtffFnADcxRqTy7FO5XhPqCGSbCzBPU+AvAZkQFDtWrpNmd/VQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792425034;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=o3KMSdyEALt8SpeVR7Sm5T80fiDqoBWHRE64nhcd/3k=;
	b=TvpWoUUZ2IM8UESeXj3GxgdXRLrLWF7iU8XXyi//7K6hyeRU/GjqhrZyGburpBQpcEpN
	 bFpNEMrj+BYSZswfZF3HgT42k8N8UlYhFpPdoliPdGsSEEYJa6L+lDgZpwN7lOC3kReHy
	 CwL+thMlxtS74voH/3tALulwJGsaoln37ZXsyY/5y3YD1ZKKUnKdvANgDBCGKvGf/Ol+l
	 VEXX8xe1m2GGW7+E26KayfTXdG9q6MRYndQSOkt+IOJHjnskJbKdXv0BswIP7OgljN2ad
	 HXree6K67jQQqA3XWvMv63r2Zf0MwpYEiGxWOaQZLK7jDI3MEtK2HgS2iP+QZ754PQA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b="uR/a+hhO";
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D2960A3832
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=uR/a+hhO
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961F225771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792425034; cv=none; b=BNU0lQgdaL7vZaJdtW28WOepFLcOxW4g8dwv8mrKJjlLlI+hYmYgKVMVKvInuRNgxEIxUJYaBBlYd9LdY7DAnxqlIg+OIkZcA3LkxJYG68smZ+UQPBSYzmrVYNaq/Jdn3CEHWnwhsAt6uNm2MVtR+KbwExTcVrYiJ64rU8wtnjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792425034; c=relaxed/simple;
	bh=o3KMSdyEALt8SpeVR7Sm5T80fiDqoBWHRE64nhcd/3k=;
	h=To:Subject:From:Message-Id:Date; b=plsBIyZo7d0rPgFBqCuTcvm7LYOM46grMwVsK7B3Ll96fiKkKCzOg4zvLsoUGe23aKFrbFAgt1qroxpE93jzlvVHEhz08ygXnWkC0+slW+wyCxDj5BFMgvAZ7zUOztZ25lsVXg2BKYk+AEdN+wEzp2HWHy9/8bMmzTENKHFm/OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR/a+hhO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD20C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792425033;
	bh=o3KMSdyEALt8SpeVR7Sm5T80fiDqoBWHRE64nhcd/3k=;
	h=To:Subject:From:Date:From;
	b=uR/a+hhOntUbTjZLANSQ7fVnKGgwZGekSjHxWFhFoFKrfdhdqumgQOjHovT0k770D
	 Kjgx6BvuhKTorHk2lF1+BmfGTtGXmIoAELN/DIhRfUy2k7OYZtWmtCJV3hLSBOFUT3
	 3Qjd9LZU1EPsUVBn8Y88c00ng0tYvnZqyAPkujLIIbc0ZJ7b0mPNICQMhy7ZZKkyXk
	 rgpAH5u+tF5BZPHOfMkOziMuJUZT9y3GCCAW3g9YsPrF5SSwkmjYBvOEZfJYdOA6y7
	 u9CkLs1Uf2Wyy9DxoNCnVKT2gTsIO83PPeA7VQi/HCL5IDz4YigAHRZtopRD/1C6y2
	 Dr6pDfrJ1kN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3655CCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242503373.4369.4491255965568147952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8b83764591d7e4cf6041a9b85c6ad5a42fe3dbdc72b2d48bbfc343be29b49a
Date: Mon, 19 Oct 2026 15:50:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792425033

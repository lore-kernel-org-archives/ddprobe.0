Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290AF1D6BB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781145394; cv=none; b=mtH7diS89fNOZueJXa6TJPRwP418OhMsMsOZyhWGiKJMPnZIMDFIDBi8ghh5DdSWVvJXjWXOG/1IxyvguYJaXGQiABjvVHsgMuSXwDX5+wLty2NIbs1rq2K0B2aNUZwR5ZTJrkVij3vX9imCPPDllmORPQ7QbawR96bGY6neXAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781145394; c=relaxed/simple;
	bh=TY9lovimBC5zahUW1qUQW2/tO3fXevJdxFxhOR25AAI=;
	h=To:Subject:From:Message-Id:Date; b=B8+gp0tTRSbpCDyfE73M9+JtpJ5S+LImdMtYbKjRGuzuLPLln2lA4LQg9MPikQUQ60VXVRnAWCIGPQbsu+DjuDqDd2c7oictNRUojaf8Kr99p0fpKBwnRFE1PzMGT+MsWrR/RIlb9jQACmZXN72Km97S+OQOweu/VycFb54ALRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjHiRfzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjHiRfzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F5C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781145393;
	bh=TY9lovimBC5zahUW1qUQW2/tO3fXevJdxFxhOR25AAI=;
	h=To:Subject:From:Date:From;
	b=VjHiRfzS3OUYjT5y88LlOLF2CuYLdogzj3c0Xc2JUtAucTdV0oMJS/+g68UXbwy5b
	 Ds7NggKkKNXfZu2oZjblXch4hIUeSwCx8cmOEulcxtUer8exaB9RdBUxyYGNnC8fY5
	 8EXVHe4tf753g59JISSsFkrQBtDj5+MzKzqMDEyHnxF9szgp5vq7L/V0J4U9xfJcok
	 ez7CuLVuY8QZ0Id08JytzrJucpVYSQc7SVIdt66TD8Pl8DTfwoMv9JSGpzj/fuQrpX
	 wen4z+7+R8IJlL67TiVdttluL3ODZLPqYMtOr5X4gKjr+g/fL7q5y+ff/vTocyPvyA
	 5wJNzl8CQ9q6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA714CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114539368.12542.7767821415730662168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2881f34bafeda36724a3643dd966946cbcd3cbe495212eaaf0abfb4f060e22b0
Date: Thu, 11 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781145393

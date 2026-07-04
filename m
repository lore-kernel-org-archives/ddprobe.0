Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AC93451A7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783164514; cv=none; b=JwDxjl3Go9ZxASbivi6GnysFafmAQ/B3hjPCtdOF0uVAEa9oUnVMBa7pROdKufFTP3wFvpHnWcyP1N/Nc1fZOpaUCS8xmlEBY6GN/wRv7oqqyHWX9j4JRmbPO8j11Rv//4R8RiREDD2xP7L3LXvM8q/0JTj5xHTXACpZQyENBtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783164514; c=relaxed/simple;
	bh=sAiLW+Hukd9eBp9B/pYa4Rs63g/loSPemSLEKmCAZ/g=;
	h=To:Subject:From:Message-Id:Date; b=NLumPPkLjsOAHD5ZtfMAyxkOq4lumDFHH9jUn+TAcGiBPBo+YA2u6uT6VuFDeWwPXhlohf4ZLsGZ81hNeAc7NN3MPW0E4/LOiDMhil1hnFd0jBaDIQMRA28OvOYNGTwPg9ZWB4fduts0rY1eyQv9wIoYvYISFlbjcbEz4LOUOEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+YGL28L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+YGL28L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C5CC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783164513;
	bh=sAiLW+Hukd9eBp9B/pYa4Rs63g/loSPemSLEKmCAZ/g=;
	h=To:Subject:From:Date:From;
	b=d+YGL28LRrWTngr/gWVFkS6wK+SkjU188+Q9jcaFUaVuP1bhXJ1OUjBOEIKAuqoln
	 bnNqSyMW8QqRdCCcATbVFx0zjBvONs+UnGUNLcHL6QXkkCm/VzcOJbum+4PUakAaai
	 QsdrVLz8l0rdLzwIkV5s1cjCBIb3n3u43Rs5RqQ3uohi2neOcYV4tRmiPLS/m2l/Ag
	 E7+ESTYcqmkfR+wMxmcuu1fwf3CA9EM6KV60wP/Nt8wtTNFA2EwI33Lb/LbYHfl8Mp
	 C57vTG/Z7FkDirXgCCQdPJcQlsJMFc8r6BWKxyiP7IAShtpMFhoLz8jG3cUgWpwWFa
	 NqYTTLwib1OWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C6EC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316451368.15152.10955997919204481338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b28fa18aa134ce0696d0d12d58493c6c1e0598d9bb307af1360a0afe4600ec
Date: Sat, 04 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783164513

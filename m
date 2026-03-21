Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AFD2D9ECB
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774111494; cv=none; b=h3eEpWyRJ4nOsaajaOK3PoLcr3SCoHxV4Go8ctZRJy1aVEf8UXSXd3tTQe4hLfJDwYBJm25E1AVgXlvaZ63D9l6IplSiQfa23epZaV/AHNiqd4axLm85EBgWvu+lgRQLh5HSwXr+1nhPlNC+YLuS3ZTUn1MowQCaNWBmywuVez4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774111494; c=relaxed/simple;
	bh=Wf2ofbCjsoVIpDWg/BDpG9y9vQHamspP4c3uKy8cJVQ=;
	h=To:Subject:From:Message-Id:Date; b=umX84ihxUstXP0SGkWXUZHEUuUtXb+MjRK7groynZETR5jVg3qj+F7SljPN6cs7hROYaUoNFz9f/tbwl9dHHKMeMtX5FULDeJooTdlXAV0M901wGhaQIhJYQWkAdd0XdocBsBNpq7a2cIw37vaRbdfL3pa5HEjWnooDkx3znhwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrXR9/o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrXR9/o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC1C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774111493;
	bh=Wf2ofbCjsoVIpDWg/BDpG9y9vQHamspP4c3uKy8cJVQ=;
	h=To:Subject:From:Date:From;
	b=jrXR9/o/1oBuPa+vJmT/fPmKUp8MVlax+MM89qKJ2dsVWPj0ZTUWZbVbDiPW64DO+
	 4fTQ85gkEK9yT+igU8APQ+4QiElayn2zwMdE1Z1DYv30zDhcrEvhdphpnygSjlWRlU
	 uv8w2Jcu8kGvXJJS+ObbGxDNHlidGHnwQvrEJBjwjCW99Li/ay7auNpVRZ8CAY8cJx
	 gw+raG6CpG2XycODA+WdiTmUJY5RvezmjrsuLQFQyU94X4cFL8zVPPy+esgzXpwvWq
	 tA4h4gFRj3O+boiX03tTqqwqoQtEUm0S2RYIvJYxDLLjyWmbaRk3FYeoIQlF2PPlun
	 MuXvKDUtTzstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952151094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411149359.18988.10483894556172686036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb3bf30208b59477207d5edfd125608ef12f735d046168b594bed20e9d375b1
Date: Sat, 21 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774111493

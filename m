Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198973A1E60
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766312034; cv=none; b=ZObfh+/N5KJO7P9ftInSE272giZonYeg7gV6NZN+XigOF1ObmECiA9rMRl/ghdM6/otW69yUdiowM+WKTPtXezY/kw2PRPscT695Yzm3GpRJB9a818aq4foHHwkyAA/dla1XQa0bH4Q3Akt4y++H0PfvY4sBMeD2A+W+y7wjTzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766312034; c=relaxed/simple;
	bh=4c3WG3Dr2Fl4iyMnbExULvaWv9odFfJBcdcPzRRfP4s=;
	h=To:Subject:From:Message-Id:Date; b=pZ8W2PhrO8mBHIsMo9eN+4MiBdoX8+QqUzLLQ+RO+YZlaCN1t122ocZ1ljPIbvk+Nom6FA56h8seEtGSQfH7dXDhcbslW+1ZYM/kkTuhN0Gi+66W7iqXsE025hvKOqz1IGfcZ2ts8SakeTrJVT+rvclcaqbS1fv6wVGiuBFHOhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl9L7fv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl9L7fv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71F2C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766312033;
	bh=4c3WG3Dr2Fl4iyMnbExULvaWv9odFfJBcdcPzRRfP4s=;
	h=To:Subject:From:Date:From;
	b=gl9L7fv9YDtm5FK6EalidMoi8lJm/zbRW5/Nd6iMyEw1JB7/lITltYcX/wfhitl72
	 V3oUFyGGTfbaV4f9VbohE0G9XbcAOBQV+RJmTxRCLQyP/Ew+w8aHSmx1XI7E7B1NMF
	 NQjB3K4MEP49iTRlsZb42yztxNnqlFyyxAr9QsVJigLEtCvT2nWh4/SbHeXRh614hY
	 dZMkLGCucozXoJ2zsWmufdJfSGp23gj0ODLzrzceoXPpfKnhWAYhwNakPh+iJ/Bq9V
	 fIUl27lpsRlOhyv2SWQ5wAy7IWEXRFxBCjASc1agLzeaLBqvkm6kLSRsU6qcKV+TTd
	 +dzl4aw4gUvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935AEE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631203358.4044.11199847585130035593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31af7088a989d1dce3c9670477e0d2713c5b9c2c3583a1f2b4ddfd7c51532094
Date: Sun, 21 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766312033

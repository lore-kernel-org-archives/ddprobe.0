Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9230F95C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762342194; cv=none; b=RVQaBR2Zh4imfsUCMwam2/D3FK+RGMeuT1xswO6mN7R8QM6Rh406SRgYjsmMP4kBcylIJ7Eq+eulrWKGRGHd2Oe18erjHfqBbh2jx2Mkchhpd8V8Vjvg6sAKyuW0iLnteBkBu18coq8sNTDoLzG2t39tpqvp4iN+yY9nLBVnB9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762342194; c=relaxed/simple;
	bh=LsZG6dG2Mf9XFmA4YNsoX/nLEgsS1ekEsRRvE7PCYUY=;
	h=To:Subject:From:Message-Id:Date; b=rDqODA8kqaeUs94Z5KLIpUG03bgYTpaUl3TGB/BsX3hvxnjEevdz5ArBVR9YtvsBPC35HH4l4QOVbieBYDamV0TS58uZdMRSz4YsBhlMJFA7V/wB0Bmj20Y93AtQnGatW7GTRExlHrLfeJCttNk96kFe7YB1sVa+a4e6avoogFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sc7oUUyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sc7oUUyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2CAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762342193;
	bh=LsZG6dG2Mf9XFmA4YNsoX/nLEgsS1ekEsRRvE7PCYUY=;
	h=To:Subject:From:Date:From;
	b=sc7oUUyJbCX1R3KYJfd/JjgYzQx7ziKnN+YRFKNCJj/RUTeg7Tu6RmRcSpkwCX+F8
	 uh7pdndsNaT87Ybku1LrZSj4+88EwEV4NEw9Lnpb+BQ8/S0kd8hs4PmreRcbqil/ZI
	 2FQ5h1jfNgg4C4sI070Ml6Bmf+SiDW3JcBytRfxfTxxQ293MZnCdOxfFQnl/0C0qzU
	 ejyFCLuX2X9jaAh3ofXtDhvHzHWm6VFz2glYYnQFc1u19Cz+xgz5QJho8ysKKXwPVW
	 Qs+4yVuFDwHu/Augg4LwVkX+lHawZOGmFAHRCNn1ZItfndEFtRZwshUjPQH67UJ0wC
	 5WPve8pwpVuuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043ACCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234219358.10353.6894901298805922275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c843fd072696fca4f1cc125c9837ada0944ad4fc4cedf6099233e16985116fbc
Date: Wed, 05 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762342193

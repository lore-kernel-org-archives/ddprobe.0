Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF21643B
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760576394; cv=none; b=cLCISYRC9y+2H4JbhIClfDC+8VVd/YAlL7iRIMHYn8qoXS6A8QSclxSKKffIfvn0iuMZscxb9b8aJmDu1FTzNUvV0s1K9rpZfVi2jLzBMDCiX3f9IaW3DXpUD2XFM+fIKE6G4ZAGbgs4lmhouOtFwHCtDRUrH1y2yBnTnIlf0Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760576394; c=relaxed/simple;
	bh=5rBBFQ97zm+j4ss+qTYiVsVafqOoheWkQ8nZrhXIKjI=;
	h=To:Subject:From:Message-Id:Date; b=V7Liiu2+vleGCT6uO3sSzvgi1CmXaE7IkyUeBo50suENyXzWNRKlKgKhdmobKwhun1cYgxYqe1AdIHLbZtMfaRKXxrydXEhxgH2l/OyZ8EwJJvS2rxy03LbE3gwBR6GNiOXeBr7cmnAhBcx3uDX39TrxMT7ccmRmCK3RtBNtr4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUON2qi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUON2qi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2699C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760576393;
	bh=5rBBFQ97zm+j4ss+qTYiVsVafqOoheWkQ8nZrhXIKjI=;
	h=To:Subject:From:Date:From;
	b=AUON2qi8OHGHWIThOELDXZt6nOhNPxebwGL7frs1Azl2TH4KzAPG1ywcFc+eESA1G
	 wziir6ZtO5Qy7MrHedEVSkJqe/RGNCzmtWjmGd6zU+9DKEM3VwOLgCGDaf9fWjSA9k
	 LTMoREtYkZ6v8YHPTjme7+vMX6EVkNThTljssM950eHT/D+SeQ0yGCUhw7K4lUVG4x
	 ulnEorHQsH3bEDeHFmoZavZKPYx1/coVgMcnPkD/fmF6BPAvxFMB4tzg/RU81xwi6L
	 dV1A5871s7xg0bMvckSB5EqXHnUrf/xya6z1wiShfsO/mis2JZazCunlTLoPObIzbh
	 9XG8i7xplHfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E7CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057639357.1166.9924267912072570407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec4d069a2676c3c1b9dfa155992620384e7c110a020f9a3fd11d87323e2ff08
Date: Thu, 16 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760576393

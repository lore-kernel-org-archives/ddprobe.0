Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D941AC44D
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759808394; cv=none; b=NNboU6gj1hPWyTW5yXZtudTm/8v7dXsXTvIFZpokJMe1LncSKF63ZtnvDnvMjUaWardxFuVhphKrA9OTaz5BYgJjCeyDu20H8vaiPJOpH4jcUUzym11ghF7zxYshNvkibNEqI11IcSTAH8VDUYQlDUiPsu6kEXTIp6XUuFKE9zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759808394; c=relaxed/simple;
	bh=A9azhmLH3TvxbNC0eZJ2hKdJRvIdyGdDVIsD+AjeLBM=;
	h=To:Subject:From:Message-Id:Date; b=mq5TcJyzTdwffyvqJ/bjOtq14Z375rUWY8y0CpwQ4gALf9JXsbYUSJeIlp2LZFRWK1HNPSaHZJkUZrc4pBGzZO1XMbAC8t4e/pJ82YLDXMF3s2akRD9mWGU/d3gMCpwNIk2HeXJCPkisx3ZdGPcLBf3LKIsI8pWOB45rEfpYw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS6rzzyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS6rzzyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27DCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759808393;
	bh=A9azhmLH3TvxbNC0eZJ2hKdJRvIdyGdDVIsD+AjeLBM=;
	h=To:Subject:From:Date:From;
	b=lS6rzzyYx8Gr2m6FBS+oFKhYY0IezzHNjIhjwBqbO43riTFbiz7pOBHuyQsOxtzG1
	 POUMcszAQnd325bJ6dtWnjBXAwvyHVt/iKrQABYo9cprpcYxCAJSbGE2qYlFJyIKBw
	 RSwL3Yb4jvH0/KD3S/hvwcVWBIUmM8iM7CxpFYmUDSQwNwjyCMk3ALKRhcAmGBMTAc
	 BEsV5Tc54Em1HaZ8ZWBKA3qGu3er9cpi27OWV8QUq0nXwRoR8sptnSfROWxUVnRMP0
	 v6wPLnI3yQgymykizUH1nPZeYxbVU+Ak8xqp/Zy+PBY6nKv/wHWXfL7jMSUtX/2X9+
	 Net2KoZMvjGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF0CAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980839358.1723.8562175879995484025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929f5a6d5fdbc76252883a69a239cf19a0c9a2fb792cf5902c8c9909ecce58cd
Date: Tue, 07 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759808393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A242FE067
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766223234; cv=none; b=p0FzGKHF1pKUDAFn/BLWLe/kiYdq7S0/mh5L5IYPijffo2eEX5JHlMWg4Ma2fy6NtqU/SZ7l9X385vIqj2g8xWxYRa444DIE5HXhcerTDOZf0535gRvGEgd1xVFDO7QfMoRMGgtmI4L8v8NY6SqlyCM5llT3Xm8tg3f6uz40vbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766223234; c=relaxed/simple;
	bh=HIigAPr9EJbJzo8s3i6lCVIdsLPRQ8CNrfJCAzSJ8bI=;
	h=To:Subject:From:Message-Id:Date; b=HnD7itC7e4mnfm2exLN2Ho2H9NTFHwOgHauy8jdgG4aDG7q9Ki342cY7vebs8rXnYdvPoCQ2Ux5V3sXS64Tu04VnSwYjBk8CfGZvu93q2VZqpjO+fVoBiWOKNcWNP2hFBNjtdJF2BVVjRy6OnAed44LPpAQaMdrvlnuE0hp04l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pec0+Gx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pec0+Gx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766223233;
	bh=HIigAPr9EJbJzo8s3i6lCVIdsLPRQ8CNrfJCAzSJ8bI=;
	h=To:Subject:From:Date:From;
	b=Pec0+Gx/SMrovwt5rYnhlBi1KyLuZ/NgxTrCjsGQuxfN6QWO3Nqd3hCI8sTZ8f4us
	 O5St5PP1RbaLYnFvlh54kTGrrAEO+XnKNfpdy3rAZ6IfhBM6gl4PxDeejTuDVxHtbi
	 sPn9GMNJnHkLH0Y4MXCekGXT1uZzvQzghLgvbQlqD1Y2GAKg/GIKEXEoVQqf4/+SEh
	 OjYsa5tC06cpz3SqxM0DIor4j9yVHfDyArxu2JBlUfVqTkqjgN4Ai47/LfuxnZtO4I
	 MqKN4tpKF7nanvFT5+5gte9vZXLxKSQXoZjgM+SNQieQuiyg/skMpF1kZdYRv1DWeB
	 6LiCARGrcIDHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99486E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622323359.10725.13293924416203749530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430dff9d5ac7b7ab6ef32bff15be05d5757d1881f18225b733c9665b8214eafd
Date: Sat, 20 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766223233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B0A13E031
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717484123; cv=none; b=Lq0DO7lvwzmzP8C9OILkYF/frn8m1dTEhlG1hp+fajPnIUyb/G8rQCL5euhgxcwef/RlSsfmNKshKuqdeI1ZgSEb2Z+8l8Qs+06QZXtVV0W7nsOrjN3WYenGYOz3NoE/H7+Su3lvgmdwQEgJv1kKq8cgaiKT419s/WI23b969lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717484123; c=relaxed/simple;
	bh=SPk6sIrfXsRHDHFICYJgRSRA/OnROyQ5WPcAI+Ki904=;
	h=To:Subject:From:Message-Id:Date; b=Cg8r9ZZh4aTy0gppBPxe350c0PTpI23QvS6Ye6SOdh4himrY6/mqzCkFmqM3s1//vn6b6b9Aa4PK7Z2SNl8m6VuUXQdXXLKdXljo/VECNRPYdzBFtJnEYTeLVhj5wxgNZ91Xl5kdM+GqADL1zgTvd6X75a28fiZOtInfHyzeefY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8RDvtjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8RDvtjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BE8C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717484122;
	bh=SPk6sIrfXsRHDHFICYJgRSRA/OnROyQ5WPcAI+Ki904=;
	h=To:Subject:From:Date:From;
	b=Q8RDvtjpy49CYB7YlIgfTnIofEM8VUYCreSogTik3WpSrlABlYbumLWlgfDqIMF/T
	 A8eUeNnSkyDjXPeMc6dN88JLDTBzHItugHkJpKpXqevLAOTbEjYHS01VRYdCNYLuBY
	 fOgx+hbtffLWzJ52GGIeYNNp3u7nmxKXZlePEDXMnT2AQiKNEP+mceUvacbIyh5KLe
	 /rZDjUowFabchOG6uON++LiZAttghgLA5H/hiDf4rwM9rhVFiG9u2x/mxCtug7+HXV
	 p8+PEGbJ073H02xMfrpH8/PwaJ5bDm2efTaS0tydMSphlyI23/wb0vWyZBq5qIQU9c
	 XWbsGtMHwo4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE6E1C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748412283.8733.6700737386500551284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3121be4aeea19aeecefb4070fa4eb11387ae7b66d18ac7eef7120cf8104c2502
Date: Tue, 04 Jun 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717484122

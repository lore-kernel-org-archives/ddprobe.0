Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6151CAA8E
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324994; cv=none; b=U5z0OsZLWrOC+eJPZKKZLHrBFbpWAYbdMaReqlb3n4v68sp0ItlOW/3QazYIiWvPkebTo1joTsSxbEeCdgwe1P1wZMiVsgeTKHdk0+qlvsRubvMhd2BYYaA19tQN96C0lD4DQBul7ggiC1p7DCKrV4k3G5b4MY+b78ag/wLoTWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324994; c=relaxed/simple;
	bh=7ILV6QZjrm8SzLD1fpLZb77cx5OZ124jaCmHZZjpjuU=;
	h=To:Subject:From:Message-Id:Date; b=R8JC1ypNeCsUec0/CNU8scC1qMxhKwByjlsoeUxtdtBvtDi85d8gncJP1S658VXRfOU9o603yhe5EXA20M6a0MDfHuR116169i9+u15DQ6lTwdOLsFBsqIyZ+IcT4bDhGpyanfBqhlvXQZ5RCObBeGyXToyrlxzlstS5OhVsMy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhAB4tBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhAB4tBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1DBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742324993;
	bh=7ILV6QZjrm8SzLD1fpLZb77cx5OZ124jaCmHZZjpjuU=;
	h=To:Subject:From:Date:From;
	b=LhAB4tBqnMMAOeUjXyWLR85FXVziYHOlSGQIZJ7vLOgPEGdCWIp40q1dC1Sos/STR
	 gmK7pdonN1rIgtNR7odH2ZivtaZj8zI7W5TCTRs60jyce+P7nHIFW/hDfYeXuICxCC
	 UQSRM/SjWmyPJwdBS0ekDtsPqRCQwrsX+64oKhrqwnKrz0/yivsnygBvaN/E1cju8B
	 yEl17ReNTXsuJDYVKovzlRthBom/YZ9dDkXDxRPkvQ6KLtWJNd0DYd5SJKH5Ab7Phy
	 QHtgCO21IcE8AanrVHosAfYKY4VkEjMUFQMiUXMR8z3CvRNmjIY1ut/3wZzDdjhm8l
	 pe/WelwoP5Ffw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F8C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232499360.4641.8872324683161887388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbe8be9c296952a4a8d77d08970da7a571a2bfd6d1b738adfa4f9982adecd31
Date: Tue, 18 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742324993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A46282F33
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775311534; cv=none; b=bGu0pJpz1YcRen7m2rgfY9ICWXAnyz4iyU4HMlNLqWwUJFJt6rIuMi7X9NRFD6h2ta+aciDyvjIzDxcXmq+mgNqImTDu+TAYlqgQCMzXaml5QW7Op0E/JZbYOsWwPmGtcO3dIE+4mfZKJ1U7UJXmQUbJLnGBDwxAmy8ndGEngg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775311534; c=relaxed/simple;
	bh=+uju14TN6JnhUra+zdzoxQhRK7pVerTyoWYRmvsCbR0=;
	h=To:Subject:From:Message-Id:Date; b=bf7hHAemBFh3CL+1SufyAgDlLXA1MhcFl9HyDeSjWSxiSmqjfFrviXJ8rdmRkP8cJ61j0DjDj6xab0cAqeEiP31mPWoGcFuW3wSuhwegZG4XK2THptiIdplRnFsmkMxUjyV71zFBXB2yzSS17iqjRa4wSUSHRxQhkos9D09NaZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY/17+Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY/17+Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4A5C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775311533;
	bh=+uju14TN6JnhUra+zdzoxQhRK7pVerTyoWYRmvsCbR0=;
	h=To:Subject:From:Date:From;
	b=HY/17+NxWgnYpR2xH122Ar/m7xb5z5AIuF+qccJJaVNdAJw+DDyRRhDcKiK1927mH
	 4KrQO0QZZ1LrhPZn7HVBwa8y6K53b+frLXFpgDNp7tDLyqXImnchBFQPz/w6kKisrc
	 NW4Jqf0YqPrB3P4Ahp53RysE7r9Ol/xUQM0xDcdX3yx25OcEcWIQKx4ThsVGFW5gzz
	 hYaIz4ulEhO5QofrCC7/ztZ1tSjzs3vNCdiaaO+szLhKlb5R/D1vtm1U1a8GJMUOhQ
	 BQxD7xzxLha1hBcV8CpYzaKcRcAIqXBmlcc6MYGph6Nz9YS8CatyAhd5J/F0hhQOoq
	 48BQH19r+otag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44CD7308D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531153368.25412.14652924607475506004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbe620207cb03bf629fe5ec9c7b0b9a175082363496d46efd335b710be5d631
Date: Sat, 04 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775311533

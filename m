Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F5C81ABF
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716372803; cv=none; b=XSvY9Rfgayj7MgY7064yGvHFC07jser63XFPQJ0wGQJs7GQjIqBYlPJlvWopy11tgCePKuQ92OaQNR0W/FkQhx9nzeUCdH7vjUec2TFg/STP4Iu3OEbtCJ6pN/rk7DWun3yZyD8++L/svSaTdJ5A807i667jfr20WkE6+sPEAB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716372803; c=relaxed/simple;
	bh=/WvsZy3PmTnxlYlTNkgolGXMh7o9nqNaTJnHqqcK0Uk=;
	h=To:Subject:From:Message-Id:Date; b=RyyRHUrDZfg59UQUv2183fgVjCzTNl36aFCFz6yTFToOKxVbYeSIX7FTkZuEyZ9lvMypYjUGQ1ugJNbbC59iiU2BDufQ+PQ3HBDwoTHI6WKOJE1uwHDRjFtYiybrJWh9VHi/C9RY46ylR+M3IU2mOKQwYTtXBfSTda35mxjodyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrvOoTY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrvOoTY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1EADC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716372803;
	bh=/WvsZy3PmTnxlYlTNkgolGXMh7o9nqNaTJnHqqcK0Uk=;
	h=To:Subject:From:Date:From;
	b=BrvOoTY5w3N7u/h+3/NthOIvtjuNN9gVhkKGGmbV5K2Vg3ncM/TOFQ+QEEo/KmQwy
	 dkGHfC3Pt/cglAAgmIE6p/JAXXGFjn7z6J0fG6aFBejVh2Epx9k9YdZKiaCUeWBiRl
	 DSQndZRhDyaqdMxhUcKYZ7DKA3BglmBfNN9wxI3AL8IfsjsTDSjXpyszgDZYclYcfU
	 thZkfWk2QVdFz5ffuq5rdS1iRIKj3mjfXdekS+Fl4AR3Pb98gSmL2GPk1+q/e/Jq/b
	 iFmabbsI33ZPAbIvBJdrN8FoPNZ+v3kZxDuvKhHaflb3HwET6YBGqpVYIbAmOJLop4
	 OLS1ZYUMv6KeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68E9C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637280281.12439.3985182701983251621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e6be18a81bc9abb6b47dcd3c7f378fe5d0bc6457dbef21c4863de0f34c2c0d
Date: Wed, 22 May 2024 10:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716372802

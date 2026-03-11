Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A113DC4DB
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773221094; cv=none; b=qDRzM7jI7CFYALo0ujPKu8tlWeFpbGR77qBFxhYzOP0WlBLufV9xodRiqAEWf27cQhFpmbJIZXjE/fIeM2ap7klmdo/WhFnJkShAOGKx7ByHcUTkqLJ7er6a5Nn1hH/CLeewPVvmA1RSa0ddNSbgSCiVEacORXshdcS5eYgqRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773221094; c=relaxed/simple;
	bh=OVxj84UKulNoBsXUWxN2ZxzfHOA+zUp5zKFFJ7a3wek=;
	h=To:Subject:From:Message-Id:Date; b=VYXeWBA3lGX/b2dIOpwymDOmZvKvV+S/2iwWnfPof0Mx1T8Mdy38prn+9GIrvz5Eftoq121Uos3Iv45+NZg9k0Cvw/0SNFGV5V1zlMUgjTJQsS7i+6u/j9Stg81k14apeYOymIovnaPZoh2qZrJkv+OUkgEPnnNsMr8JSm0cqW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgUqu8UY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgUqu8UY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773221093;
	bh=OVxj84UKulNoBsXUWxN2ZxzfHOA+zUp5zKFFJ7a3wek=;
	h=To:Subject:From:Date:From;
	b=GgUqu8UYzsOxo4nW1DBLWb51AsyRjttRTYzuXi/W+eWz8FWb0JW6Efusb+9INwwGF
	 Q1YnPRnfm5Gpds78GMANkX+SEILb8b2to+j+dANWtziNlgBe1gUKsyQjqXKHfFjCcT
	 VfoA6DvubjPOcM8b+QNedzkeEnsj3YvDTgalkGHbxIPBRJXZv4b6fdhW9u9bIzwd4d
	 FLC08A/M/n3TpFNwiDUQnj6x5H8VA48YYGNOD7tf1neT46Y2S2JBkSYPS2nmp3gW4O
	 yHPS8lWi+7UkBg3i8WSLOLyNk7f0Q/i451cqgm5YD3QswygKdS+UuvDbPE4xgBw0yg
	 fSDYTWeOobaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6121049517
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322109362.7261.5025875351180151821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85a6c0bafa033391932bcff0a5e3a7d512fa94cf4580da81657c6e12c1635d9
Date: Wed, 11 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773221093
